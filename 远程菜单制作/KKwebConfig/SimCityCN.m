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
     //这是一个二级菜单示例
     KKConfigModel *button666 = [[KKConfigModel alloc] init];
     button666.title = @"所有功能等待30秒完成"; //标题
     NSMutableArray *button666arr = @[].mutableCopy;
     button666.models=button666arr;

    //------------------------菜单示例------------------------------------
    //这是一个二级菜单示例
     KKConfigModel *button2 = [[KKConfigModel alloc] init];
     button2.title = @"无限金币"; //标题
     button2.type = KKConfigModelOpen; //打开子菜单 类型不一样
     NSMutableArray *button2arr = @[].mutableCopy;
     button2.models=button2arr;
//这里是配置这个二级菜单下面的子功能
    //子功能1
     KKConfigModel *button2_1 = [[KKConfigModel alloc] init];
     button2_1.title = @"商店0绿钞买480000金币"; //标题
     button2_1.type = KKConfigModelAction; //执行功能
     button2_1.searchValue = @[@"480000",@"6000"]; //搜索的值
     button2_1.editValue = @[@"no",@"0"]; //修改的值
     button2_1.searchType = @[@"ac",@"near"];//near是联合 ac精确
     button2_1.range = @[@"no",@"all"]; //范围配置
     button2_1.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
     [button2arr addObject:button2_1];//子菜单里面的功能按钮 往这个数组里面加
     //子功能2
     KKConfigModel *button2_2 = [[KKConfigModel alloc] init];
     button2_2.title = @"商店0绿钞买240000金币"; //标题
     button2_2.type = KKConfigModelAction; //执行功能
     button2_2.searchValue = @[@"480000",@"6000"]; //搜索的值
     button2_2.editValue = @[@"no",@"0"]; //修改的值
     button2_2.searchType = @[@"ac",@"near"];//near是联合 ac精确
     button2_2.range = @[@"no",@"all"]; //范围配置
     button2_2.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
     [button2arr addObject:button2_2];//子菜单里面的功能按钮 往这个数组里面加
    //子菜单结束
    [arr addObject:button2];
 //二级菜单结束
    //这是一个二级菜单示例
         KKConfigModel *button1 = [[KKConfigModel alloc] init];
         button1.title = @"强制开通各种"; //标题
         button1.type = KKConfigModelOpen; //打开子菜单 类型不一样
         NSMutableArray *button1arr = @[].mutableCopy;
         button1.models=button1arr;
    //这里是配置这个二级菜单下面的子功能
        //子功能1
         KKConfigModel *button1_1 = [[KKConfigModel alloc] init];
         button1_1.title = @"强制开通机场无人口要求"; //标题
         button1_1.type = KKConfigModelAction; //执行功能
         button1_1.searchValue = @[@"120000"]; //搜索的值
         button1_1.editValue = @[@"0"]; //修改的值
         button1_1.searchType = @[@"ac"];//near是联合 ac精确
         button1_1.range = @[@"all"]; //范围配置
         button1_1.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
         [button1arr addObject:button1_1];//子菜单里面的功能按钮 往这个数组里面加
         //子功能2
    //子功能1
    KKConfigModel *button1_2 = [[KKConfigModel alloc] init];
    button1_2.title = @"强制开通博士无人口要求"; //标题
    button1_2.type = KKConfigModelAction; //执行功能
    button1_2.searchValue = @[@"90000"]; //搜索的值
    button1_2.editValue = @[@"0"]; //修改的值
    button1_2.searchType = @[@"ac"];//near是联合 ac精确
    button1_2.range = @[@"all"]; //范围配置
    button1_2.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
    [button1arr addObject:button1_2];//子菜单里面的功能按钮 往这个数组里面加
    //子功能1
    KKConfigModel *button1_3 = [[KKConfigModel alloc] init];
    button1_3.title = @"强制开通港口无人口要求"; //标题
    button1_3.type = KKConfigModelAction; //执行功能
    button1_3.searchValue = @[@"20000"]; //搜索的值
    button1_3.editValue = @[@"0"]; //修改的值
    button1_3.searchType = @[@"ac"];//near是联合 ac精确
    button1_3.range = @[@"all"]; //范围配置
    button1_3.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
    [button1arr addObject:button1_3];//子菜单里面的功能按钮 往这个数组里面加
         
    [arr addObject:button1];
    
    //这是一个二级菜单示例
         KKConfigModel *button3 = [[KKConfigModel alloc] init];
         button3.title = @"工厂高级物品时间刷新"; //标题
         button3.type = KKConfigModelOpen; //打开子菜单 类型不一样
         NSMutableArray *button3arr = @[].mutableCopy;
         button3.models=button3arr;
    //这里是配置这个二级菜单下面的子功能
        //子功能1
         KKConfigModel *button3_1 = [[KKConfigModel alloc] init];
         button3_1.title = @"新世纪商场无限刷新"; //标题
         button3_1.type = KKConfigModelAction; //执行功能
         button3_1.searchValue = @[@"21600000"]; //搜索的值
         button3_1.editValue = @[@"0"]; //修改的值
         button3_1.searchType = @[@"ac"];//near是联合 ac精确
         button3_1.range = @[@"all"]; //范围配置
         button3_1.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
         [button3arr addObject:button3_1];//子菜单里面的功能按钮 往这个数组里面加
         //子功能1
         KKConfigModel *button3_2 = [[KKConfigModel alloc] init];
         button3_2.title = @"电子元件零秒生产"; //标题
         button3_2.type = KKConfigModelAction; //执行功能
         button3_2.searchValue = @[@"25200000"]; //搜索的值
         button3_2.editValue = @[@"0"]; //修改的值
         button3_2.searchType = @[@"ac"];//near是联合 ac精确
         button3_2.range = @[@"all"]; //范围配置
         button3_2.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
         [button3arr addObject:button3_2];//子菜单里面的功能按钮 往这个数组里面加
    //子功能1
        KKConfigModel *button3_3 = [[KKConfigModel alloc] init];
        button3_3.title = @"矿物质零秒生产"; //标题
        button3_3.type = KKConfigModelAction; //执行功能
        button3_3.searchValue = @[@"1800000"]; //搜索的值
        button3_3.editValue = @[@"0"]; //修改的值
        button3_3.searchType = @[@"ac"];//near是联合 ac精确
        button3_3.range = @[@"all"]; //范围配置
        button3_3.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
        [button3arr addObject:button3_3];//子菜单里面的功能按钮 往这个数组里面加
    //子功能1
    KKConfigModel *button3_4 = [[KKConfigModel alloc] init];
    button3_4.title = @"动物饲料零秒生产"; //标题
    button3_4.type = KKConfigModelAction; //执行功能
    button3_4.searchValue = @[@"21600000"]; //搜索的值
    button3_4.editValue = @[@"0"]; //修改的值
    button3_4.searchType = @[@"ac"];//near是联合 ac精确
    button3_4.range = @[@"all"]; //范围配置
    button3_4.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
    [button3arr addObject:button3_4];//子菜单里面的功能按钮 往这个数组里面加
    //子功能1
    KKConfigModel *button3_5 = [[KKConfigModel alloc] init];
    button3_5.title = @"种子零秒生产"; //标题
    button3_5.type = KKConfigModelAction; //执行功能
    button3_5.searchValue = @[@"1200000"]; //搜索的值
    button3_5.editValue = @[@"0"]; //修改的值
    button3_5.searchType = @[@"ac"];//near是联合 ac精确
    button3_5.range = @[@"all"]; //范围配置
    button3_5.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
    [button3arr addObject:button3_5];//子菜单里面的功能按钮 往这个数组里面加
    //子功能1
    KKConfigModel *button3_6 = [[KKConfigModel alloc] init];
    button3_6.title = @"化学物质零秒生产"; //标题
    button3_6.type = KKConfigModelAction; //执行功能
    button3_6.searchValue = @[@"7200000"]; //搜索的值
    button3_6.editValue = @[@"0"]; //修改的值
    button3_6.searchType = @[@"ac"];//near是联合 ac精确
    button3_6.range = @[@"all"]; //范围配置
    button3_6.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
    [button3arr addObject:button3_6];//子菜单里面的功能按钮 往这个数组里面加
    [arr addObject:button3];
    //不用管
    KKConfigModel *button4 = [[KKConfigModel alloc] init];
         button4.title = @"工厂普通物品时间刷新"; //标题
         button4.type = KKConfigModelOpen; //打开子菜单 类型不一样
         NSMutableArray *button4arr = @[].mutableCopy;
         button4.models=button4arr;
    //这里是配置这个二级菜单下面的子功能
         //子功能1
         KKConfigModel *button4_1 = [[KKConfigModel alloc] init];
         button4_1.title = @"金属零秒生产"; //标题
         button4_1.type = KKConfigModelAction; //执行功能
         button4_1.searchValue = @[@"60000"]; //搜索的值
         button4_1.editValue = @[@"0"]; //修改的值
         button4_1.searchType = @[@"ac"];//near是联合 ac精确
         button4_1.range = @[@"all"]; //范围配置
         button4_1.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
         [button4arr addObject:button4_1];//子菜单里面的功能按钮 往这个数组里面加
         //子功能2
         //子功能1
         KKConfigModel *button4_2 = [[KKConfigModel alloc] init];
         button4_2.title = @"纺织品零秒生产"; //标题
         button4_2.type = KKConfigModelAction; //执行功能
         button4_2.searchValue = @[@"10800000"]; //搜索的值
         button4_2.editValue = @[@"0"]; //修改的值
         button4_2.searchType = @[@"ac"];//near是联合 ac精确
         button4_2.range = @[@"all"]; //范围配置
         button4_2.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
         [button4arr addObject:button4_2];//子菜单里面的功能按钮 往这个数组里面加
    //子功能1
    KKConfigModel *button4_3 = [[KKConfigModel alloc] init];
    button4_3.title = @"木材零秒生产"; //标题
    button4_3.type = KKConfigModelAction; //执行功能
    button4_3.searchValue = @[@"180000"]; //搜索的值
    button4_3.editValue = @[@"0"]; //修改的值
    button4_3.searchType = @[@"ac"];//near是联合 ac精确
    button4_3.range = @[@"all"]; //范围配置
    button4_3.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
    [button4arr addObject:button4_3];//子菜单里面的功能按钮 往这个数组里面加
    //子功能1
    KKConfigModel *button4_4 = [[KKConfigModel alloc] init];
    button4_4.title = @"糖和香料零秒生产"; //标题
    button4_4.type = KKConfigModelAction; //执行功能
    button4_4.searchValue = @[@"14400000"]; //搜索的值
    button4_4.editValue = @[@"0"]; //修改的值
    button4_4.searchType = @[@"ac"];//near是联合 ac精确
    button4_4.range = @[@"all"]; //范围配置
    button4_4.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
    [button4arr addObject:button4_4];//子菜单里面的功能按钮 往这个数组里面加
    //子功能1
    KKConfigModel *button4_5 = [[KKConfigModel alloc] init];
    button4_5.title = @"玻璃零秒生产"; //标题
    button4_5.type = KKConfigModelAction; //执行功能
    button4_5.searchValue = @[@"18000000"]; //搜索的值
    button4_5.editValue = @[@"0"]; //修改的值
    button4_5.searchType = @[@"ac"];//near是联合 ac精确
    button4_5.range = @[@"all"]; //范围配置
    button4_5.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
    [button4arr addObject:button4_5];//子菜单里面的功能按钮 往这个数组里面加
    //子功能1
    KKConfigModel *button4_6 = [[KKConfigModel alloc] init];
    button4_6.title = @"塑料零秒生产"; //标题
    button4_6.type = KKConfigModelAction; //执行功能
    button4_6.searchValue = @[@"540000"]; //搜索的值
    button4_6.editValue = @[@"0"]; //修改的值
    button4_6.searchType = @[@"ac"];//near是联合 ac精确
    button4_6.range = @[@"all"]; //范围配置
    button4_6.valueType = @[@(DLGMemValueTypeSignedInt)]; //数据类型
    [button4arr addObject:button4_6];//子菜单里面的功能按钮 往这个数组里面加
        //子菜单结束
        [arr addObject:button4];
    KKConfigModel *buttona = [[KKConfigModel alloc] init];
        buttona.title = @"强制开通各种公园"; //标题
        buttona.type = KKConfigModelAction; //执行功能
        //队列修改数据配置顺序要一直比如搜999999 改9912213 那个他们的位置要一样 范围和数据类型也是
        buttona.searchValue = @[@"180000",@"130000",@"120000",@"110000",@"105000",@"95000",@"59000"]; //搜索的值
        buttona.editValue = @[@"0",@"0",@"0",@"0",@"0",@"0",@"0"]; //修改的值
        buttona.range = @[@"all",@"all",@"all",@"all",@"all",@"all",@"all"]; //范围配置
        buttona.valueType = @[@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt)]; //数据类型
    
    KKConfigModel *buttonb = [[KKConfigModel alloc] init];
    buttonb.title = @"免费工厂"; //标题
    buttonb.type = KKConfigModelAction; //执行功能
    //队列修改数据配置顺序要一直比如搜999999 改9912213 那个他们的位置要一样 范围和数据类型也是
    buttonb.searchValue = @[@"90000",@"70000",@"40000",@"90000",@"150000",@"80000",@"27000"]; //搜索的值
    buttonb.editValue = @[@"0",@"0",@"0",@"0",@"0",@"0",@"0"]; //修改的值
    buttonb.range = @[@"all",@"all",@"all",@"all",@"all",@"all",@"all"]; //范围配置
    buttonb.valueType = @[@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt)]; //数据类型
    KKConfigModel *buttonc = [[KKConfigModel alloc] init];
       buttonc.title = @"免费地标"; //标题
       buttonc.type = KKConfigModelAction; //执行功能
       //队列修改数据配置顺序要一直比如搜999999 改9912213 那个他们的位置要一样 范围和数据类型也是
       buttonc.searchValue = @[@"350000",@"230000",@"170000",@"110000",@"250000",@"200000"]; //搜索的值
       buttonc.editValue = @[@"0",@"0",@"0",@"0",@"0",@"0"]; //修改的值
       buttonc.range = @[@"all",@"all",@"all",@"all",@"all",@"all"]; //范围配置
       buttonc.valueType = @[@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt)]; //数据类型
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
