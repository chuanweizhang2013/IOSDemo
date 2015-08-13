//
//  NCTableViewCell.m
//  CrazyDrag
//
//  Created by chuanwei on 7/31/15.
//  Copyright (c) 2015 chuanwei. All rights reserved.
//

#import "NCTableViewCell.h"

@implementation NCTableViewCell

@synthesize libName;
@synthesize libColor;
@synthesize name;
@synthesize color;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)setName:(NSString *)n{
    if (![n isEqualToString:name]) {
        name = [n copy];
        libName.text=name;
    }
}
-(void)setColor:(NSString *)c{
    if (![c isEqualToString:color]) {
        color = [c copy];
        libColor.text=color;
    }
}

@end
