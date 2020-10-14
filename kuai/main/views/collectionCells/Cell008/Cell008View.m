//
//  Cell008View.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Cell008View.h"
#import "Header.h"
@interface Cell008View ()

@end

@implementation Cell008View
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, Top)];
        [self.contentView addSubview:lable];
        lable.text = @"sdfsfsfdsdfsfds s sdf sdf sfd ddsdfs sd s";
        
        
    }
    return self;
}

- (void)loadModel:(id)model{
    
    
}

@end

@implementation Cell008
- (NSString *)identifier{
    
    return NSStringFromClass([Cell008View class]);
}
@end

