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
  
  Screen Height Base (Status Bar Height + person hotspot Height):
    CGFloat b; //cgfScreenHeightBase;
  
  Screen Suggest Offset (Height of person hotspot):
    CGFloat o; //cgfSuggestOffset;
  
  Screen Tab Bar Height:
    CGFloat t; //cgfTabBarControllerHeight;
  
  Screen Navigation Bar Height:
    CGFloat n; //cgfNavigationControllerHeight;
