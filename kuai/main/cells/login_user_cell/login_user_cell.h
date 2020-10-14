//
//  login_user_cell.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface login_user_cell : UICollectionViewCell

@end
@interface login_user : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *placeholder;
@property(nonatomic,copy)NSString *input;

+ (login_user *)creat:(NSString *)title placeholder:(NSString *)placeholder ;

@end
NS_ASSUME_NONNULL_END
