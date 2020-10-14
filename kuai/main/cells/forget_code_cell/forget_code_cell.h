//
//  forget_code_cell.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface forget_code_cell : UICollectionViewCell

@end
@interface forget_code : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *placeholder;
@property(nonatomic,assign)BOOL isCode;
@property(nonatomic,copy)NSString *input;

+ (forget_code *)creat:(NSString *)title placeholder:(NSString *)placeholder;

@end
NS_ASSUME_NONNULL_END
