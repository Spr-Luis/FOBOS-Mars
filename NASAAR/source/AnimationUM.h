
/**
 Class that contains miscellaneous animation. UNAM Mobile
 @author Luis Chávez  - luis.chavez@unam.mobi
 @author Abner
 **/


#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

typedef void(^myCompletion)(BOOL);


@interface AnimationUM : NSObject


// Methods without end blocks.
-(void)pulse:(UIView*)view toSize:(float)value autoReverse:(BOOL)reverse withDuration:(float) duration;

-(void)shakeHorizontal:(UIView*)view autoReverse:(BOOL)reverse repeatCount:(int)count withDuration:(float) duration;

-(void)shakeVertical:(UIView*)view autoReverse:(BOOL)reverse repeatCount:(int)count withDuration:(float) duration;

-(void)bounce:(UIView*)view withDuration:(float) duration;

-(void)spinHorizontal:(UIView*)view flip:(int)flip withDuration:(float) duration;

-(void)spinVertical:(UIView*)view flip:(int)flip withDuration:(float) duration;

-(void)fade:(UIView*)view;

-(void)shadowBrightnessToView:(UIView *)view withColor:(UIColor *)color shadowRadius:(CGFloat)radius;

-(void)shadowPulseAnimation:(UIView *)view withFrequency:(CGFloat)frequency;

-(void)stopShadowPulseAnimation:(UIView *)view;


// Methods with end blocks.

-(void)pulse:(UIView*)view toSize:(float)value autoReverse:(BOOL)reverse withDuration:(float) duration completionBlock:(myCompletion) compblock;

-(void)shakeHorizontal:(UIView*)view autoReverse:(BOOL)reverse repeatCount:(int)count withDuration:(float) duration completionBlock:(myCompletion) compblock;

-(void)shakeVertical:(UIView*)view autoReverse:(BOOL)reverse repeatCount:(int)count withDuration:(float) duration completionBlock:(myCompletion) compblock;

-(void)bounce:(UIView*)view withDuration:(float) duration completionBlock:(myCompletion) compblock;

-(void)spinHorizontal:(UIView*)view flip:(int)flip withDuration:(float) duration completionBlock:(myCompletion) compblock;

-(void)spinVertical:(UIView*)view flip:(int)flip withDuration:(float) duration completionBlock:(myCompletion) compblock;

-(void)fade:(UIView*)view completionBlock:(myCompletion) compblock;

-(void)shadowBrightnessToView:(UIView *)view withColor:(UIColor *)color shadowRadius:(CGFloat)radius completionBlock:(myCompletion) compblock;

-(void)shadowPulseAnimation:(UIView *)view withFrequency:(CGFloat)frequency completionBlock:(myCompletion) compblock;

-(void)stopShadowPulseAnimation:(UIView *)view completionBlock:(myCompletion) compblock;

@end
