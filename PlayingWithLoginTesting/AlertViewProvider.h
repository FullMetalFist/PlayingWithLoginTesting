//
//  AlertViewProvider.h
//  PlayingWithLoginTesting
//
//  Created by Michael Vilabrera on 7/28/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AlertViewProvider : NSObject

- (UIAlertView *)alertViewWithTitle:(NSString *)title message:(NSString *)message;

@end
