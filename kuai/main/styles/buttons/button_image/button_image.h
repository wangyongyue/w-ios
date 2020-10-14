//
//  buttom_image.h
//  kuai
//
//  Created by apple on 2020/9/1.
//  Copyright © 2020 sui. All rights reserved.
//

#import "button_default.h"
#import "Header.h"
NS_ASSUME_NONNULL_BEGIN

@interface button_image : button_default
@property(nonatomic,copy)NSString *title;
@property(nonatomic,strong)File *file;

@property(nonatomic,copy)ClickBlock block;
@property(nonatomic,copy)ClickBlock deleBlock;
@property(nonatomic,assign)BOOL isEditor;

- (void)click:(ClickBlock)block deleBlock:(ClickBlock)deleBlock;

@end

NS_ASSUME_NONNULL_END
