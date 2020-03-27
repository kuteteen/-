//
//  KKConfigModel.h
//  KKwebConfig
//
//  Created by apple on 2019/1/20.
//  Copyright © 2019 KK. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    KKConfigModelOpen,// 打开子菜单
    KKConfigModelAction, //执行修改
}  KKConfigModeType;


typedef enum : NSUInteger {
    DLGMemValueTypeUnsignedByte,//0
    DLGMemValueTypeSignedByte,//1
    DLGMemValueTypeUnsignedShort,//2
    DLGMemValueTypeSignedShort,//3
    DLGMemValueTypeUnsignedInt,//4
    DLGMemValueTypeSignedInt,//5I32
    DLGMemValueTypeUnsignedLong,//6
    DLGMemValueTypeSignedLong,//7
    DLGMemValueTypeFloat,//8 F32
    DLGMemValueTypeDouble,//9 F64
} DLGMemValueType;


@interface KKConfigModel : NSObject

//    KKConfigModelOpen,// 打开子菜单
//    KKConfigModelAction, //执行修改
@property (assign,nonatomic) KKConfigModeType type;

//标题
@property (copy,nonatomic) NSString *title;

//子菜单数组 只有在type = KKConfigModelOpen的时候配置
@property (strong,nonatomic) NSMutableArray<KKConfigModel *>  *models;

//以下属性在 type = KKConfigModelAction的时候配置
//值数据类型
@property (strong,nonatomic) NSArray * valueType;

//搜索的值
@property (strong,nonatomic) NSArray< NSString * > *searchValue;

//修改的值
@property (strong,nonatomic)NSArray< NSString * > *editValue;

//范围
@property (strong,nonatomic)NSArray< NSString * > *searchType;

//范围
//不设置 则搜索出来的全部修改
//格式 例 改开头12个 1KK12 改结尾12个 -1KK12
//       改第3个到第8个   3KK8
//       w改位数为8c4的，m改包含8c4的  8c4
//       范围组合设置 w8c4&&1-12 意思是改包含8c4的改开头12个 条件可多个组合 组合条件按顺序执行
//参考这里
@property(strong,nonatomic)NSArray <NSString *> *range;


@end

NS_ASSUME_NONNULL_END
