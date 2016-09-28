//
//  CYTableViewController.m
//  MVC
//
//  Created by bridge on 16/9/3.
//  Copyright © 2016年 bridge. All rights reserved.
//

#import "CYTableViewController.h"
#import "CYViewCell.h"
#import "ViewModel.h"
static NSString *ID = @"cell";
@interface CYTableViewController ()
@property (strong,nonatomic) NSMutableArray *array;
@property (strong,nonatomic) NSMutableArray *dadaArr;
@end

@implementation CYTableViewController
-(NSMutableArray *)dadaArr{
    if (_dadaArr == nil) {
        _dadaArr = [NSMutableArray array];
    }
    return _dadaArr;
}
-(NSMutableArray *)array{
    if (_array == nil) {
        _array = [NSMutableArray array];
    }
    return _array;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    NSDictionary *dict1 = @{ @"name" : @"ZHANGSAN" , @"image" : @"未标题-1_23"
        
    };
    NSDictionary *dict2 =@{ @"name" : @"LISI" , @"image" : @"团购切1_09"
                            
                            };
    [self.array  addObject:dict1];
    [self.array  addObject:dict2];
    
    for (NSDictionary *dict in self.array) {
        ViewModel *vm = [ViewModel modelWithDict:dict];
        [self.dadaArr addObject:vm];
    }
    
    [self.tableView registerNib:[UINib nibWithNibName:@"CYViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:ID];

    
}





- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dadaArr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CYViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
   
    ViewModel *vm = self.dadaArr[indexPath.row];
    cell.vm = vm;
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}


@end
