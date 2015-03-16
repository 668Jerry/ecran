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
    CGFloat cgfW;
    
    CGFloat cgfScreenWidth;
    CGFloat cgfScreenHeight;
    CGFloat cgfScreenHeightBase;
    CGFloat cgfSuggestOffset;
    
    CGFloat cgfTabBarControllerHeight;
    CGFloat cgfNavigationControllerHeight;
    UIViewController *uivcSelf;
}

@end

//static Ecran *ecran; //Do not use singleton
