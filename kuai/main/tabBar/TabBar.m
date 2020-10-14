//
//  TabBar.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "TabBar.h"
#import "Header.h"
@interface TabBar ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)NSMutableArray *buttons;

@property(nonatomic,assign)NSInteger number;

@end
@implementation TabBar


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        NSArray *strs = @[@"首页",@"我的"];
        NSArray *buttonNames = @[@"home_icon",@"home_icon-1"];

        for (int i = 0;i < 2; i ++) {
            CGRect frame = CGRectMake( self.frame.size.width/2*i, self.frame.size.height/2, self.frame.size.width/2, self.frame.size.height/2);
            CGRect frameImage = CGRectMake( self.frame.size.width/2*i, 0, self.frame.size.width/2, self.frame.size.height/2);

            
            UIImageView *button = [[UIImageView alloc]init];
            button.image = [UIImage imageNamed:buttonNames[i]];
            [self addSubview:button];
            button.frame = frameImage;
            button.contentMode = UIViewContentModeCenter;
            [button setUserInteractionEnabled:YES];
            [self.buttons addObject:button];

            UILabel *label = [[UILabel alloc]init];
            label.text = strs[i];
            label.textColor = GrayColor;
            label.frame = frame;
            label.textAlignment = NSTextAlignmentCenter;
            [self addSubview:label];
            [self.array addObject:label];
            
            if (i == 0) {
                label.textColor = blue_color;
                button.image = [UIImage imageNamed:@"home_icon_sel"];
            }
        }
    
    }
    return self;
}
- (NSMutableArray *)array{
    if (_array == nil) {
        _array = [NSMutableArray array];
    }
    return _array;
}
- (NSMutableArray *)buttons{
    if (_buttons == nil) {
        _buttons = [NSMutableArray array];
    }
    return _buttons;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    
    NSArray *buttonNormals = @[@"home_icon",@"home_icon-1"];
    NSArray *buttonSels = @[@"home_icon_sel",@"home_icon_sel_1"];

    
    for (int i = 0; i < self.array.count; i ++) {
        UILabel *label = self.array[i];
        label.textColor = GrayColor;
        
        UIImageView *button = self.buttons[i];
        
        if (CGRectContainsPoint(label.frame, point) || CGRectContainsPoint(button.frame, point)) {
            self.number = i;
        }
        
        button.image = [UIImage imageNamed:buttonNormals[i]];
        if (i == self.number) {
            button.image = [UIImage imageNamed:buttonSels[self.number]];
        }
      
        if (i == self.number) {
            label.textColor = blue_color;
        }
        if (self.number == 0) {
            self.backgroundColor = [UIColor whiteColor];
        }else{
            self.backgroundColor = [UIColor whiteColor];
        }
        
    }
    return [super hitTest:point withEvent:event];
}
@end
