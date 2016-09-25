//
//  ViewController.m
//  BRPlaceholderTextView_Demo
//
//  Created by admin on 16/9/25.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "BRPlaceholderTextView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet BRPlaceholderTextView *placeHolderTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.placeHolderTextView.placeholder = @"这是一个第三方的输入文本框，哈哈哈哈哈哈哈";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
