//
//  AppDelegate.m
//  KKwebConfig
//
//  Created by apple on 2019/1/20.
//  Copyright © 2019 KK. All rights reserved.
//
#import "DES3Util.h"
#import "AppDelegate.h"
#import "KKConfigModel.h"
#import "MJExtension/MJExtension.h"
#import "NSString+URLCode.h"
//加密key 这里配置和辅助lib那边一样就行 这里是加密密码，这个密码跟bs的BSPHP_PASSWORD一样，解密的时候直接用这个密码做解密的密码，把这段加密的上传到服务器的txt文件里面
#define BSPHP_PASSWORD @"gcz4xsRtvg4wdlBHTh"
#ifdef DEBUG

#define DLog( s, ... ) printf("class: <%p %s:(%d) > method: %s \n%s\n", self, [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, __PRETTY_FUNCTION__, [[NSString stringWithFormat:(s), ##__VA_ARGS__] UTF8String] )

#else

#define DLog( s, ... )

#endif

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //一级菜单数组
    NSMutableArray *arr = @[].mutableCopy;
    //把编码思路转换
   /*-----------------范围设置-------------------------
    不设置 则搜索出来的全部修改
    格式 例 改开头12个 1KK12 改结尾12个 -1KK12
           改第3个到第8个   3KK8
           w改位数为8c4的
           m改包含8c4的  8c4
    near联合 no不改 ac精确
           范围组合设置 w8c4&&1-12 意思是改尾号8c4的改开头12个 条件可多个组合 &&为拼接 组合条件按顺序执行
    参考这里*/
    // ------单独的菜单--------
    
    //   ------- 这一段------------
    //配置第一个单独功能按钮
//单独功能1
    KKConfigModel *button3 = [[KKConfigModel alloc] init];
    button3.title = @"猪八戒秒杀";
    button3.type = KKConfigModelAction;
    button3.searchValue = @[@"0.9",@"2.2",@"0.9"];//0.9普通搜索2.2联合搜索,0.9筛掉2.2联合数据最后g修改
    button3.editValue = @[@"no",@"no",@"555"];//no是不改的意思,执行到最后才改555
    button3.searchType = @[@"ac",@"near",@"ac"];//near是联合
    button3.range = @[@"no",@"no",@"all"];//no是不改，all是全改
    button3.valueType =@[@(DLGMemValueTypeDouble),@(DLGMemValueTypeDouble),@(DLGMemValueTypeDouble)];
    [arr addObject:button3];
//单独功能2
    KKConfigModel *button4 = [[KKConfigModel alloc] init];
    button4.title = @"天线加粗|发型光头";
    button4.type = KKConfigModelAction;
    button4.searchValue = @[@"-4410762456449774017",@"1",@"1"];
    button4.editValue = @[@"no",@"no",@"3"];
    button4.searchType = @[@"ac",@"near",@"ac"];
    button4.range = @[@"no",@"no",@"w0&&1-8"];
    button4.valueType =@[@(DLGMemValueTypeUnsignedLong),@(DLGMemValueTypeFloat),@(DLGMemValueTypeFloat)];
    [arr addObject:button4];

   
    //------------------------菜单示例------------------------------------
    //默认提示
    
    KKConfigModel *button666 = [[KKConfigModel alloc] init];
    button666.title = @"所有功能等待30秒完成"; //标题
    
    NSMutableArray *button666arr = @[].mutableCopy;
    button666.models=button666arr;
    //这是一个二级菜单示例
     KKConfigModel *button2 = [[KKConfigModel alloc] init];
     button2.title = @"功能菜单"; //标题
     button2.type = KKConfigModelOpen; //打开子菜单 类型不一样
     NSMutableArray *button2arr = @[].mutableCopy;
     button2.models=button2arr;
//这里是配置这个二级菜单下面的子功能
    //子功能1
     KKConfigModel *button2_1 = [[KKConfigModel alloc] init];
     button2_1.title = @"全图透视【游戏中改】"; //标题
     button2_1.type = KKConfigModelAction; //执行功能
     button2_1.searchValue = @[@"-3170534133357084415"]; //搜索的值
     button2_1.editValue = @[@"-3170534133357084416"]; //修改的值
     button2_1.searchType = @[@"ac",@"near"];//near是联合 ac精确
     button2_1.range = @[@""]; //范围配置
     button2_1.valueType = @[@(DLGMemValueTypeUnsignedLong)]; //数据类型
     [button2arr addObject:button2_1];//子菜单里面的功能按钮 往这个数组里面加
     //子功能2
     
    //子菜单结束
    [arr addObject:button2];
 //二级菜单结束

    //不用管
    NSString *KKKEY = [BSPHP_PASSWORD md5:BSPHP_PASSWORD];
    DLog(@"加密前%@",[[KKConfigModel mj_keyValuesArrayWithObjectArray:arr] mj_JSONString]);
    NSString *coed =  [DES3Util encrypt:[[KKConfigModel mj_keyValuesArrayWithObjectArray:arr] mj_JSONString] gkey:KKKEY];
    DLog(@"加密后%@",coed);
    //把加密后的字符串复制到后台文件里面 ok
    DLog(@"解密后%@",[DES3Util decrypt:coed gkey:KKKEY]);
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
