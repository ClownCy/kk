//
//  CYViewCell.h
//  MVC
//
//  Created by bridge on 16/9/3.
//  Copyright © 2016年 bridge. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewModel;
@interface CYViewCell : UITableViewCell
@property (strong,nonatomic) ViewModel *vm;
@end
