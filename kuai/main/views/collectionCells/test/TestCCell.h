//
//  TestCCell.h
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestCCell : UICollectionViewCell

@end
@interface TestC : NSObject
@property(nonatomic,copy)NSString *title1;
+ (TestC *)creat:(NSString *)title;

@end
NS_ASSUME_NONNULL_END
