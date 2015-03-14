//
//  ControlViewController.h
//  Space App
//
//  Created by Lu1s_Armandho0 on 12/04/14.
//  Copyright (c) 2014 Luis Chávez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BLE.h"
#import "JSDPad.h"
#import "JSAnalogueStick.h"
#import "FobosImage.h"


@interface ControlViewController : UIViewController<JSDPadDelegate, JSAnalogueStickDelegate, BLEDelegate>

@property (strong, nonatomic) IBOutlet JSDPad *Pad;
@property (strong,nonatomic) IBOutlet JSAnalogueStick *Stick;

@property (nonatomic, strong) BLE *ble;


@property (strong, nonatomic) IBOutlet UIButton *conectarButton;
- (IBAction)conectarAction:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *rssiLabel;

@property (strong, nonatomic) IBOutlet UILabel *cameraAngle;
@property (strong, nonatomic) IBOutlet UILabel *cameraAngleY;
@property (retain, nonatomic) IBOutlet FobosImage *img;

-(void)beacon:(NSTimer *) elContador;

@property (retain, nonatomic) IBOutlet UIButton *botonMagico;
- (IBAction)botonMagico:(UIButton *)sender;

@end
