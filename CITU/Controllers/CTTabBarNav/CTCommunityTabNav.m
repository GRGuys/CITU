//
//  CTCommunityTabNav.m
//  CITU
//
//  Created by centrin on 16/6/7.
//  Copyright © 2016年 CT. All rights reserved.
//

#import "CTCommunityTabNav.h"
#import "UMCommunity.h"


@implementation CTCommunityTabNav

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIViewController *communityViewController = [UMCommunity getFeedsViewController];
    [self pushViewController:communityViewController animated:NO];
}

@end
