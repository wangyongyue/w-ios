//
//  TestCCell.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "TestCCell.h"
#import "Header.h"
@interface TestCCell ()
@property(nonatomic,strong)UILabel *label;
@end

@implementation TestCCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth/2, 50)];
        [self.contentView addSubview:lable];
        lable.text = @"sdfsfsfdsdfsf";
        lable.textColor = [UIColor blackColor];
        self.label = lable;
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    TestC *m = (TestC *)model;
    self.label.text = m.title1;
}

@end

@implementation TestC
- (NSString *)identifier{ return NSStringFromClass([TestCCell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 50)];
}
+ (TestC *)creat:(NSString *)title{
    
    TestC *test = [[TestC alloc]init];
    test.title1 = title;
    return test;
}
@end
