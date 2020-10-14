//
//  field_default.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Header.h"
NS_ASSUME_NONNULL_BEGIN

@interface field_default : UITextField
@property(nonatomic,strong)regular *re;
@property(nonatomic,copy)TextBlock block;
@property(nonatomic,copy)ClickBlock beginBlock;

@property(nonatomic,assign)BOOL isEdit;

- (void)change:(TextBlock)block;
- (void)editBegin:(ClickBlock)block;

@end

NS_ASSUME_NONNULL_END
