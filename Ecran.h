//
//  Ecran.h
//  train
//
//  Created by lololol on 16/Mar/15.
//  Copyright (c) 2015 leisureapp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Ecran : NSObject
{
    CGFloat w; //cgfScreenWidth;
    CGFloat h; //cgfScreenHeight;
    CGFloat b; //cgfScreenHeightBase;
    CGFloat o; //cgfSuggestOffset;
    CGFloat t; //cgfTabBarControllerHeight;
    CGFloat n; //cgfNavigationControllerHeight;
}

-(id)initWithViewController:(UIViewController *)uivcViewController;

@end

//static Ecran *ecran; //Do not use singleton
