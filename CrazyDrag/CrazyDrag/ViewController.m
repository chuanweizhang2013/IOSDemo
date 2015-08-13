//
//  ViewController.m
//  CrazyDrag
//
//  Created by chuanwei on 7/31/15.
//  Copyright (c) 2015 chuanwei. All rights reserved.
//

#import "ViewController.h"

#import "NCTableViewCell.h"

@interface ViewController (){
    int targetValue;
}
- (IBAction)showAlert:(id)sender;
- (IBAction)SlideMove:(id)sender;
@property (strong, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

@synthesize computer;
@synthesize slider;
int currentValue;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDictionary * row1=[[NSDictionary alloc] initWithObjectsAndKeys:@"MacBook Air", @"Name", @"Silver", @"Color", nil];
    NSDictionary *row2=[[NSDictionary alloc] initWithObjectsAndKeys:@"dell Lk01",@"Name",@"白色 ",@"Color" ,nil];
    
    NSDictionary *row3=[[NSDictionary alloc] initWithObjectsAndKeys:@"ipad Lk01",@"Name",@"黄色",@"Color" ,nil];
    
    NSDictionary *row4=[[NSDictionary alloc] initWithObjectsAndKeys:@"apple Lk01",@"Name",@"玫瑰金",@"Color",nil];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *array = [[NSArray alloc] initWithObjects:row1, row2,row3,row4, nil];
    self.computer = array;
    
    
    
    CGRect rect = [[UIScreen mainScreen] applicationFrame];
    UINavigationBar *navigbar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, rect.size.width, 44)];
    
    UINavigationItem *navigationItem = [[UINavigationItem alloc] initWithTitle:nil];
    
    UIBarButtonItem* leftButton = [[UIBarButtonItem alloc] initWithTitle:@"left" style:UIBarButtonItemStylePlain target:self action:@selector(clickLeftButton)];
    UIBarButtonItem* rightButton = [[UIBarButtonItem alloc] initWithTitle:@"right" style:(UIBarButtonItemStyleDone) target:self action:@selector(clickRightButton)];
    
    
    [navigationItem setTitle:@"程序的世界"];
    [navigationItem setLeftBarButtonItem:leftButton];
    [navigationItem setRightBarButtonItem:rightButton];
    
    
    [navigbar pushNavigationItem:navigationItem animated:YES];
    
    [navigbar setBarStyle:UIBarStyleBlack];
    NSDictionary * dic =[NSDictionary dictionaryWithObjectsAndKeys:[UIFont boldSystemFontOfSize:20], NSFontAttributeName,[UIColor redColor],NSForegroundColorAttributeName,nil];
    [navigbar setTitleTextAttributes:dic];
    
    navigbar.translucent =  YES;
    //[self.view addSubview:navigbar];
    currentValue =slider.value;
    targetValue =  arc4random()%100 +1;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)clickLeftButton
{
    
    [self showDialog:@"点击了导航栏左边按钮"];
    
}

-(void)clickRightButton
{
    
    [self showDialog:@"点击了导航栏左边按钮"];
    
}

-(void)showDialog:(NSString *) str
{
    
    UIAlertView * alert= [[UIAlertView alloc] initWithTitle:@"这是一个对话框" message:str delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
    
    [alert show];
}

- (IBAction)showAlert:(id)sender {
    [[[UIAlertView alloc] initWithTitle:@"warning" message:@"title" delegate:nil cancelButtonTitle:@"已经转发一次" otherButtonTitles:nil, nil] show];
}

- (IBAction)SlideMove:(id)sender {
    
    UISlider *slider = (UISlider*)sender;
    NSLog(@"滑动条的当前数值是:%f",slider.value);
    currentValue = lroundf(slider.value);
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return [computer count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellTableIdentifier = @"CellTableIdentifier";
    static BOOL nibsRegistered = NO;
    if (! nibsRegistered) {
        
        UINib *nib= [UINib nibWithNibName:@"NCTableViewCell" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:CellTableIdentifier];
        
        nibsRegistered = YES;
    }
    
    NCTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
    NSInteger row = [indexPath row];
    NSDictionary *rowData = [self.computer objectAtIndex:row];
    
    cell.name = [rowData objectForKey:@"Name"];
    cell.color = [rowData objectForKey:@"Color"];
    
    return cell;
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger index= [indexPath row];
    NSLog (@"x=%d", index);
    
}

@end
