//
//  File.h
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface File : NSObject
@property(nonatomic,copy)NSString *fileName;
@property(nonatomic,copy)NSString *fileUrl;
@property(nonatomic,copy)NSString *projectFileUrl;
@property(nonatomic,copy)NSString *thumbnailUrl;
@property(nonatomic,copy)NSString *suffixName;
@property(nonatomic,copy)NSString *fileSize;

@property(nonatomic,assign)NSInteger fileType;
@property(nonatomic,assign)NSInteger id;


@end

NS_ASSUME_NONNULL_END
