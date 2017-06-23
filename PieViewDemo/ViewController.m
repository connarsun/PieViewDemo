//
//  ViewController.m
//  PieViewDemo
//
//  Created by john on 2017/6/21.
//  Copyright © 2017年 john. All rights reserved.
//

#import "ViewController.h"
#import "PieView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet PieView *pieView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *dataArr = [NSMutableArray array];
    
    for (int i = 0; i < 5; i ++) {
        NSInteger random = arc4random() % 10 + 1;
        [dataArr addObject:[NSString stringWithFormat:@"%ld", random]];
    }
    
    self.pieView.sectionCount = dataArr;
//    self.pieView.sectionColors = @[[UIColor redColor],
//                                   [UIColor yellowColor],
//                                   [UIColor blueColor],
//                                   [UIColor greenColor],
//                                   [UIColor grayColor],
//                                   [UIColor orangeColor],
//                                   [UIColor grayColor],
//                                   [UIColor purpleColor]];
    self.pieView.lineTexts = @[@"text0", @"text1", @"text2", @"text3", @"text4", @"text5", @"text6"];
    [self.pieView showWithBlock:^(NSInteger index) {
        NSLog(@"哈哈哈==点了第%ld个", index);
        
        UIAlertController *vc = [UIAlertController alertControllerWithTitle:nil message:[NSString stringWithFormat:@"哈哈哈==点了第%ld个", index] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [vc addAction:ok];
        [self presentViewController:vc animated:YES completion:nil];
        
    }];
}

@end
