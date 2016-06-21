//
//  myViewController.m
//  打地鼠
//
//  Created by tarenayj on 16/5/10.
//  Copyright © 2016年 TR. All rights reserved.
//

#import "myViewController.h"
#import <unistd.h>
@interface myViewController ()
@property (weak, nonatomic) IBOutlet UILabel *score;
@property (weak, nonatomic) IBOutlet UILabel *WELCOME;

@end

@implementation myViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.score.text = @"0";//分数清零
    
    self.WELCOME.text = @"GAME START";
    
    
    
   
    
    [NSTimer scheduledTimerWithTimeInterval:3
                                     target:self selector:@selector(run) userInfo:nil repeats:YES];

   

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)run
{
    self.WELCOME.text = @"";
    NSLog(@"no");
    UIButton *button =[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(arc4random()%(414-20)+20, arc4random()%500, 30, 30);
       button.backgroundColor = [UIColor redColor];
    [button setTitle:@"didi" forState:UIControlStateNormal];
    [self.view addSubview:button];
    //创建之后2s内 如果按下按钮,
    }

-(void)da
{
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
