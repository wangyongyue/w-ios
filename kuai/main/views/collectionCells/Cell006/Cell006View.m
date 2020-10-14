//
//  Cell006View.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Cell006View.h"
#import "Header.h"
@interface Cell006View ()

@end

@implementation Cell006View
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, Top)];
        [self.contentView addSubview:lable];
        lable.text = @"sdfsfsfdsdfsfds s sdf sdf sfd ddsdfs sd s";
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
        [self.contentView addGestureRecognizer:tap];
    }
    return self;
}

- (void)loadModel:(id)model{
    
    
}

@end

@implementation Cell006
- (NSString *)identifier{
    
    return NSStringFromClass([Cell006View class]);
}
@end

