//
//  Cell004View.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Cell004View.h"
#import "Header.h"
#import "Video.h"

@interface Cell004View ()
@property(nonatomic,strong)UILabel *label1;
@property(nonatomic,strong)Video *player;

@end

@implementation Cell004View
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        
        self.player = [[Video alloc]initWithFrame:self.contentView.bounds];
        [self.contentView addSubview:self.player];

        self.label1 = [[UILabel alloc]init];
        self.label1.textColor = [UIColor whiteColor];
        self.label1.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:self.label1];
        self.label1.frame = CGRectMake(0, 200, ScreenWidth, 100);
        self.label1.numberOfLines = 0;

    }
    return self;
}

- (void)loadModel:(id)model{
    
    Cell004 *m = (Cell004 *)model;
    self.label1.text = m.title1;
    [self.player remove];

    
//    self.player.array = self.array;
    self.player.url = m.title1;
    [self.player show];
}

@end

@implementation Cell004
- (NSString *)identifier{
    
    return NSStringFromClass([Cell004View class]);
}
- (NSValue *)size{
    CGSize size = CGSizeMake(ScreenWidth, ScreenHeight - 200);
    return [NSValue valueWithCGSize:size];
}
@end
