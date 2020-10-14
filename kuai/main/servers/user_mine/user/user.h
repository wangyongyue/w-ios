//
//  user.h
//  kuai
//
//  Created by apple on 2020/9/3.
//  Copyright © 2020 sui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "File.h"
NS_ASSUME_NONNULL_BEGIN

@interface user : NSObject

@property(nonatomic,copy)NSString *trueName;
@property(nonatomic,copy)NSString *userName;
@property(nonatomic,copy)NSString *companyName;
@property(nonatomic,copy)NSString *mobile;
@property(nonatomic,copy)NSString *email;

@property(nonatomic,strong)File *frontFile;
@property(nonatomic,strong)File *backFile;
@property(nonatomic,strong)File *headerFile;
@property(nonatomic,strong)File *bookFile;

@end

NS_ASSUME_NONNULL_END
