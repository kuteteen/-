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
    //忘记以前的写功能的方法
    
    //   ------- 这一段------------
    //配置第一个功能按钮
//        KKConfigModel *button0 = [[KKConfigModel alloc] init];
//        button0.title = @"全枪无后|大厅全局";
//        button0.type = KKConfigModelAction;
//        button0.searchValue = @[@"9.5",@"0.1",@"1"];
//        button0.editValue = @[@"no",@"no",@"0"];
//        button0.searchType = @[@"ac",@"near",@"near"];
//        button0.range = @[@"no",@"no",@"all"];
//        button0.valueType =@[@(DLGMemValueTypeFloat),@(DLGMemValueTypeFloat),@(DLGMemValueTypeSignedInt)];
//        [arr addObject:button0];
    //---------------------第一个母菜单-----------------------
//    KKConfigModel *button0 = [[KKConfigModel alloc] init];
//    button0.title = @"白色+天线+范围=大厅修改";
//    button0.type = KKConfigModelAction;
//    button0.searchValue = @[@"4575657224076056216",@"-8646911284530413568",@"4746794008351080448"];
//    button0.editValue = @[@"4975657224076056216",@"-8646911284530087488",@"5311743973423316992"];
//    button0.range = @[@"",@"4-8",@""];
//    button0.valueType =@[@(DLGMemValueTypeUnsignedLong),@(DLGMemValueTypeUnsignedLong),@(DLGMemValueTypeUnsignedLong)];
//    [arr addObject:button0];
    //---------------------第二个菜单-------------------------
     //这是一个二级菜单示例
         KKConfigModel *buttona = [[KKConfigModel alloc] init];
         buttona.title = @"功能菜单"; //标题
         buttona.type = KKConfigModelOpen; //打开子菜单 类型不一样
         NSMutableArray *buttonaarr = @[].mutableCopy;
         buttona.models=buttonaarr;
    //这里是配置这个二级菜单下面的子功能
        //子功能1
    KKConfigModel *button1 = [[KKConfigModel alloc] init];
    button1.title = @"人物白色|大厅全局";
    button1.type = KKConfigModelAction;
    button1.searchValue = @[@"4575657224076056216"];
    button1.editValue = @[@"4975657224076056216"];
    button1.searchType = @[@"ac"];
    button1.range = @[@"all"];
    button1.valueType =@[@(DLGMemValueTypeUnsignedLong)];
    [buttonaarr addObject:button1];
    KKConfigModel *button2 = [[KKConfigModel alloc] init];
    button2.title = @"人物黑色|大厅全局";
    button2.type = KKConfigModelAction;
    button2.searchValue = @[@"4575657224076056216"];
    button2.editValue = @[@"4275657224076056216"];
    button2.searchType = @[@"ac"];
    button2.range = @[@"all"];
    button2.valueType =@[@(DLGMemValueTypeUnsignedLong)];
    [buttonaarr addObject:button2];
    KKConfigModel *button3 = [[KKConfigModel alloc] init];
    button3.title = @"猪八戒秒杀";
    button3.type = KKConfigModelAction;
    button3.searchValue = @[@"0.9",@"2.2",@"0.9"];//0.9普通搜索2.2联合搜索,0.9筛掉2.2联合数据最后g修改
    button3.editValue = @[@"no",@"no",@"555"];//no是不改的意思,执行到最后才改555
    button3.searchType = @[@"ac",@"near",@"ac"];//near是联合
    button3.range = @[@"no",@"no",@"all"];//no是不改，all是全改
    button3.valueType =@[@(DLGMemValueTypeDouble),@(DLGMemValueTypeDouble),@(DLGMemValueTypeDouble)];
    [buttonaarr addObject:button3];
    KKConfigModel *button4 = [[KKConfigModel alloc] init];
    button4.title = @"天线加粗|发型光头";
    button4.type = KKConfigModelAction;
    button4.searchValue = @[@"-4410762456449774017",@"1",@"1"];
    button4.editValue = @[@"no",@"no",@"3"];
    button4.searchType = @[@"ac",@"near",@"ac"];
    button4.range = @[@"no",@"no",@"w0&&1-8"];
    button4.valueType =@[@(DLGMemValueTypeUnsignedLong),@(DLGMemValueTypeFloat),@(DLGMemValueTypeFloat)];
    [buttonaarr addObject:button4];
    KKConfigModel *button5 = [[KKConfigModel alloc] init];
    button5.title = @"头部范围|大厅全局";
    button5.type = KKConfigModelAction;
    button5.searchValue = @[@"4746794008351080448"];
    button5.editValue = @[@"4926375043455254528"];
    button5.searchType = @[@"ac"];
    button5.range = @[@"all"];
    button5.valueType =@[@(DLGMemValueTypeUnsignedLong)];
    [buttonaarr addObject:button5];
    KKConfigModel *button6 = [[KKConfigModel alloc] init];
    button6.title = @"人物彩色|大厅全局";
    button6.type = KKConfigModelAction;
    button6.searchValue = @[@"8589934593",@"1",@"1"];
    button6.editValue = @[@"no",@"no",@"9"];
    button6.searchType = @[@"ac",@"near",@"ac"];
    button6.range = @[@"no",@"no",@"all"];
    button6.valueType =@[@(DLGMemValueTypeUnsignedLong),@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt)];
    [buttonaarr addObject:button6];
    
    
    KKConfigModel *button10 = [[KKConfigModel alloc] init];
    button10.title = @"|头盔天线|高风险|";
    button10.type = KKConfigModelAction;
    button10.searchValue = @[@"4575657224676430570",@"4575657222487838200",@"4575657222483097828"];
    button10.editValue = @[@"",@"",@"4926375043455254528"];
    button10.range = @[@"c&&1-3",@"0&&2-3",@"4&&2-3"];
    button10.valueType =@[@(DLGMemValueTypeUnsignedLong),@(DLGMemValueTypeUnsignedLong),@(DLGMemValueTypeUnsignedLong)];
    [buttonaarr addObject:button10];
    [arr addObject:buttona];
    //---------------------第二个母菜单-----------------------
    
    
    
    KKConfigModel *buttonb = [[KKConfigModel alloc] init];
    buttonb.title = @"辅助功能"; //标题
    buttonb.type = KKConfigModelOpen; //打开子菜单 类型不一样
    NSMutableArray *buttonbarr = @[].mutableCopy;
    buttonb.models=buttonbarr;
    
    KKConfigModel *button2_1 = [[KKConfigModel alloc] init];
    button2_1.title = @"黑色+天线+范围=发型换光头";
    button2_1.type = KKConfigModelAction;
    button2_1.searchValue = @[@"4575657224076056216",@"8070450532268867584",@"4746794008351080448"];
    button2_1.editValue = @[@"4275657224076056216",@"8070450532269160960",@"5311743973423316992"];
    button2_1.range = @[@"",@"9-11",@""];
    button2_1.valueType =@[@(DLGMemValueTypeUnsignedLong),@(DLGMemValueTypeUnsignedLong),@(DLGMemValueTypeUnsignedLong)];
    [buttonbarr addObject:button2_1];
    KKConfigModel *button2_2 = [[KKConfigModel alloc] init];
    button2_2.title = @"全枪无后-大厅不展示枪开启";
    button2_2.type = KKConfigModelAction; //执行功能
    button2_2.searchValue = @[@"8247572459728890950",@"7813865635462867809",@"6081106641324437057"]; //搜索的值
    button2_2.editValue = @[@"8247572458094198784",@"7813865634046935040",@"1835626049"]; //修改的值
    button2_2.range = @[@"23-25",@"4-7",@"1-3"]; //范围配置
    button2_2.valueType = @[@(DLGMemValueTypeUnsignedLong),@(DLGMemValueTypeUnsignedLong),@(DLGMemValueTypeUnsignedLong)]; //数据类型
        [buttonbarr addObject:button2_2];
    KKConfigModel *buttonb_1 = [[KKConfigModel alloc] init];
    buttonb_1.title = @"M416无后-持枪改";
    buttonb_1.type = KKConfigModelAction;
    buttonb_1.searchValue = @[@"4568451461344447693"];
    buttonb_1.editValue = @[@"4568451460286644224"];
    buttonb_1.range = @[@"all"];
    buttonb_1.valueType =@[ @(DLGMemValueTypeUnsignedLong)];
    [buttonbarr addObject:buttonb_1];
    KKConfigModel *buttonb_2 = [[KKConfigModel alloc] init];
    buttonb_2.title = @"人物高跳-游戏中";
    buttonb_2.type = KKConfigModelAction;
    buttonb_2.searchValue = @[@"-9223299245749026944"];
    buttonb_2.editValue = @[@"-9223299245749027072"];
    buttonb_2.range = @[@"1-10"];
    buttonb_2.valueType =@[ @(DLGMemValueTypeUnsignedLong)];
    [buttonbarr addObject:buttonb_2];
    KKConfigModel *button2_3 = [[KKConfigModel alloc] init];
    button2_3.title = @"完美路飞-游戏中";
    button2_3.type = KKConfigModelAction;
    button2_3.searchValue = @[@"4542111535061997269"];
    button2_3.editValue = @[@"4848124999993131008"];
    button2_3.range = @[@"all"];
    button2_3.valueType =@[ @(DLGMemValueTypeUnsignedLong)];
    [buttonbarr addObject:button2_3];
    KKConfigModel *button2_4 = [[KKConfigModel alloc] init];
    button2_4.title = @"翻墙穿墙-贴墙点翻越";
    button2_4.type = KKConfigModelAction;
    button2_4.searchValue = @[@"4770437906441027584"];
    button2_4.editValue = @[@"4770437906384814080"];
    button2_4.range = @[@"all"];
    button2_4.valueType =@[ @(DLGMemValueTypeUnsignedLong)];
    [buttonbarr addObject:button2_4];
    KKConfigModel *button2_5 = [[KKConfigModel alloc] init];
    button2_5.title = @"吉普车飞天-上车改"; //标题
    button2_5.type = KKConfigModelAction; //执行功能
    //队列修改数据配置顺序要一直比如搜999999 改9912213 那个他们的位置要一样 范围和数据类型也是
    button2_5.searchValue = @[@"4558363403512446976",@"4715268810967613440"]; //搜索的值
    button2_5.editValue = @[@"4934185974142451712",@"4715268811004116992"]; //修改的值
    button2_5.range = @[@"all",@"all"]; //范围配置
    button2_4.valueType = @[@(DLGMemValueTypeUnsignedLong),@(DLGMemValueTypeUnsignedLong)]; //数据类型
    [buttonbarr addObject:button2_5];
    [arr addObject:buttonb];
    
    //------------------------子菜单示例------------------------------------
    /*这是一个二级菜单示例
     KKConfigModel *button2 = [[KKConfigModel alloc] init];
     button2.title = @"功能菜单"; 标题
     button2.type = KKConfigModelOpen; 打开子菜单 类型不一样
     NSMutableArray *button2arr = @[].mutableCopy;
     button2.models=button2arr;
     这里是配置这个二级菜单下面的子菜单数组button2arr 就是这个数组
     KKConfigModel *button2_1 = [[KKConfigModel alloc] init];
     button2_1.title = @"全图透视【游戏中改】"; 标题
     button2_1.type = KKConfigModelAction; 执行功能
     button2_1.searchValue = @[@"-3170534133357084415"]; 搜索的值
     button2_1.editValue = @[@"-3170534133357084416"]; 修改的值
     button2_1.range = @[@""]; 范围配置
     button2_1.valueType = @[@(DLGMemValueTypeUnsignedLong)]; 数据类型
     [button2arr addObject:button2_1];子菜单里面的功能按钮 往这个数组里面加
     KKConfigModel *button2_2 = [[KKConfigModel alloc] init];
     button2_2.title = @"上帝视角【游戏中改】"; 标题
     button2_2.type = KKConfigModelAction; 执行功能
     button2_2.searchValue = @[@"-4503482691493609370",@"-4503482700083543962"]; 搜索的值
     button2_2.editValue = @[@"-4477712892006576666",@"-4477712892006576666"]; 修改的值
     button2_2.range = @[@"",@""]; 范围配置
     button2_2.valueType = @[@(DLGMemValueTypeUnsignedLong),@(DLGMemValueTypeUnsignedLong)]; 数据类型
     [button2arr addObject:button2_2];
     [arr addObject:button2];*/
    //配置一个功能按钮
  
    //  ------------------------子菜单示例------------------------------------
    
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
