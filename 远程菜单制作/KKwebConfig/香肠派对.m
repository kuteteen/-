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
   //单独功能1
    KKConfigModel *buttona = [[KKConfigModel alloc] init];
    buttona.title = @"无限背包";
    buttona.type = KKConfigModelAction;
    buttona.searchValue = @[@"150",@"20"];//0.9普通搜索2.2联合搜索,0.9筛掉2.2联合数据最后g修改
    buttona.editValue = @[@"no",@"999999999",];//no是不改的意思,执行到最后才改555
    buttona.searchType = @[@"ac",@"near"];
    buttona.range = @[@"no",@"all"];//no是不改，all是全改
    buttona.valueType =@[@(DLGMemValueTypeFloat),@(DLGMemValueTypeFloat)];
    [arr addObject:buttona];
    //单独功能2
    KKConfigModel *buttonb = [[KKConfigModel alloc] init];
    buttonb.title = @"天线落地开";
    buttonb.type = KKConfigModelAction;
    buttonb.searchValue = @[@"1.36097753048"];//0.9普通搜索2.2联合搜索,0.9筛掉2.2联合数据最后g修改
    buttonb.editValue = @[@"999999999"];//no是不改的意思,执行到最后才改555
    buttonb.searchType = @[@"ac"];
    buttonb.range = @[@"all"];//no是不改，all是全改
    buttonb.valueType =@[@(DLGMemValueTypeFloat),@(DLGMemValueTypeFloat)];
    [arr addObject:buttonb];
    //   ------- 这一段------------
    //配置第一个单独功能按钮

//单独功能2
    KKConfigModel *buttonA = [[KKConfigModel alloc] init];
    buttonA.title = @"所有功能落地改";
    [arr addObject:buttonA];
    //这是一个二级菜单示例
         KKConfigModel *button1 = [[KKConfigModel alloc] init];
         button1.title = @"加速易封-训练场娱乐"; //标题
         button1.type = KKConfigModelOpen; //打开子菜单 类型不一样
         NSMutableArray *button1arr = @[].mutableCopy;
         button1.models=button1arr;
    //这里是配置这个二级菜单下面的子功能
        //子功能1
         KKConfigModel *button1_1 = [[KKConfigModel alloc] init];
         button1_1.title = @"冲刺加速"; //标题
         button1_1.type = KKConfigModelAction; //执行功能
         button1_1.searchValue = @[@"8.1"]; //搜索的值
         button1_1.editValue = @[@"20"]; //修改的值
         button1_1.range = @[@"all"]; //范围配置
         button1_1.valueType = @[@(DLGMemValueTypeFloat)]; //数据类型
         [button1arr addObject:button1_1];//子菜单里面的功能按钮 往这个数组里面加
         //子功能2
         KKConfigModel *button1_2 = [[KKConfigModel alloc] init];
         button1_2.title = @"前进加速"; //标题
         button1_2.type = KKConfigModelAction; //执行功能
         button1_2.searchValue = @[@"6.1"]; //搜索的值
         button1_2.editValue = @[@"8"]; //修改的值
         button1_2.range = @[@"all"]; //范围配置
         button1_2.valueType = @[@(DLGMemValueTypeFloat)]; //数据类型
         [button1arr addObject:button1_2];//子菜单里面的功能按钮 往这个数组里面加
         //子功能3
         KKConfigModel *button1_3 = [[KKConfigModel alloc] init];
         button1_3.title = @"左右加速"; //标题
         button1_3.type = KKConfigModelAction; //执行功能
         button1_3.searchValue = @[@"4.5"]; //搜索的值
         button1_3.editValue = @[@"6"]; //修改的值
         button1_3.range = @[@"all"]; //范围配置
         button1_3.valueType = @[@(DLGMemValueTypeFloat)]; //数据类型
         [button1arr addObject:button1_3];//子菜单里面的功能按钮 往这个数组里面加
         //子功能4
         KKConfigModel *button1_4 = [[KKConfigModel alloc] init];
         button1_4.title = @"斜跑冲刺加速"; //标题
         button1_4.type = KKConfigModelAction; //执行功能
         button1_4.searchValue = @[@"5,75"]; //搜索的值
         button1_4.editValue = @[@"7"]; //修改的值
         button1_4.range = @[@"all"]; //范围配置
         button1_4.valueType = @[@(DLGMemValueTypeFloat)]; //数据类型
         [button1arr addObject:button1_4];//子菜单里面的功能按钮 往这个数组里面加
    //子功能5
            KKConfigModel *button1_5 = [[KKConfigModel alloc] init];
            button1_5.title = @"爬行加速"; //标题
            button1_5.type = KKConfigModelAction; //执行功能
            button1_5.searchValue = @[@"150"]; //搜索的值
            button1_5.editValue = @[@"200"]; //修改的值
            button1_5.range = @[@"all"]; //范围配置
            button1_5.valueType = @[@(DLGMemValueTypeFloat)]; //数据类型
            [button1arr addObject:button1_5];//子菜单里面的功能按钮 往这个数组里面加
            //子功能5
            KKConfigModel *button1_6 = [[KKConfigModel alloc] init];
            button1_6.title = @"后退加速"; //标题
            button1_6.type = KKConfigModelAction; //执行功能
            button1_6.searchValue = @[@"3.25"]; //搜索的值
            button1_6.editValue = @[@"5"]; //修改的值
            button1_6.range = @[@"all"]; //范围配置
            button1_6.valueType = @[@(DLGMemValueTypeFloat)]; //数据类型
            [button1arr addObject:button1_6];//子菜单里面的功能按钮 往这个数组里面加
         
        //子菜单结束
        [arr addObject:button1];
     //二级菜单结束
   
    //------------------------菜单示例------------------------------------
    //这是一个二级菜单示例 2.679693171085906e-314 4.802336543774495e-314 6.925303707324743e-314 9.047720426410172e-314
    //9.151787185331176e-314
     KKConfigModel *button2 = [[KKConfigModel alloc] init];
     button2.title = @"护甲增强-先改后捡"; //标题
     button2.type = KKConfigModelOpen; //打开子菜单 类型不一样
     NSMutableArray *button2arr = @[].mutableCopy;
     button2.models=button2arr;
