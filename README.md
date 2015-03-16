# ecran
Get screen size

# init
call this: -(id)initWithViewController:(UIViewController *)uivcViewController;

ex: 
  [[Ecran alloc]initWithViewController:self];

# parameter
  Screen Width:
    CGFloat w; //cgfScreenWidth;
  
  Screen Height:
    CGFloat h; //cgfScreenHeight;

  Screen Status Bar (Status Bar Height):
    CGFloat s; //cgfStatusBarHeight;
  
  Screen Personal Hotspot Bar (Personal Hotspot Bar Height):
    CGFloat p; //cgfPersonalHotspotBarHeight;

  Screen ISP Bar (ISP Bar Height):
    CGFloat i; //cgfISPBarHeight;
  
  Screen Tab Bar Height:
    CGFloat t; //cgfTabBarControllerHeight;
  
  Screen Navigation Bar Height:
    CGFloat n; //cgfNavigationControllerHeight;

  Screen Suggest Offset (Height of person hotspot + navigation Bar):
    CGFloat o; //cgfSuggestOffset;

  Screen Height Base (Status Bar Height + Navigation Bar Height):
    CGFloat b; //cgfScreenHeightBase;
  
