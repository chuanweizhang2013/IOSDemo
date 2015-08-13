//
//  NCTableViewCell.h
//  CrazyDrag
//
//  Created by chuanwei on 7/31/15.
//  Copyright (c) 2015 chuanwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NCTableViewCell : UITableViewCell
@property (retain,nonatomic) IBOutlet UILabel* libName;
@property (retain,nonatomic) IBOutlet UILabel* libColor;
@property (copy,nonatomic) NSString *name;
@property (copy,nonatomic) NSString *color;

@end
