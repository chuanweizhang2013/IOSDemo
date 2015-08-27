//
//  MainViewController.m
//  UIViewDemo
//
//  Created by chuanwei on 8/23/15.
//  Copyright (c) 2015 chuanwei. All rights reserved.
//

#import "MainViewController.h"
#import "SubViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(0, 24, 320, 100);
    [btn setTitle:@"测试1" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    
    
    //self.navigationController.navigationBar.hidden=YES;
    
    self.navigationItem.title= @"test";
    
    NSArray * scarray = [NSArray arrayWithObjects:@"雨松MOMO", @"若若娃", @"小可爱", @"哇咔咔", nil];
    
    UISegmentedControl *sc = [[UISegmentedControl alloc] initWithItems:scarray];
    
    sc.selectedSegmentIndex=0;
    [sc addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventValueChanged];
    
    self.navigationItem.titleView = sc;
    
    [self.navigationController.navigationBar setBackgroundColor:[UIColor blueColor]];
    
    UIBarButtonItem *bt = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(leftClick)];
    UIBarButtonItem*bt1 =[ [UIBarButtonItem alloc] initWithTitle:@"tes2" style:UIBarButtonItemStylePlain target:self action:@selector(leftClick)];
    
    NSArray* array = [[NSArray alloc] initWithObjects:bt,bt1, nil];
    
    
    UIBarButtonItem * customItem =  [[UIBarButtonItem alloc] initWithCustomView:[[UISwitch alloc] initWithFrame:CGRectMake(0, 0, 200, 200)]];
    
    
    NSArray* array1 = [NSArray arrayWithObjects:bt,bt1,customItem, nil];
    
    //self.navigationItem.leftBarButtonItems = array;
    
    
    //self.navigationItem.leftBarButtonItem = bt;
    
    
    //self.navigationItem.leftBarButtonItems
    //self.navigationController.navigationItem.title = @"test";
    
    
    
    
    self.navigationController.toolbarHidden = NO;
    self.toolbarItems =array1;
    [self.view addSubview:btn];
    // Do any additional setup after loading the view.
}


- (void)buttonAction:(UISegmentedControl*)segcontrol
{
    NSInteger index = segcontrol.selectedSegmentIndex;
    NSLog(@"select%d",index);

}


- (void)leftClick
{
    
}


- (void)viewDidAppear:(BOOL)animated
{
    
}
- (void)viewWillAppear:(BOOL)animated
{
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    
}
- (void)viewDidDisappear:(BOOL)animated
{
    
}


- (void)btnclick
{
    SubViewController* svc = [[SubViewController alloc] init];
    [self.navigationController pushViewController:svc animated:YES ];
    
//    self.view.backgroundColor = [UIColor grayColor];
//    
//    SubViewController* svc = [[SubViewController alloc] init];
//    [self presentViewController:svc animated:YES completion:^{}];
    
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
