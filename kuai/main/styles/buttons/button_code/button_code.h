//
//  button_code.h
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//

#import "button_default.h"

NS_ASSUME_NONNULL_BEGIN

@interface button_code : button_default
{
    dispatch_source_t _timer;
}
- (void)clickCode;
- (void)backCode;
@end

NS_ASSUME_NONNULL_END
