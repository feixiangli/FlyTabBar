//
//  FlyTabBar.m
//  FlyApp
//
//  Created by qianfeng on 15/6/13.
//  Copyright (c) 2015年 Fly. All rights reserved.
//

#import "FlyTabBar.h"

@interface FlyTabBar ()

@end

@implementation FlyTabBar
 //*****效果：五个标签+每个标签有同样的导航栏，导航栏名 等于选中标签名，除导航title不一样，导航栏其他属性相同；
//+(NSMutableArray*)flyAddTabBarsTitles:(NSArray*)titles Simages:(NSArray*)SimageNames Uimages:(NSArray*)UimageNames clases:(NSArray*)classNames NtitleColor:(UIColor*)NtitleColor NtitleFont:(float)NtitleFont NBImage:(NSString*)NBImage LbTitle:(NSString*)LbTitle Ltarget:(id)Ltarget Laction:(SEL)Laction RbTitle:(NSString*)RbTitle Rtarget:(id)Rtarget Raction:(SEL)Raction
//{
//    NSMutableArray*controllers=[[NSMutableArray alloc]init];
//    for (int i=0; i<titles.count; i++)
//    {
//        Class class=NSClassFromString(classNames[i]);
//        FlyTabBar*fvc=(FlyTabBar*)[[class alloc]init];
//        //标签属性
//        fvc.tabBarItem.title=titles[i];
//        
//        fvc.tabBarItem.image=[[UIImage imageNamed:SimageNames[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//        fvc.tabBarItem.selectedImage=[[UIImage imageNamed:UimageNames[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//        
//        UINavigationController*nvc= [[UINavigationController alloc]initWithRootViewController:fvc];
//        //导航属性
//        
//        //导航title属性
////        nvc.navigationItem.title=titles[i];
//        nvc.navigationBar.topItem.title=titles[i];
//
//        if(NtitleColor&&NtitleFont)
//        {
//            //设置title颜色和大小不管事 BUG!
//            [nvc.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:NtitleColor,NSFontAttributeName:[UIFont boldSystemFontOfSize:NtitleFont]}];
//        }
//        //导航背景图属性
//        if(NBImage)
//        {
//            [nvc.navigationController.navigationBar setBackgroundImage:[[UIImage imageNamed:NBImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]forBarMetrics:UIBarMetricsDefault];
//        }
//        //导航左右按钮
//        if(LbTitle)
//        {
//            UIBarButtonItem*item1=[[UIBarButtonItem alloc]initWithTitle:LbTitle style:UIBarButtonItemStylePlain target:Ltarget action:Laction];
//            nvc.navigationBar.topItem.leftBarButtonItem=item1;
//        }
//        if(RbTitle)
//        {
//            UIBarButtonItem*item=[[UIBarButtonItem alloc]initWithTitle:RbTitle style:UIBarButtonItemStylePlain target:Ltarget action:Laction];
//            nvc.navigationBar.topItem.rightBarButtonItem=item;
//        }
//        [controllers addObject:nvc];
//    }
//    return controllers;
//}
//*****效果：五个标签+五个没有任何设置的导航栏
+(NSMutableArray*)flyAddTabBarsTitles:(NSArray*)titles Simages:(NSArray*)SimageNames Uimages:(NSArray*)UimageNames clases:(NSArray*)classNames
{
    NSMutableArray*controllers=[[NSMutableArray alloc]init];
    for (int i=0; i<titles.count; i++)
    {
        Class class=NSClassFromString(classNames[i]);
        FlyTabBar*fvc=(FlyTabBar*)[[class alloc]init];
        //标签属性
        fvc.tabBarItem.title=titles[i];
        fvc.tabBarItem.image=[[UIImage imageNamed:SimageNames[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        fvc.tabBarItem.selectedImage=[[UIImage imageNamed:UimageNames[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        FlyTabBar*nvc=(FlyTabBar*)[[UINavigationController alloc]initWithRootViewController:fvc];
        //导航属性未设置,
        [controllers addObject:nvc];
    }
    return controllers;
}








































@end
