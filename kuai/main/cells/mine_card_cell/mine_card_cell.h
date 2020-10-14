//
//  mine_card_cell.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface mine_card_cell : UICollectionViewCell

@end
@interface mine_card : NSObject
@property(nonatomic,copy)NSString *imageName;
@property(nonatomic,strong)File *frontFile;


+ (mine_card *)creat:(File *)frontFile imageName:(NSString *)imageName;

@end
NS_ASSUME_NONNULL_END
