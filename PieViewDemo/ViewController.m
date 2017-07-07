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
@property (nonatomic, strong) UILabel *tipLabel;
@property (nonatomic, strong) NSMutableArray *dataArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *dataArr = [NSMutableArray array];
    self.dataArr = dataArr;
    
    for (int i = 0; i < 5; i ++) {
        NSInteger random = arc4random() % 10 + 1;
        [dataArr addObject:[NSString stringWithFormat:@"%ld", random]];
    }
    
    self.pieView.sectionCount = dataArr;
    self.pieView.sectionColors = @[[UIColor redColor],
                                   [UIColor yellowColor],
                                   [UIColor blueColor],
                                   [UIColor greenColor],
                                   [UIColor orangeColor],
                                   [UIColor grayColor]];
    self.pieView.lineTexts = @[@"text0", @"text1哈哈哈嘿", @"text2", @"text3", @"text4", @"text5", @"text6"];
//    self.pieView.needAnimation = NO;
    [self.pieView showWithBlock:^(NSInteger index) {
        NSLog(@"哈哈哈==点了第%ld个", index);
        
    }];
}
- (IBAction)btnAction:(id)sender {
    
    NSMutableArray *dataArr = [NSMutableArray array];
    
    for (int i = 0; i < 5; i ++) {
        NSInteger random = arc4random() % 10 + 1;
        [dataArr addObject:[NSString stringWithFormat:@"%ld", random]];
    }
    
    self.pieView.sectionCount = dataArr;
    
    [self.pieView updatePieView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}

@end
