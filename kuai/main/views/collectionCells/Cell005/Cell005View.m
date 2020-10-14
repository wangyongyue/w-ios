//
//  Cell005View.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Cell005View.h"
#import "Header.h"
@interface Cell005View ()

@end

@implementation Cell005View
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
 
       
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        

        
    }
    return self;
}
- (void)loadModel:(id)model{
//    self.label = [[label_default alloc]init];
    self.label.text = @"sdfsfsdfsddfsdfs";
}

@end

@implementation Cell005
- (NSString *)identifier{
    return NSStringFromClass([Cell005View class]);
}
- (NSValue *)size{
    CGSize size = CGSizeMake(ScreenWidth,50);
    return [NSValue valueWithCGSize:size];
}
@end

