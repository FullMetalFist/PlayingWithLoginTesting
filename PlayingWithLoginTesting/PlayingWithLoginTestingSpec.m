//
//  PlayingWithLoginTestingSpec.m
//  PlayingWithLoginTesting
//
//  Created by Michael Vilabrera on 7/24/15.
//  Copyright 2015 Giving Tree. All rights reserved.
//

#import "Specta.h"
#import "Expecta.h"
#import "OCMock.h"
#import "ViewController.h"
#import "LoginService.h"

SpecBegin(ViewControllerSpec)

describe(@"ViewController", ^{
    
    __block ViewController *_vc;
    
    beforeEach(^{
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        UINavigationController *nav = [mainStoryboard instantiateInitialViewController];
        _vc = (ViewController *)[nav visibleViewController];
        
        UIView *view = _vc.view;
        expect(view).toNot.beNil();     // necessary to recognize IBOutlets in the ViewController
    });
    
    it(@"should be instantiated from the Storyboard", ^{
        expect(_vc).toNot.beNil();
        expect(_vc).to.beInstanceOf([ViewController class]);
    });
    
    it(@"should have an outlet for the username field", ^{
        expect(_vc.usernameTextField).toNot.beNil();
    });
    
    it(@"should have an outlet for the password field", ^{
        expect(_vc.passwordTextField).toNot.beNil();
    });
    
    it(@"should wire up the login button action", ^{
        expect(_vc.passwordTextField).toNot.beNil();
        UIButton *button = _vc.loginButton;
        NSArray *actions = [button actionsForTarget:_vc
                                    forControlEvent:UIControlEventTouchUpInside];
        expect(actions[0]).to.equal(@"loginTapped:");
    });
    
    describe(@"logging in", ^{
        // vc => login service
        it(@"should verify username and password with the login service", ^{
            // arrange
            id mockLoginService = [OCMockObject mockForClass:[LoginService class]];
            [[mockLoginService expect] verifyUsername:@"dude"
                                             password:@"yeah"
                                           completion:[OCMArg any]];
            _vc.loginService = mockLoginService;
            _vc.usernameTextField.text = @"dude";
            _vc.passwordTextField.text = @"yeah";
            
            // act
            [_vc loginTapped:nil];
            // assert
            [mockLoginService verify];
        });
    });
    
    beforeAll(^{

    });
    
    beforeEach(^{

    });
    
    it(@"", ^{

    });  
    
    afterEach(^{

    });
    
    afterAll(^{

    });
});

SpecEnd
