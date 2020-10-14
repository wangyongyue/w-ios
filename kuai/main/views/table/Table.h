//
//  Table.h
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Table : UITableView<UITableViewDelegate,UITableViewDataSource,UIGestureRecognizerDelegate>

@property(nonatomic,strong)NSArray *array;
- (void)tableIndex:(void(^)(NSInteger index))block;

@end

NS_ASSUME_NONNULL_END
