//
//  SubViewController.m
//  UIViewDemo
//
//  Created by chuanwei on 8/23/15.
//  Copyright (c) 2015 chuanwei. All rights reserved.
//

#import "SubViewController.h"
#import "SubViewController2.h"

@interface SubViewController ()

@end

@implementation SubViewController

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
    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton * btn =  [[UIButton alloc] init];
    btn.frame =  CGRectMake(0, 100, 320, 400);
    [btn setTitle:@"test2" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    self.navigationItem.leftBarButtonItem= [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(btnclick)];
    
    self.navigationItem.title = @"sub2";
    

    
}


- (void)btnclick
{
    SubViewController2 * svc2 = [[SubViewController2 alloc] init];
    [self.navigationController pushViewController:svc2 animated:YES];
    //[self.navigationController popToRootViewControllerAnimated:YES];
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
