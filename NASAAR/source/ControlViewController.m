//
//  ControlViewController.m
//  Space App
//
//  Created by Lu1s_Armandho0 on 12/04/14.
//  Copyright (c) 2014 Luis Chávez. All rights reserved.
//

#import "ControlViewController.h"

@interface ControlViewController (){
    int cameraAngleX;
    int cameraAngleY;
    
    
    NSTimer *contadorTimer;
    NSDate *timeNow;
    NSDate *timeParse;
    int i;
    
    AVAudioPlayer *sound;
}
@end

@implementation ControlViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.Pad.delegate = self;
    self.Stick.delegate = self;
    
    cameraAngleX = 90;
    cameraAngleY = 90;
    
    self.ble = [[BLE alloc]init];
    self.ble.delegate = self;
    [self.ble controlSetup:1];
    
    [self updateDirectionCamera];
    
    [_img empezar];
    
    contadorTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(beacon:) userInfo:nil repeats:YES];
    
    _botonMagico.hidden = YES;
    self.img.transform = CGAffineTransformMakeRotation(-M_PI/2);
    
}

// Pad
- (void)dPad:(JSDPad *)dPad didPressDirection:(JSDPadDirection)direction
{
	[self updateDirectionCamera];
}

- (void)dPadDidReleaseDirection:(JSDPad *)dPad
{
	[self updateDirectionCamera];
}

- (NSString *)stringForDirection:(JSDPadDirection)direction
{
	NSString *string = nil;
	if ([_ble isConnected]) {
        UInt8 buf[9] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
        buf[0] = 0;
        switch (direction) {
            case JSDPadDirectionNone:
                string = @"Nada";
                break;
            case JSDPadDirectionUp:
                if ((cameraAngleY <= 0)) {
                    cameraAngleY+=90;
                }
                string = @"Arriba";
                break;
            case JSDPadDirectionDown:
                string = @"Abajo";
                if ((cameraAngleY >= 90)) {
                    cameraAngleY-=90;
                }
                break;
            case JSDPadDirectionLeft:
                string = @"Izquierda";
                if (!(cameraAngleX > 170)) {
                    cameraAngleX+=30;
                }
                break;
            case JSDPadDirectionRight:
                string = @"Derecha";
                if (!(cameraAngleX < 10)) {
                    cameraAngleX-=30;
                }
                break;
            default:
                string = @"Nada";
                break;
        }
        
        buf[7] = cameraAngleX;
        buf[8] = cameraAngleY;
        
        _cameraAngle.text = [NSString stringWithFormat:@"Camera Angle X: %dº", cameraAngleX];
        _cameraAngleY.text = [NSString stringWithFormat:@"Camera Angle Y: %dº", cameraAngleY];
        
        NSData *d = [[NSData alloc]initWithBytes:buf length:9];
        [_ble write:d];
    }
    
	return string;
}

- (void)updateDirectionCamera
{
	NSLog(@"Direction: %@", [self stringForDirection:[self.Pad currentDirection]]);
}

// Stick

- (void)analogueStickDidChangeValue:(JSAnalogueStick *)analogueStick
{
	[self updateAnalogueLabel];
    
}

- (void)updateAnalogueLabel
{
	NSLog(@"Analogue: %.1f , %.1f", self.Stick.xValue, self.Stick.yValue);
    if([_ble isConnected]){
        
        UInt8 buf[9] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
        buf[0] = 0;
        
        if (_Stick.yValue > 0.5 && _Stick.xValue > -0.5 && _Stick.xValue < 0.5) {
            NSLog(@"Arriba");
            buf[1] = 1; //Adelante izq
            buf[2] = 0;
            buf[3] = 1; //Adelante der
            buf[4] = 0;
            //Potencia
            buf[5] = 255;
            buf[6] = 255;
        } else if(_Stick.yValue < -0.5  && _Stick.xValue > -0.5 && _Stick.xValue < 0.5){
            NSLog(@"Abajo");
            buf[1] = 0;
            buf[2] = 1; //Atras izq
            buf[3] = 0;
            buf[4] = 1; //Atras der
            //Potencia
            buf[5] = 255;
            buf[6] = 255;
        } else if (_Stick.xValue < 0.5 && _Stick.yValue < 0.5 && _Stick.yValue > -0.5 && _Stick.xValue > 0.0){
            NSLog(@"Derecha");
            buf[1] = 1; //Adelante izq
            buf[2] = 0;
            buf[3] = 0;
            buf[4] = 1; // Atras der
            //Potencia
            buf[5] = 255;
            buf[6] = 255;
        } else if (_Stick.xValue < -0.5 && _Stick.yValue < 0.5 && _Stick.yValue > -0.5){
            NSLog(@"Izquierda");
            buf[1] = 0;
            buf[2] = 1; //Atras izq
            buf[3] = 1; //Adelante der
            buf[4] = 0;
            //Potencia
            buf[5] = 255;
            buf[6] = 255;
        } else if(_Stick.xValue == 0 && _Stick.yValue == 0){
            NSLog(@"NADA");
            buf[1] = 0;
            buf[2] = 0;
            buf[3] = 0;
            buf[4] = 0;
            
            //Potencia
            buf[5] = 0;
            buf[6] = 0;
        }
        
        buf[7] = cameraAngleX;
        buf[8] = cameraAngleY;
        
        NSData *d = [[NSData alloc]initWithBytes:buf length:9];
        [_ble write:d];
        
	}
}

