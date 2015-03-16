//
//  Ecran.m
//  train
//
//  Created by lololol on 16/Mar/15.
//  Copyright (c) 2015 leisureapp. All rights reserved.
//

#import "Ecran.h"

@interface Ecran ()
{
    UIViewController *uivcSelf;
}
@end

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
    uivcSelf.view.center = CGPointMake(uivcSelf.view.center.x, uivcSelf.view.center.y - o);
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
    w = [[UIScreen mainScreen] bounds].size.width;
    h = 0;
    if (uivcSelf.tabBarController != nil) {
        h = uivcSelf.tabBarController.tabBar.frame.size.height;
    }
    n = 0;
    if (uivcSelf.navigationController != nil) {
        n = uivcSelf.navigationController.navigationBar.frame.size.height;
    }
    h = [[UIScreen mainScreen] bounds].size.height - [[UIApplication sharedApplication] statusBarFrame].size.height - t - n - [UIApplication sharedApplication].statusBarFrame.size.height;
    b = [UIApplication sharedApplication].statusBarFrame.size.height;
    if ([UIApplication sharedApplication].statusBarFrame.size.height == 20.0) {
        //without Hotspot: 64
        o =  b;
    } else {
        //with Hotspot: 104
        o = b + [UIApplication sharedApplication].statusBarFrame.size.height / 2.0;
    }
    NSLog(@"status bar height:%f",[UIApplication sharedApplication].statusBarFrame.size.height);
    NSLog(@"width(w):%f, height(h):%f, tabbar(t):%f, navigationbar(n):%f, SuggestOffset(o): %f", w, h, t, n, o);
    return self;
}


@end
