//
//  CTMainTabNav.m
//  CITU
//
//  Created by centrin on 16/6/7.
//  Copyright © 2016年 CT. All rights reserved.
//

#import "CTMainTabNav.h"

@interface CTMainTabNav ()

@end

@implementation CTMainTabNav

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController setNavigationBarHidden:YES];
//    self.tabBarController.tabBarItem.imageInsets = UIEdgeInsetsMake(5, 0, -5, 0); // 图标大小
    self.tabBarController.tabBar.tintColor = UIColorFromRGB(0x660000); // 选中tabIcon颜色
}

@end
