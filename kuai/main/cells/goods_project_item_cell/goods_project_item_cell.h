//
//  goods_project_item_cell.h
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface goods_project_item_cell : UICollectionViewCell

@end
@interface goods_project_item : NSObject
@property(nonatomic,assign)NSInteger id;
@property(nonatomic,copy)NSString *projectName;
@property(nonatomic,copy)NSString *customerName;
@property(nonatomic,copy)NSString *projectAddr;
@property(nonatomic,copy)NSString *projectOne;
@property(nonatomic,copy)NSString *projectTwo;
@property(nonatomic,assign)NSInteger projectCategroy;



@property(nonatomic,copy)NSMutableAttributedString *title;
@property(nonatomic,copy)NSMutableAttributedString *title1;


+ (goods_project_item *)creat:(NSString *)title title1:(NSString *)title1;

@end
NS_ASSUME_NONNULL_END
