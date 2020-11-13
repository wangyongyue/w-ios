//
//  controller_search.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "controller_back.h"
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN


@protocol controller_search_protocol <NSObject>
- (void)searchContent:(NSString *)string;
- (NSString *)searchPlaceholder;
@end

@interface controller_search : controller_back
@property(nonatomic,strong)Server<controller_search_protocol> *server;
+ (void)push:(Server<controller_search_protocol> *)server;


@end

NS_ASSUME_NONNULL_END

