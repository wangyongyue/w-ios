//
//  login_login_cell.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface login_login_cell : UICollectionViewCell

@end
@interface login_login : NSObject
@property(nonatomic,copy)NSString *title;
+ (login_login *)creat:(NSString *)title;

@end
NS_ASSUME_NONNULL_END
