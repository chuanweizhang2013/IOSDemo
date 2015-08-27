//
//  SubViewController2.m
//  UIViewDemo
//
//  Created by chuanwei on 8/25/15.
//  Copyright (c) 2015 chuanwei. All rights reserved.
//

#import "SubViewController2.h"
#import "MainViewController.h"

@interface SubViewController2 ()

@end

@implementation SubViewController2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blackColor];
    UIButton * btn =  [[UIButton alloc] init];
    btn.frame =  CGRectMake(0, 100, 320, 400);
    [btn setTitle:@"test2" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnclick
{
    
    for (UIViewController *view in self.navigationController.viewControllers) {
        
        if ([view isKindOfClass:[MainViewController class]]) {
            [self.navigationController popToViewController:view animated:YES];
        }
    }

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
