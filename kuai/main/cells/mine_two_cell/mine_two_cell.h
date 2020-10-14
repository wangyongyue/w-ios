//
//  mine_two_cell.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface mine_two_cell : UICollectionViewCell

@end
@interface mine_two : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *title1;

+ (mine_two *)creat:(NSString *)title title1:(NSString *)title1;

@end
NS_ASSUME_NONNULL_END
