//
//  updateUserPhoto.m
//  kuai
//
//  Created by apple on 2020/9/3.
//  Copyright © 2020 sui. All rights reserved.
//


#import "updateUserPhoto.h"
#import "Header.h"

@implementation updateUserPhoto

- (NSString *)url{
    
    return @"/personal/updateUserPhoto";
}
- (NSMutableDictionary *)body{
    NSMutableDictionary *dic = [super body];
    File *file = self.files.firstObject;
    dic[@"fileStr"] = [file mj_JSONString];
    return dic;
}

- (void)loadTableData:(NSDictionary *)reponse{
           
    [Alert showMessage:@"修改成功"];
    [self.navigationController popViewControllerAnimated:YES];
}
- (NSString *)parameterValidation{
    if (self.files.count == 0) {
        
        return @"请上传头像图片";
    }
    
    return @"";
}


@end

