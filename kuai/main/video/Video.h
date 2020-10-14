//
//  Video.h
//  kuai
//
//  Created by apple on 2020/6/12.
//  Copyright © 2020 sui. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Video : UIView
@property (nonatomic, strong) NSMutableArray *array;
@property (nonatomic, copy) NSString *url;

- (void)show;
- (void)remove;

@end

NS_ASSUME_NONNULL_END
