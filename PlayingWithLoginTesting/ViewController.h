//
//  ViewController.h
//  PlayingWithLoginTesting
//
//  Created by Michael Vilabrera on 7/24/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginService.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITextField *usernameTextField;
@property (nonatomic, strong) IBOutlet UITextField *passwordTextField;
@property (nonatomic) IBOutlet UIButton *loginButton;

@property (nonatomic) LoginService *loginService;

- (IBAction)loginTapped:(id)sender;

@end

