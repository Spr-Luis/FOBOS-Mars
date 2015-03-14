//
//  InicioViewController.m
//  Space App
//
//  Created by Lu1s_Armandho0 on 12/04/14.
//  Copyright (c) 2014 Luis Chávez. All rights reserved.
//
#import "NativeUI.h"
#import "NativeUIManager.h"
#import "InicioViewController.h"

@interface InicioViewController (){
}

@end

@implementation InicioViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    
    return UIStatusBarStyleLightContent;
}


- (IBAction)realidadAumentada:(UIButton *)sender {
    [[NativeUIManager sharedManager] hideUI];
}

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationLandscapeRight;
}
@end
