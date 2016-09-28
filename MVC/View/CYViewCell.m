//
//  CYViewCell.m
//  MVC
//
//  Created by bridge on 16/9/3.
//  Copyright © 2016年 bridge. All rights reserved.
//

#import "CYViewCell.h"
#import "ViewModel.h"
@interface CYViewCell()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UIImageView *imageV;
@end
@implementation CYViewCell




-(void)setVm:(ViewModel *)vm{
    _vm = vm;
    self.nameLabel.text = vm.name;
    self.imageV.image = [UIImage imageNamed:vm.image];
}


@end
