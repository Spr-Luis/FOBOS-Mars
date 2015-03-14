
/**
    Class that contains miscellaneous animation. UNAM Mobile
    @author Luis Chávez  - luis.chavez@unam.mobi
**/

#import "AnimationUM.h"


@implementation AnimationUM

// Methods without end blocks.

/**
 
 Pulse Animation - Reverse Enable
 @param view - Use the view you want to animate.
 @param toSize - Scale to be resized.
 @param withDuration - Duration of animation.
 @since version 1.0
 @author Luis Chávez
 
 **/

-(void)pulse:(UIView*)view toSize:(float)value autoReverse:(BOOL)reverse withDuration:(float) duration{
    CABasicAnimation *pulseAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    pulseAnimation.duration = duration;
    pulseAnimation.toValue = [NSNumber numberWithFloat:value];;
    pulseAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    pulseAnimation.autoreverses = reverse;
    pulseAnimation.repeatCount = FLT_MAX;
    
    [view.layer addAnimation:pulseAnimation forKey:nil];
}

/**
 
 Shake Horizonal Animation
 @param view - Use the view you want to animate.
 @param autoReverse -.
 @param withDuration - Duration of animation.
 @since version 1.0
 @author Luis Chávez
 
 **/

-(void)shakeHorizontal:(UIView*)view autoReverse:(BOOL)reverse repeatCount:(int)count withDuration:(float) duration{
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    [animation setDuration:duration];
    [animation setRepeatCount:count];
    [animation setAutoreverses:reverse];
    
    [animation setFromValue:[NSValue valueWithCGPoint:
                             CGPointMake([view center].x - 5.0f, [view center].y)]];
    [animation setToValue:[NSValue valueWithCGPoint:
                           CGPointMake([view center].x + 5.0f, [view center].y)]];
    [view.layer addAnimation:animation forKey:@"position"];
}

/**
 
 Shake Vertical Animation
 @param view - Use the view you want to animate.
 @param autoReverse -.
 @param withDuration - Duration of animation.
 @since version 1.0
 @author Luis Chávez
 
 **/

-(void)shakeVertical:(UIView*)view autoReverse:(BOOL)reverse repeatCount:(int)count withDuration:(float) duration{
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    [animation setDuration:duration];
    [animation setRepeatCount:count];
    [animation setAutoreverses:reverse];
    
    [animation setFromValue:[NSValue valueWithCGPoint:
                             CGPointMake([view center].x, [view center].y - 5.0f)]];
    [animation setToValue:[NSValue valueWithCGPoint:
                           CGPointMake([view center].x, [view center].y + 5.0f)]];
    [view.layer addAnimation:animation forKey:@"position"];
}

/**
 
 Bounce Animation
 @param view - Use the view you want to animate.
 @param withDuration - Duration of animation.
 @since version 1.0
 @author Luis Chávez
 
 **/

-(void)bounce:(UIView*)view withDuration:(float) duration{
    
    CAKeyframeAnimation *bounce = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    view.alpha = 1;

    CATransform3D forward = CATransform3DMakeScale(1.3, 1.3, 1);
    CATransform3D back = CATransform3DMakeScale(0.7, 0.7, 1);
    //CATransform3D forward2 = CATransform3DMakeScale(1.2, 1.2, 1);
    //CATransform3D back2 = CATransform3DMakeScale(0.9, 0.9, 1);
    
    [bounce setValues:
     @[
       [NSValue valueWithCATransform3D:CATransform3DIdentity],
       [NSValue valueWithCATransform3D:forward],
       [NSValue valueWithCATransform3D:back],
       //[NSValue valueWithCATransform3D:forward2],
       //[NSValue valueWithCATransform3D:back2],
       [NSValue valueWithCATransform3D:CATransform3DIdentity]
       ]];
    
    [bounce setDuration:duration];
    
    [view.layer addAnimation:bounce forKey:@"bounceAnimation"];
}

/**
 
 Spin Horizontal Animation
 @param view - Use the view you want to animate.
 @param flip - Number of flips on animation.
 @param withDuration - Duration of animation.
 @since version 1.0
 @author Luis Chávez
 
 **/

-(void)spinHorizontal:(UIView*)view flip:(int)flip withDuration:(float) duration{
    
    CABasicAnimation *spin = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];

    [spin setToValue:@(M_PI*flip)];
    [spin setDuration:duration];
    
    CAMediaTimingFunction *tf = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [spin setTimingFunction:tf];
    
    [view.layer addAnimation:spin forKey:@"spinAnimation"];
}

/**
 
 Spin Vertical Animation
 @param view - Use the view you want to animate.
 @param flip - Number of flips on animation.
 @param withDuration - Duration of animation.
 @since version 1.0
 @author Luis Chávez
 
 **/