//这里是配置这个二级菜单下面的子功能
    //子功能1
     KKConfigModel *button2_1 = [[KKConfigModel alloc] init];
     button2_1.title = @"1级护甲增强"; //标题
     button2_1.type = KKConfigModelAction; //执行功能
     button2_1.searchValue = @[@"200",@"0.3"]; //搜索的值
     button2_1.editValue = @[@"no",@"9999999"]; //修改的值
     button2_1.searchType = @[@"ac",@"near"];//near是联合
     button2_1.range = @[@"no",@"all"];
     button2_1.valueType = @[@(DLGMemValueTypeFloat),@(DLGMemValueTypeFloat)]; //数据类型
     [button2arr addObject:button2_1];//子菜单里面的功能按钮 往这个数组里面加
     //子功能2
     KKConfigModel *button2_2 = [[KKConfigModel alloc] init];
     button2_2.title = @"2级护甲增强"; //标题
     button2_2.type = KKConfigModelAction; //执行功能
     button2_2.searchValue = @[@"220",@"0.4"]; //搜索的值
     button2_2.editValue = @[@"no",@"9999999"]; //修改的值
     button2_2.searchType = @[@"ac",@"near"];//near是联合
     button2_2.range = @[@"no",@"all"];
     button2_2.valueType = @[@(DLGMemValueTypeFloat),@(DLGMemValueTypeFloat)]; //数据类型
     [button2arr addObject:button2_2];//子菜单里面的功能按钮 往这个数组里面加
     //子功能3
     KKConfigModel *button2_3 = [[KKConfigModel alloc] init];
     button2_3.title = @"3级护甲增强"; //标题
     button2_3.type = KKConfigModelAction; //执行功能
     button2_3.searchValue = @[@"250",@"0.5"]; //搜索的值
     button2_3.editValue = @[@"no",@"9999999"]; //修改的值
     button2_3.searchType = @[@"ac",@"near"];//near是联合
     button2_3.range = @[@"no",@"all"];
     button2_3.valueType = @[@(DLGMemValueTypeFloat),@(DLGMemValueTypeFloat)]; //数据类型
     [button2arr addObject:button2_3];//子菜单里面的功能按钮 往这个数组里面加
     //子功能4
     KKConfigModel *button2_4 = [[KKConfigModel alloc] init];
     button2_4.title = @"4级护甲增强"; //标题
     button2_4.type = KKConfigModelAction; //执行功能
     button2_4.searchValue = @[@"270",@"0.65"]; //搜索的值
     button2_4.editValue = @[@"no",@"9999999"]; //修改的值
     button2_4.searchType = @[@"ac",@"near"];//near是联合
     button2_4.range = @[@"no",@"all"];
     button2_4.valueType = @[@(DLGMemValueTypeFloat),@(DLGMemValueTypeFloat)]; //数据类型
     [button2arr addObject:button2_4];//子菜单里面的功能按钮 往这个数组里面加
     
    //子菜单结束
    [arr addObject:button2];
 //二级菜单结束
    //这是一个二级菜单示例
         KKConfigModel *button3 = [[KKConfigModel alloc] init];
         button3.title = @"头盔增强-先改后捡"; //标题
         button3.type = KKConfigModelOpen; //打开子菜单 类型不一样
         NSMutableArray *button3arr = @[].mutableCopy;
         button3.models=button3arr;
    //这里是配置这个二级菜单下面的子功能
        //子功能1
         KKConfigModel *button3_1 = [[KKConfigModel alloc] init];
         button3_1.title = @"1级头增强"; //标题
         button3_1.type = KKConfigModelAction; //执行功能
         button3_1.searchValue = @[@"80",@"0.3"]; //搜索的值
         button3_1.editValue = @[@"no",@"9999999"]; //修改的值
         button3_1.searchType = @[@"ac",@"near"];//near是联合
         button3_1.range = @[@"no",@"all"]; //范围配置
         button3_1.valueType = @[@(DLGMemValueTypeFloat),@(DLGMemValueTypeFloat)]; //数据类型
         [button3arr addObject:button3_1];//子菜单里面的功能按钮 往这个数组里面加
    //子功能2
         KKConfigModel *button3_2 = [[KKConfigModel alloc] init];
         button3_2.title = @"2级头增强"; //标题
         button3_2.type = KKConfigModelAction; //执行功能
         button3_2.searchValue = @[@"150",@"0.4"]; //搜索的值
         button3_2.editValue = @[@"no",@"9999999"]; //修改的值
         button3_2.searchType = @[@"ac",@"near"];//near是联合
         button3_2.range = @[@"no",@"all"]; //范围配置
         button3_2.valueType = @[@(DLGMemValueTypeFloat),@(DLGMemValueTypeFloat)]; //数据类型
         [button3arr addObject:button3_2];//子菜单里面的功能按钮 往这个数组里面加
         //子功能3
         KKConfigModel *button3_3 = [[KKConfigModel alloc] init];
         button3_3.title = @"3级头增强"; //标题
         button3_3.type = KKConfigModelAction; //执行功能
         button3_3.searchValue = @[@"230",@"0.55"]; //搜索的值
         button3_3.editValue = @[@"no",@"9999999"]; //修改的值
         button3_3.searchType = @[@"ac",@"near"];//near是联合
         button3_3.range = @[@"no",@"all"]; //范围配置
         button3_3.valueType = @[@(DLGMemValueTypeFloat),@(DLGMemValueTypeFloat)]; //数据类型
         [button3arr addObject:button3_3];//子菜单里面的功能按钮 往这个数组里面加
         //子功能4
         KKConfigModel *button3_4 = [[KKConfigModel alloc] init];
         button3_4.title = @"3级头增强"; //标题
         button3_4.type = KKConfigModelAction; //执行功能
         button3_4.searchValue = @[@"300",@"0.65"]; //搜索的值
         button3_4.editValue = @[@"no",@"9999999"]; //修改的值
         button3_4.searchType = @[@"ac",@"near"];//near是联合
         button3_4.range = @[@"no",@"all"]; //范围配置
         button3_4.valueType = @[@(DLGMemValueTypeFloat),@(DLGMemValueTypeFloat)]; //数据类型
         [button3arr addObject:button3_4];//子菜单里面的功能按钮 往这个数组里面加
         
    //子菜单结束
        [arr addObject:button3];
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
