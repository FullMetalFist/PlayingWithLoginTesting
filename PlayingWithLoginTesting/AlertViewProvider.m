//
//  AlertViewProvider.m
//  PlayingWithLoginTesting
//
//  Created by Michael Vilabrera on 7/28/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "AlertViewProvider.h"

@implementation AlertViewProvider

- (UIAlertView *)alertViewWithTitle:(NSString *)title message:(NSString *)message {
    return [[UIAlertView alloc] initWithTitle:title
                                      message:message
                                     delegate:nil
                            cancelButtonTitle:@"OK"
                            otherButtonTitles: nil];
}

@end
