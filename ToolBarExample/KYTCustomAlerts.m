//
//  KYTCustomAlerts.m
//  KnowYourTeam
//
//  Created by DDC.Mac2 on 9/14/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#import "KYTCustomAlerts.h"

@implementation KYTCustomAlerts

+ (void)alertUserWithCreateMessage:(UIView *)view
{
    NSValue *toastCenterPoint = [NSValue valueWithCGPoint:CGPointMake([[UIScreen mainScreen] bounds].size.width/2.0, [[UIScreen mainScreen] bounds].size.height/3.0)];
    
    [view makeToast:@"Creating object to add to Persistence Layer" duration:5.0 position:toastCenterPoint];
}

+ (void)alertUserWithDeleteMessage:(UIView *)view
{
    NSValue *toastCenterPoint = [NSValue valueWithCGPoint:CGPointMake([[UIScreen mainScreen] bounds].size.width/2.0, [[UIScreen mainScreen] bounds].size.height/3.0)];
    
    [view makeToast:@"Deleteing object from Persistence Layer" duration:5.0 position:toastCenterPoint];
}

+ (void)alertUserWithUpdateMessage:(UIView *)view
{
    NSValue *toastCenterPoint = [NSValue valueWithCGPoint:CGPointMake([[UIScreen mainScreen] bounds].size.width/2.0, [[UIScreen mainScreen] bounds].size.height/3.0)];
    
    [view makeToast:@"Updating object to Persistence Layer" duration:5.0 position:toastCenterPoint];
}

+ (void)alertUserWithReadMessage:(UIView *)view
{
    NSValue *toastCenterPoint = [NSValue valueWithCGPoint:CGPointMake([[UIScreen mainScreen] bounds].size.width/2.0, [[UIScreen mainScreen] bounds].size.height/3.0)];
    
    [view makeToast:@"Reading object from Persistence Layer" duration:5.0 position:toastCenterPoint];
}

@end
