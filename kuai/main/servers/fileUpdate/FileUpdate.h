//
//  FileUpdate.h
//  kuai
//
//  Created by apple on 2020/8/10.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Server.h"
#import "Header.h"
NS_ASSUME_NONNULL_BEGIN

@interface FileUpdate : Server
@property(nonatomic,strong)UIImage *image;

@property(nonatomic,strong)File *file;

@end

NS_ASSUME_NONNULL_END
