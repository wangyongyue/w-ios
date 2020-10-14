//
//  goods_add.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "goods_add.h"


@implementation goods_add

- (NSString *)url{
    
    
    return @"";
}
- (NSMutableDictionary *)body{
    
    NSMutableDictionary *dic = [super body];
   
    return dic;
}
- (NSString *)navigationTitle{
   
    return  @"添加";
}
- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
   
    
    [self.array addObject:[goods_add_red creat:@"header"]];
    [self.array addObject:[goods_add_header creat:@"header"]];
    [self.array addObject:[goods_add_input creat:@"header:" placeholder:@"请输入header" input:@"" re:[[regular_default_20 alloc]init]]];
    [self.array addObject:[goods_add_input_date creat:@"时间:" placeholder:@"请选择时间" input:@""]];
    [self.array addObject:[goods_add_header creat:@"送货车辆"]];
    [self.array addObject:[goods_add_car creat:@"照片" right:@"照片" urlLeft:nil urlRight:nil]];
    [self.array addObject:[goods_add_line creat]];
    [self.array addObject:[goods_add_header creat:@"header"]];
    [self.array addObject:[goods_add_sign creat:@"照片" middle:@"照片" right:@"照片" urlLeft:nil urlMiddle:nil urlRight:nil]];
    [self.array addObject:[goods_add_line creat]];
    
    [self.array addObject:[goods_add_header creat:@"header"]];
    [self.array addObject:[goods_add_collect creat:@"照片" urlLeft:nil]];
    [self.array addObject:[goods_add_input creat:@"header:" placeholder:@"请输入header" input:@"" re:[[regular_default_20 alloc]init]]];
//    [self.array addObject:[goods_add_seat creat]];
    [self.array addObject:[goods_add_LR creat:@"header:" title1:@"header"]];
    [self.array addObject:[goods_add_input_date creat:@"时间:" placeholder:@"请选择时间" input:@""]];
    [self.array addObject:[goods_add_input_time creat:@"日期:" placeholder:@"请选择日期" input:@""]];
    [self.array addObject:[goods_add_input_unit creat:@"header:" placeholder:@"请输入" input:@"" unit:@"元" re:[[regular_decimal_two alloc]init]]];
    [self.array addObject:[goods_add_line creat]];
    
   
   
    [self.array addObject:[goods_add_header creat:@"header"]];
    [self.array addObject:[goods_add_number creat:@"1"]];
    [self.array addObject:[goods_add_input_tap creat:@"header:" placeholder:@"请选择品牌名称" input:@""]];
    [self.array addObject:[goods_add_input_tap creat:@"header:" placeholder:@"请选择物料名称" input:@""]];
    [self.array addObject:[goods_add_input_tap creat:@"header:" placeholder:@"请选择规格型号" input:@""]];
    [self.array addObject:[goods_add_input_tap creat:@"header:" placeholder:@"请选择件重单位" input:@""]];
    [self.array addObject:[goods_add_input creat:@"header:" placeholder:@"请输入" input:@"" re:[[regular_decimal alloc]init]]];
    

     [self.array addObject:[goods_add_button creat:@"添加"]];
     [self.array addObject:[goods_add_line creat]];
    
    
}
- (void)tableIndex:(NSInteger)index{
    
    
    NSObject *obj = self.array[index];
    if ([obj isKindOfClass:[goods_add_input_tap class]]) {
        Server *server = [[goods_brand alloc]init];
        [goods_brand_controller push:server];
        [server popBack:^(id  _Nonnull obj) {

            goods_brand_item *item = obj;
            self.reload();
            
        }];
        
    }else if ([obj isKindOfClass:[goods_add_button class]]){
        NSMutableArray *array = [NSMutableArray array];
        [array addObject:[goods_add_number creat:@"1"]];
        [array addObject:[goods_add_input_tap creat:@"品牌名称:" placeholder:@"请选择" input:@""]];
        [array addObject:[goods_add_input_tap creat:@"物料名称:" placeholder:@"请选择" input:@""]];
        [array addObject:[goods_add_input_tap creat:@"规格型号:" placeholder:@"请选择" input:@""]];
        [array addObject:[goods_add_input_tap creat:@"件重单位:" placeholder:@"请选择" input:@""]];
        [array addObject:[goods_add_input creat:@"发 货 量:" placeholder:@"请输入发货量" input:@"" re:[[regular_decimal alloc]init]]];

        self.reload();
    
    }else if ([obj isKindOfClass:[goods_add_number class]]){
        
        
        [Alert showTitle:@"是否确定删除？" block:^{
            NSMutableArray *array = [NSMutableArray array];
            for (int i = index; i < self.array.count ; i ++) {
                NSObject *new = self.array[i];
                if (i > index) {
                    if ([new isKindOfClass:[goods_add_number class]]) {
                        break;
                    }else if ([new isKindOfClass:[goods_add_button class]]) {
                        break;
                    }
                }
                
                [array addObject:new];

            }
            
            for (int i = 0; i < array.count ; i ++) {
                NSObject *new = array[i];
                [self.array removeObject:new];
            }
            
            int number = 0;
            for (int i = 0; i < self.array.count ; i ++) {
                NSObject *new = self.array[i];
                if ([new isKindOfClass:[goods_add_number class]]) {
                    goods_add_number *newObj = (goods_add_number *)new;
                    number +=1;
                    newObj.title = [NSString stringWithFormat:@"%d",number];
                }
                
            }
            self.reload();
            
        }];

    }
    
    
    
}

- (void)commit{
    
    goods_add_check *check = [[goods_add_check alloc]init];
    [check networkRequest];
    __weak typeof(check) weakCheck = check;
    [check successData:^{
        
        [Alert showMessage:@"操作成功"];
        [self pop:@1];
    }];
    
    
}
@end

