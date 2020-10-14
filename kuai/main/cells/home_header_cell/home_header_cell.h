//
//  home_header_cell.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface home_header_cell : UICollectionViewCell

@end
@interface home_header : NSObject
@property(nonatomic,copy)NSString *title;
+ (home_header *)creat:(NSString *)title;

@end
NS_ASSUME_NONNULL_END
