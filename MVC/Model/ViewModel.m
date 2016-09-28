//
//  ViewModel.m
//  MVC
//
//  Created by bridge on 16/9/3.
//  Copyright © 2016年 bridge. All rights reserved.
//

#import "ViewModel.h"

@implementation ViewModel
+(instancetype)modelWithDict:(NSDictionary *)dict{
    ViewModel *vm = [[self alloc]init];
    [vm setValuesForKeysWithDictionary:dict];
    return vm;
}
@end
