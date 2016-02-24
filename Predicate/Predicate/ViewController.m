//
//  ViewController.m
//  Predicate
//
//  Created by mac on 16/2/18.
//  Copyright © 2016年 liujian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    谓词，用于筛选数组元素
//    使用的关键字：
//    1.SELF 2.CONTAINS(包含) 3.BEGINSWITH 4.ENDSWITH
//    5.LIKE * (通配符) ？(占位符)
//    6.> < != == 逻辑判断符号
//    7.[c]大小写  [d]不区分重音
//    8.NOT 结果取反
//    9.MATCHES 正则表达式
//    10.SELF IN 数组中元素是否包含另一个数组元素
    
//    NSArray *arr1 = @[@"Zheng zhou",@"ji yuan",@"shang qiu",@"han dan",@"luo yang",@"min quan",@"nan yang"];
    NSArray *arr1= @[@(1),@(2),@(3),@(4),@(5),@(6)];
//    创建谓词
//    self 表示数组里面的单个元素 contains 包含
//    self contains 'yang' 过滤数组里面包含 yang 的
//    NSArray *arr3 = @[@"bei jing",@"ji yuan",@"shang hai",@"han dan"];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:
                              @"self >= %@",@(3)];
                             
   NSArray *arr2 = [arr1 filteredArrayUsingPredicate:predicate];
    NSLog(@"%@",arr2);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
