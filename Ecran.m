//
//  Ecran.m
//  train
//
//  Created by lololol on 16/Mar/15.
//  Copyright (c) 2015 leisureapp. All rights reserved.
//

#import "Ecran.h"

@implementation Ecran
//+(id)getShare //Do not use singleton
//{
//    if (ecran == nil) {
//        ecran = [[Ecran alloc] init];
//    }
//    return ecran;
//}

- (void) makeSuggestOffset {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.0];
    uivcSelf.view.center = CGPointMake(uivcSelf.view.center.x, uivcSelf.view.center.y - cgfSuggestOffset);
    [UIView commitAnimations];
}

- (void) makeSuggestOffsetBack {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.0];
    uivcSelf.view.center = CGPointMake(uivcSelf.view.center.x, uivcSelf.view.center.y);
    [UIView commitAnimations];
}

-(id)initWithViewController:(UIViewController *)uivcViewController {
    uivcSelf = uivcViewController;
    cgfScreenWidth = [[UIScreen mainScreen] bounds].size.width;
    cgfTabBarControllerHeight = 0;
    if (uivcSelf.tabBarController != nil) {
        cgfTabBarControllerHeight = uivcSelf.tabBarController.tabBar.frame.size.height;
    }
    cgfNavigationControllerHeight = 0;
    if (uivcSelf.navigationController != nil) {
        cgfNavigationControllerHeight = uivcSelf.navigationController.navigationBar.frame.size.height;
    }
    cgfScreenHeight = [[UIScreen mainScreen] bounds].size.height - [[UIApplication sharedApplication] statusBarFrame].size.height - cgfTabBarControllerHeight - cgfNavigationControllerHeight - [UIApplication sharedApplication].statusBarFrame.size.height;
    cgfScreenHeightBase = [UIApplication sharedApplication].statusBarFrame.size.height;
    if ([UIApplication sharedApplication].statusBarFrame.size.height == 20.0) {
        //without Hotspot: 64
        cgfSuggestOffset =  cgfScreenHeightBase;
    } else {
        //with Hotspot: 104
        cgfSuggestOffset = cgfScreenHeightBase + [UIApplication sharedApplication].statusBarFrame.size.height / 2.0;
    }
    NSLog(@"status bar height:%f",[UIApplication sharedApplication].statusBarFrame.size.height);
    NSLog(@"width:%f, height:%f, tabbar:%f, navigationbarcontroller:%f, SuggestOffset: %f", cgfScreenWidth, cgfScreenHeight, cgfTabBarControllerHeight, cgfNavigationControllerHeight, cgfSuggestOffset);
    return self;
}


@end
