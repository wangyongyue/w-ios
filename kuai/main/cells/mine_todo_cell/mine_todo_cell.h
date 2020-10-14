//
//  mine_todo_cell.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface mine_todo_cell : UICollectionViewCell

@end
@interface mine_todo : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *imageName;

+ (mine_todo *)creat:(NSString *)title;
+ (mine_todo *)creat:(NSString *)title imageName:(NSString *)imageName;

@end
NS_ASSUME_NONNULL_END