-(void)spinVertical:(UIView*)view flip:(int)flip withDuration:(float) duration{
    
    CABasicAnimation *spin = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    
    [spin setToValue:@(M_PI*flip)];
    [spin setDuration:duration];
    
    CAMediaTimingFunction *tf = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [spin setTimingFunction:tf];
    
    [view.layer addAnimation:spin forKey:@"spinAnimation"];
}

/**
 
 Fade Animation
 @param view - Use the view you want to animate.
 @since version 1.0
 @author Luis Chávez
 
 **/

-(void)fade:(UIView*)view{
    CABasicAnimation *fader = [CABasicAnimation animationWithKeyPath:@"opacity"];
    
    [fader setFromValue:@1.0];
    [fader setToValue:@0.2];
    [fader setDuration:3.0];
    
    [view.layer setOpacity:0.2];
    
    [view.layer addAnimation:fader forKey:@"BigFade"];
}

/**
 
 Shadow Brightness To View Animation
 @param view - Use the view you want to animate.
 @param withColor - Shadow color.
 @param shadowRadius - Shadow radius.
 @since version 1.0
 @author Abner
 
 **/

-(void)shadowBrightnessToView:(UIView *)view withColor:(UIColor *)color shadowRadius:(CGFloat)radius
{
    [view.layer setShadowColor:color.CGColor];
    [view.layer setShadowOffset:CGSizeMake(0, 0)];
    view.layer.shadowRadius = radius;
    view.layer.shadowOpacity = 1;
    view.layer.masksToBounds = NO;
}

/**
 
 Shadow Pulse Animation
 @param view - Use the view you want to animate.
 @param withFrequency - Animation frequency.
 @since version 1.0
 @author Abner
 
 **/

-(void)shadowPulseAnimation:(UIView *)view withFrequency:(CGFloat)frequency
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"shadowOpacity"];
    animation.fromValue = @(0.9);
    animation.toValue = @(0.2);
    animation.duration = frequency;
    animation.autoreverses = YES;
    animation.repeatCount = INT32_MAX;
    [view.layer addAnimation:animation forKey:@"Pulse"];
}

-(void)stopShadowPulseAnimation:(UIView *)view
{
    [view.layer removeAnimationForKey:@"Pulse"];
    [view.layer setShadowOpacity:0.0];
}

// Methods with end blocks.

/**
 
 Pulse Animation - Reverse Enable
 @param view - Use the view you want to animate.
 @param toSize - Scale to be resized.
 @param withDuration - Duration of animation.
 @since version 1.0
 @author Luis Chávez
 
 **/

-(void)pulse:(UIView*)view toSize:(float)value autoReverse:(BOOL)reverse withDuration:(float) duration completionBlock:(myCompletion) compblock{
    CABasicAnimation *pulseAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    pulseAnimation.duration = duration;
    pulseAnimation.toValue = [NSNumber numberWithFloat:value];;
    pulseAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    pulseAnimation.autoreverses = reverse;
    pulseAnimation.repeatCount = FLT_MAX;
    
    [view.layer addAnimation:pulseAnimation forKey:nil];
    compblock(YES);
}

/**
 
 Shake Horizonal Animation
 @param view - Use the view you want to animate.
 @param autoReverse -.
 @param withDuration - Duration of animation.
 @since version 1.0
 @author Luis Chávez
 
 **/

-(void)shakeHorizontal:(UIView*)view autoReverse:(BOOL)reverse repeatCount:(int)count withDuration:(float) duration completionBlock:(myCompletion) compblock{
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    [animation setDuration:duration];
    [animation setRepeatCount:count];
    [animation setAutoreverses:reverse];
    
    [animation setFromValue:[NSValue valueWithCGPoint:
                             CGPointMake([view center].x - 5.0f, [view center].y)]];
    [animation setToValue:[NSValue valueWithCGPoint:
                           CGPointMake([view center].x + 5.0f, [view center].y)]];
    [view.layer addAnimation:animation forKey:@"position"];
    compblock(YES);
}

/**
 
 Shake Vertical Animation
 @param view - Use the view you want to animate.
 @param autoReverse -.
 @param withDuration - Duration of animation.
 @since version 1.0
 @author Luis Chávez
 
 **/

-(void)shakeVertical:(UIView*)view autoReverse:(BOOL)reverse repeatCount:(int)count withDuration:(float) duration completionBlock:(myCompletion) compblock{
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    [animation setDuration:duration];
    [animation setRepeatCount:count];
    [animation setAutoreverses:reverse];
    
    [animation setFromValue:[NSValue valueWithCGPoint:
                             CGPointMake([view center].x, [view center].y - 5.0f)]];
    [animation setToValue:[NSValue valueWithCGPoint:
                           CGPointMake([view center].x, [view center].y + 5.0f)]];
    [view.layer addAnimation:animation forKey:@"position"];
    compblock(YES);
}

