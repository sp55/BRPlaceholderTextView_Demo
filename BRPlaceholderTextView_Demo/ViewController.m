//
//  ViewController.m
//  BRPlaceholderTextView_Demo
//
//  Created by admin on 16/9/25.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "BRPlaceholderTextView.h"


#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
#define kRGB(R,G,B)       [UIColor colorWithRed:R/255.f green:G/255.f blue:254/255.f alpha:1];


@interface ViewController ()
@property (weak, nonatomic) IBOutlet BRPlaceholderTextView *placeHolderTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /**
     *  输出口
     */
    self.placeHolderTextView.placeholder=@"测试 拖的输出口";
    
    [self.placeHolderTextView addMaxTextLengthWithMaxLength:2 andEvent:^(BRPlaceholderTextView *text) {
        
        [self.view endEditing:YES];
        UIAlertView * alter=[[UIAlertView alloc] initWithTitle:@"提示" message:@"超过指定长度了" delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alter show];
        
        
    }];
    

    
    
    
    self.view.backgroundColor=kRGB(32, 152, 237);
    
    /**
     自定义
     
     */
    BRPlaceholderTextView *view=[[BRPlaceholderTextView alloc] initWithFrame:CGRectMake(10, 70, ScreenWidth -10*2, 40)];
    view.placeholder=@"请输入xxxx阿达索朗多吉阿克琉斯的距离卡洛斯大家阿莱克斯多久阿萨德卡拉斯京的卡拉胶上地理课:1231123";
    view.font=[UIFont boldSystemFontOfSize:14];
    view.layer.borderColor=[UIColor lightGrayColor].CGColor;
    [self.view addSubview:view];
    
    [view setPlaceholderColor:[UIColor redColor]];
    [view setPlaceholderOpacity:0.6];
    [view addMaxTextLengthWithMaxLength:20 andEvent:^(BRPlaceholderTextView *text) {
        NSLog(@"----------");
    }];
    
    [view addTextViewBeginEvent:^(BRPlaceholderTextView *text) {
        NSLog(@"begin");
    }];
    
    [view addTextViewEndEvent:^(BRPlaceholderTextView *text) {
        NSLog(@"end");
    }];
    
    //view.layoutManager.allowsNonContiguousLayout=NO;
    // view.scrollEnabled=NO;
    // Do any additional setup after loading the view, typically from a nib.

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
