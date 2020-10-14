//
//  Server.h
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "controller_default.h"
NS_ASSUME_NONNULL_BEGIN
typedef void(^ReloadBlock)(void);

typedef void(^BackBlock)(id obj);



@interface Server : NSObject
@property(nonatomic,strong)UINavigationController *navigationController;
@property(nonatomic,strong)controller_default *currentController;

@property(nonatomic,copy)ReloadBlock reload;
@property(nonatomic,copy)ReloadBlock failBlock;
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,copy)NSString *error;


@property(nonatomic,assign)NSInteger current;
@property(nonatomic,assign)NSInteger total;
@property(nonatomic,assign)NSInteger limit;


@property(nonatomic,assign)BOOL isRefresh;

- (NSString *)url;
- (NSMutableDictionary *)body;
- (NSString *)parameterValidation;

- (void)loadTableData:(NSDictionary *)reponse;
- (void)tableIndex:(NSInteger)index;

- (void)successData:(ReloadBlock)block;
- (void)failData:(ReloadBlock)block;

- (void)networkRequest;

- (void)searchItem;
- (void)addItem;
- (void)commit;
- (BOOL)addItemHidden;

- (NSString *)navigationTitle;
- (void)searchContent:(NSString *)string;
- (NSString *)searchPlaceholder;

- (void)popBack:(BackBlock)block;
- (void)pop:(id)obj;



@end

NS_ASSUME_NONNULL_END
