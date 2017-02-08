//
//  UIImage+initwithColor.m
//  ReactNativeNavigation
//
//  Created by Ethan Tam on 19/1/2017.
//  Copyright © 2017 artal. All rights reserved.
//
#import "UIImage+initWithColor.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIImage (initWithColor)

+ (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0, 0, 1, 1);
    
    // create a 1 by 1 pixel context
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [color setFill];
    UIRectFill(rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
@end
