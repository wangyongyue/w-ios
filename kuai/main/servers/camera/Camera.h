//
//  Camera.h
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Header.h"

@interface Camera : UIImagePickerController
@property(nonatomic,copy) FileBlock block;
- (void)uploadFinish:(FileBlock)block;

@end
