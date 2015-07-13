//  Copyright (c) 2015年 Fly. All rights reserved.

#import <UIKit/UIKit.h>

@interface FlyTabBar : UIViewController

//*****类方法一
/**
// 创建标签栏与导航栏
// */
//这个方法废除
//+(NSMutableArray*)flyAddTabBarsTitles:(NSArray*)titles Simages:(NSArray*)SimageNames Uimages:(NSArray*)UimageNames clases:(NSArray*)classNames NtitleColor:(UIColor*)NtitleColor NtitleFont:(float)NtitleFont NBImage:(NSString*)NBImage LbTitle:(NSString*)LbTitle Ltarget:(id)Ltarget Laction:(SEL)Laction RbTitle:(NSString*)RbTitle Rtarget:(id)Rtarget Raction:(SEL)Raction;

//*****类方法二
/**
 创建标签栏与空的导航栏
 */

+(NSMutableArray*)flyAddTabBarsTitles:(NSArray*)titles Simages:(NSArray*)SimageNames Uimages:(NSArray*)UimageNames clases:(NSArray*)classNames;

/******

 FLyLi.第三方库
 
 功能：快速布局UI框架
 
 *****
 效果：快速创建标签栏 导航栏
 
 ** 1方法与2方法不同，具体看说明
 
 使用方法：直接使调用类方法
 
 ***** 
 
 *****
 
 类方法二：
 参数依次：标签名数组，选中图片名，未选中图片名，类名；
 
 注意：类方法二没有对导航栏属性进行设置，只是一个空的导航栏
 
 ******
 
 提前为你准备好的4个空数组 请CV大法
 
 NSArray*array1=@[@"",@"",@"",@"",@""];
 NSArray*array2=@[@"",@"",@"",@"",@""];
 NSArray*array3=@[@"",@"",@"",@"",@""];
 NSArray*array4=@[@"",@"",@"",@"",@""];
 
 用法参考：

 类方法一：
 
 *注意只能在UITabBarCollection中使用
 
 self.viewControllers=[FlyTabBar addTabBarsTitles:array1 Simages:array2 Uimages:array3 clases:array4 NtitleColor:[UIColor redColor] NtitleFont:30 NBImage:nil LbTitle:@"向左转" Ltarget:self Laction:@selector(LClick) RbTitle:@"向右转" Rtarget:self Raction:@selector(Rclick)];
 
 类方法二：
 
 self.viewControllers=[FlyTabBar addTabBarsTitles:array1 Simages:array2 Uimages:array3 clases:array4];
 
 
 
 */

@end