/**
 
 Bounce Animation
 @param view - Use the view you want to animate.
 @param withDuration - Duration of animation.
 @since version 1.0
 @author Luis Chávez
 
 **/

-(void)bounce:(UIView*)view withDuration:(float) duration completionBlock:(myCompletion) compblock{
    
    CAKeyframeAnimation *bounce = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    
    CATransform3D forward = CATransform3DMakeScale(1.3, 1.3, 1);
    CATransform3D back = CATransform3DMakeScale(0.7, 0.7, 1);
    CATransform3D forward2 = CATransform3DMakeScale(1.2, 1.2, 1);
    CATransform3D back2 = CATransform3DMakeScale(0.9, 0.9, 1);
    
    [bounce setValues:
     @[
       [NSValue valueWithCATransform3D:CATransform3DIdentity],
       [NSValue valueWithCATransform3D:forward],
       [NSValue valueWithCATransform3D:back],
       [NSValue valueWithCATransform3D:forward2],
       [NSValue valueWithCATransform3D:back2],
       [NSValue valueWithCATransform3D:CATransform3DIdentity]
       ]];
    
    [bounce setDuration:duration];
    
    [view.layer addAnimation:bounce forKey:@"bounceAnimation"];
    compblock(YES);
}

/**
 
 Spin Horizontal Animation
 @param view - Use the view you want to animate.
 @param flip - Number of flips on animation.
 @param withDuration - Duration of animation.
 @since version 1.0
 @author Luis Chávez
 
 **/

-(void)spinHorizontal:(UIView*)view flip:(int)flip withDuration:(float) duration completionBlock:(myCompletion) compblock{
    
    CABasicAnimation *spin = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];
    
    [spin setToValue:@(M_PI*flip)];
    [spin setDuration:duration];
    
    CAMediaTimingFunction *tf = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [spin setTimingFunction:tf];
    
    [view.layer addAnimation:spin forKey:@"spinAnimation"];
    compblock(YES);
}

/**
 
 Spin Vertical Animation
 @param view - Use the view you want to animate.
 @param flip - Number of flips on animation.
 @param withDuration - Duration of animation.
 @since version 1.0
 @author Luis Chávez
 
 **/

-(void)spinVertical:(UIView*)view flip:(int)flip withDuration:(float) duration completionBlock:(myCompletion) compblock{
    
    CABasicAnimation *spin = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    
    [spin setToValue:@(M_PI*flip)];
    [spin setDuration:duration];
    
    CAMediaTimingFunction *tf = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [spin setTimingFunction:tf];
    
    [view.layer addAnimation:spin forKey:@"spinAnimation"];
    compblock(YES);
}

/**
 
 Fade Animation
 @param view - Use the view you want to animate.
 @since version 1.0
 @author Luis Chávez
 
 **/

-(void)fade:(UIView*)view completionBlock:(myCompletion) compblock{
    CABasicAnimation *fader = [CABasicAnimation animationWithKeyPath:@"opacity"];
    
    [fader setFromValue:@1.0];
    [fader setToValue:@0.2];
    [fader setDuration:3.0];
    
    [view.layer setOpacity:0.2];
    
    [view.layer addAnimation:fader forKey:@"BigFade"];
    compblock(YES);
}

/**
 
 Shadow Brightness To View Animation
 @param view - Use the view you want to animate.
 @param withColor - Shadow color.
 @param shadowRadius - Shadow radius.
 @since version 1.0
 @author Abner
 
 **/

-(void)shadowBrightnessToView:(UIView *)view withColor:(UIColor *)color shadowRadius:(CGFloat)radius completionBlock:(myCompletion) compblock{
    [view.layer setShadowColor:color.CGColor];
    [view.layer setShadowOffset:CGSizeMake(0, 0)];
    view.layer.shadowRadius = radius;
    view.layer.shadowOpacity = 1;
    view.layer.masksToBounds = NO;
    compblock(YES);
}

/**
 
 Shadow Pulse Animation
 @param view - Use the view you want to animate.
 @param withFrequency - Animation frequency.
 @since version 1.0
 @author Abner
 
 **/

-(void)shadowPulseAnimation:(UIView *)view withFrequency:(CGFloat)frequency completionBlock:(myCompletion) compblock{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"shadowOpacity"];
    animation.fromValue = @(0.9);
    animation.toValue = @(0.2);
    animation.duration = frequency;
    animation.autoreverses = YES;
    animation.repeatCount = INT32_MAX;
    [view.layer addAnimation:animation forKey:@"Pulse"];
    compblock(YES);
}

-(void)stopShadowPulseAnimation:(UIView *)view completionBlock:(myCompletion) compblock{
    [view.layer removeAnimationForKey:@"Pulse"];
    [view.layer setShadowOpacity:0.0];
    compblock(YES);
}

@end
