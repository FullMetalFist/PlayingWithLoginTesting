//
//  ViewController.m
//  PlayingWithLoginTesting
//
//  Created by Michael Vilabrera on 7/24/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.loginService = [[LoginService alloc] init];
        self.alertProvider = [[AlertViewProvider alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginTapped:(id)sender {
    [self.loginService verifyUsername:self.usernameTextField.text
                             password:self.passwordTextField.text
                           completion:^(BOOL isValid) {
                               UIAlertView *alert = [self.alertProvider alertViewWithTitle:@"Error" message:@"Invalid credentials"];
                               [alert show];
                           }];
}

@end
