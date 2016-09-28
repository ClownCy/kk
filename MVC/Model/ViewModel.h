//
//  ViewModel.h
//  MVC
//
//  Created by bridge on 16/9/3.
//  Copyright © 2016年 bridge. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ViewModel : NSObject
@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) NSString *image;
+(instancetype)modelWithDict:(NSDictionary*)dict;
@end