// BLE

-(void)bleDidReceiveData:(unsigned char *)data length:(int)length{
    
    NSData *d = [NSData dataWithBytes:data length:length];
    NSString *s = [[NSString alloc]initWithData:d encoding:NSUTF8StringEncoding];
    
    
    NSLog(@"Dato Robot:  %@",s);
}

-(void)bleDidUpdateRSSI:(NSNumber *)rssi{
    _rssiLabel.text = [NSString stringWithFormat:@"Señal (RSSI): %@", rssi];
}

-(void) readRSSITimer:(NSTimer *)timer
{
    [_ble readRSSI];
}

#pragma mark - BLE Actions
-(void)scanForPeripherals:(id)sender{
    
    if(self.ble.peripherals){
        self.ble.peripherals = nil;
    }
    
    [self.ble findBLEPeripherals:2];
    [NSTimer scheduledTimerWithTimeInterval:(float)1.0 target:self selector:@selector(connectionTimer:) userInfo:nil repeats:NO];
    
}

-(void)disconnectFromPeripheral{
    if(self.ble.activePeripheral){
        if (self.ble.activePeripheral.state) {
            [[self.ble CM] cancelPeripheralConnection:[self.ble activePeripheral]];
            
            
            
        }
    }
}

-(void)connectionTimer:(NSTimer*)timer{
    
    if(self.ble.peripherals.count > 0){
        [self.ble connectPeripheral:[self.ble.peripherals objectAtIndex:0]];
    }else{
        NSLog(@"Conexión Perdida");
    }
    
}

-(void)bleDidConnect{
    [_conectarButton setTitle:@"Desconectar" forState:UIControlStateNormal];
    
    [_conectarButton addTarget:self action:@selector(disconnectFromPeripheral) forControlEvents:UIControlEventTouchUpInside];
    [_conectarButton setEnabled:YES];
    
    
}

-(void)bleDidDisconnect{
    _rssiLabel.text = @"Señal (RSSI): Signal LOST";
    
    [_conectarButton setTitle:@"Conectar" forState:UIControlStateNormal];
    [_conectarButton removeTarget:self action:@selector(disconnectFromPeripheral) forControlEvents:UIControlEventTouchUpInside];
    [_conectarButton addTarget:self action:@selector(scanForPeripherals:) forControlEvents:UIControlEventTouchUpInside];
    [_conectarButton setEnabled:YES];
    
    cameraAngleX = 90;
    cameraAngleY = 90;
    
    _cameraAngle.text = [NSString stringWithFormat:@"Camera Angle X: %dº", cameraAngleX];
    _cameraAngleY.text = [NSString stringWithFormat:@"Camera Angle Y: %dº", cameraAngleY];
}

- (IBAction)conectarAction:(UIButton *)sender{
    [self scanForPeripherals:self];
}

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationLandscapeRight;
}

-(void)beacon:(NSTimer *) elContador {
    i++;
    NSLog(@"beacon!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    //Beacons
    if (i%3 == 0) {
        PFQuery *query = [PFQuery queryWithClassName:@"Beacon"];
        NSArray *ids = @[@1,@2,@3];
        [query whereKey:@"flag" containedIn:ids];
        [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
            if (!error) {
                NSDateFormatter *timeFormatter = [[NSDateFormatter alloc]init];
                timeFormatter.dateFormat = @"mm:ss";
                PFObject *object = objects.lastObject;
                timeParse = object.updatedAt;
                NSString *dateParse = [timeFormatter stringFromDate: timeParse];
                NSLog(@"Parse %@",dateParse);
                
                NSTimeInterval seconds = [timeParse timeIntervalSinceNow];
                NSInteger time = seconds;
                
                if (abs(time)<=2) {
                    NSNumber *flag = object[@"flag"];
                    int flagData = [flag intValue];
                    NSLog(@"Id %i", flagData);
                    
                    NSString *path = [[NSBundle mainBundle] pathForResource:@"encontrado" ofType:@"mp3"];
                    sound =[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:nil];
                    [sound play];
                    
                    if (flagData == 1) {
                        _botonMagico.imageView.image = [UIImage imageNamed:@"m1.png"];
                        _botonMagico.hidden = NO;
                    } else if (flagData == 2){
                        _botonMagico.imageView.image = [UIImage imageNamed:@"m2.png"];
                        _botonMagico.hidden = NO;
                    } else if (flagData == 3){
                        _botonMagico.imageView.image = [UIImage imageNamed:@"m3.png"];
                        _botonMagico.hidden = NO;
                    }
                    
                }
                
            } else {
                NSLog(@"Error: %@ %@", error, [error userInfo]);
            }
        }];
    }
}


- (void)dealloc {
    [_img release];
    [_botonMagico release];
    [super dealloc];
}
- (IBAction)botonMagico:(UIButton *)sender {
    _botonMagico.hidden = YES;
}
@end