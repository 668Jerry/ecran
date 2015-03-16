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
    CGFloat i; //cgfISPBar;
    CGFloat p; //cgfPersonalHotspotBar;
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
    
    h = [[UIScreen mainScreen] bounds].size.height - [[UIApplication sharedApplication] statusBarFrame].size.height - t - n;
    s = [UIApplication sharedApplication].statusBarFrame.size.height;
    b = s + n;
    if (s == 20.0) {
        //o without Hotspot: 64
        i = 20.0;
        p = 0.0;
    } else {
        //o with Hotspot: 84
        i = 20.0;
        p = 20.0;
    }
    o = p + n;
    NSLog(@"status bar height:%f",[UIApplication sharedApplication].statusBarFrame.size.height);
    NSLog(@"width(w):%f, height(h):%f, status(s): %f, personalHotspot(p): %f, isp(i):%f, tabbar(t):%f, navigationbar(n):%f, suggestOffset(o): %f, ScreenBase(b): %f", w, h, s, p, i, t, n, o, b);
    return self;
}


@end
