//
//  TestCell.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "TestCell.h"

@interface TestCell ()

@end

@implementation TestCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
        [self.contentView addSubview:lable];
        lable.text = @"sldjsjdflsjdf";
        
        
        
     
    }
    return self;
}

- (void)loadModel:(id)model{
    
    
}

@end

@implementation Test
- (NSString *)identifier{return NSStringFromClass([TestCell class]);}
- (NSValue *)size{return [NSValue valueWithCGSize:CGSizeMake(0, 50)];}

@end
