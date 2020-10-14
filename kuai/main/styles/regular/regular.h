//
//  regular.h
//  kuai
//
//  Created by apple on 2020/9/1.
//  Copyright © 2020 sui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface regular : NSObject
@property(nonatomic,assign)NSInteger max;
@property(nonatomic,copy)NSString *regularString;
@property(nonatomic,copy)NSString *regularResult;
@property(nonatomic,assign)UIKeyboardType keyboardType;
@property(nonatomic,assign)BOOL isZH;


- (NSString *)run:(NSString *)string;
@end

NS_ASSUME_NONNULL_END
