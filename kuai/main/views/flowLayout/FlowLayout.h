//
//  FlowLayout.h
//  kuai
//
//  Created by apple on 2020/6/15.
//  Copyright © 2020 sui. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlowLayout : UICollectionViewFlowLayout

- (instancetype)initWithScrollDirection:(UICollectionViewScrollDirection)scrollDirection;
@end

NS_ASSUME_NONNULL_END
