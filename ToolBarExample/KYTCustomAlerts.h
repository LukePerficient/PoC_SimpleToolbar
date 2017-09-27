//
//  KYTCustomAlerts.h
//  KnowYourTeam
//
//  Created by DDC.Mac2 on 9/14/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIView+Toast.h"

#ifndef KYTCustomAlerts_h
#define KYTCustomAlerts_h

@interface KYTCustomAlerts : NSObject

+ (void)alertUserWithReadMessage:(UIView *)view;
+ (void)alertUserWithDeleteMessage:(UIView *)view;
+ (void)alertUserWithUpdateMessage:(UIView *)view;
+ (void)alertUserWithCreateMessage:(UIView *)view;

@end

#endif /* KYTCustomAlerts_h */
