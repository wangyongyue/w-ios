//
//  controller_search.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "controller_default.h"

NS_ASSUME_NONNULL_BEGIN

@interface controller_search : controller_default
@property(nonatomic,strong)UITextField *field;

- (void)searchClick;
@end

NS_ASSUME_NONNULL_END
