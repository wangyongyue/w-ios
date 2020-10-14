//
//  goods_add_seat_cell.m
//  kuai
//
//  Created by apple on 2020/9/4.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_add_seat_cell.h"
#import "Header.h"
@interface goods_add_seat_cell ()

@end

@implementation goods_add_seat_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.contentView.backgroundColor = blue_color;
       
    }
    return self;
}
- (void)loadModel:(id)model{
    
    goods_add_button *m = (goods_add_button *)model;

}
@end
@implementation goods_add_seat
- (NSString *)identifier{ return NSStringFromClass([goods_add_seat_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 0)];
}
+ (goods_add_seat *)creat{
    goods_add_seat *test = [[goods_add_seat alloc]init];
    return test;
}
@end
