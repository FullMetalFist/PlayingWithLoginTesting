//
//  LoginService.h
//  PlayingWithLoginTesting
//
//  Created by Michael Vilabrera on 7/24/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^LoginServiceCompletionBlock)(BOOL isValid);

@interface LoginService : NSObject

- (void)verifyUsername:(NSString *)username
              password:(NSString *)password
            completion:(LoginServiceCompletionBlock)block;

@end
