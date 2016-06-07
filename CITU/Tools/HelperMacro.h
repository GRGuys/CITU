//
//  HelperMacro.h
//  CITU
//
//  Created by centrin on 16/6/7.
//  Copyright © 2016年 CT. All rights reserved.
//

#ifndef HelperMacro_h
#define HelperMacro_h


//颜色相关简写
#pragma mark - 颜色相关简写

#undef UIColorFromRGB
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#undef UIColorFromRGB_A
#define UIColorFromRGB_A(r, g, b) ([UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0])


//全局标识
#define isIOS7               ([[UIDevice currentDevice].systemVersion floatValue] >= 7.0f)
#define SCREEN_WIDTH         ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT        ([[UIScreen mainScreen] bounds].size.height)

#define COLOR_CITU_BROWN UIColorFromRGB(0x660000)


#endif /* HelperMacro_h */
