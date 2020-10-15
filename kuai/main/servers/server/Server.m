//
//  Server.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Server.h"
#import "Network.h"
#import "Router.h"
#import "Header.h"

@interface Server ()
@property(nonatomic,copy)BackBlock backBlock;



@end
@implementation Server

- (NSString *)url{return @"";}
- (NSMutableDictionary *)body{
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    dic[@"userId"] = [Single getInstance].userId;
    
    return dic;
    
}
- (NSString *)parameterValidation{
    return @"";
}

- (void)searchContent:(NSString *)string{}
- (NSString *)searchPlaceholder{return @"请输入内容";}

- (NSString *)navigationTitle{return @"";}
- (NSArray *)navigationRightItems{return [[NSArray alloc]init];}
- (UIView *)bottomItems{return [[UIView alloc]init];}

- (void)successData:(ReloadBlock)block{
    self.reload = block;
}
- (void)failData:(ReloadBlock)block{self.failBlock = block;}

- (void)loadTableData:(NSDictionary *)reponse{}
- (void)loadError:(NSString *)error{}

- (void)tableIndex:(NSInteger)index{}
- (NSInteger)limit{
    return 10;
}

- (void)networkRequest{
    NSString *par = [self parameterValidation];
    if (par.length > 0) {
        [Alert showMessage:par];
        return;
    }
   
    if (self.url.length == 0) {
        [self loadTableData:nil];
        if (self.reload) {
            self.reload();
        }
        return;
    }else{
        
        NSString *url = [NSString stringWithFormat:@"%@%@",HostUrl,self.url];
        NSLog(@"%@",url);
        NSLog(@"%@",self.body);
        if (self.isRefresh == NO) {
            [Alert loading];
        }
        [Network POST:url parameter:self.body success:^(NSDictionary *dic) {
            if (self.isRefresh == NO) {
                [Alert dismiss];
            }
            int code = [dic[@"code"] intValue];
            if (code == 0) {
                
                NSLog(@"%@",dic);
                [self loadTableData:dic];
                if (self.reload) {
                    self.reload();
                }
                
            }else{
                
                [Alert showMessage:dic[@"msg"]];
                [self loadError:dic[@"msg"]];
                if (self.failBlock) {
                    self.failBlock();
                }

            }
            
        } failure:^(NSString *error) {
            if (self.isRefresh == NO) {
                [Alert dismiss];
            }
            [Alert showMessage:@"网络错误"];
            [self loadError:@"网络错误"];

            self.error = error;
            if (self.failBlock) {
                self.failBlock();
            }

        }];
    }
}
- (NSMutableArray *)array{
    if (_array == nil) {
        _array = [NSMutableArray array];
    }
    return _array;
}
- (UINavigationController *)navigationController{
    
    return [Router navigationController];
}
- (controller_default *)currentController{
    
    return (controller_default *)self.navigationController.viewControllers.lastObject;
}

- (void)popBack:(BackBlock)block{
    self.backBlock =  block;
    
    
}
- (void)pop:(id)obj{
    if (self.backBlock) {
        self.backBlock(obj);
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
