//
//  KKConfigModel.m
//  KKwebConfig
//
//  Created by apple on 2019/1/20.
//  Copyright © 2019 KK. All rights reserved.
//

#import "KKConfigModel.h"

@implementation KKConfigModel

- (NSMutableArray<KKConfigModel *> *)models{
    if (!_models) {
        _models = @[].mutableCopy;
    }
    return _models;
}

- (NSArray<NSString *> *)range{
    if (!_range) {
        _range = @[];
    }
    return _range;
}

@end
