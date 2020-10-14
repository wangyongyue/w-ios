//
//  list_view.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Collection.h"
#import "Server.h"

NS_ASSUME_NONNULL_BEGIN

@interface list_view : Collection
@property(nonatomic,strong)Server *server;


- (void)reload;
- (void)reloadIndex:(NSInteger)index;
@end

NS_ASSUME_NONNULL_END
