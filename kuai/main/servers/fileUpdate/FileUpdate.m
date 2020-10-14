//
//  FileUpdate.m
//  kuai
//
//  Created by apple on 2020/8/10.
//  Copyright © 2020 sui. All rights reserved.
//

#import "FileUpdate.h"

@implementation FileUpdate
- (NSString *)url{return @"/upload/uploadImage";}
- (NSMutableDictionary *)body{
        
    return [NSMutableDictionary dictionary];
}
- (void)loadTableData:(NSDictionary *)reponse{
    
    self.file = [[File alloc]init];
    
    self.file.fileName = reponse[@"data"][@"fileName"];
    self.file.fileSize = reponse[@"data"][@"fileSize"];
    self.file.projectFileUrl = reponse[@"data"][@"projectFileUrl"];
    self.file.suffixName = reponse[@"data"][@"suffixName"];
    self.file.thumbnailUrl = reponse[@"data"][@"thumbnailUrl"];
    self.file.fileUrl = reponse[@"data"][@"projectFileUrl"];

}
- (void)networkRequest{
    NSString *url = [NSString stringWithFormat:@"%@%@",HostUrl,self.url];
    NSLog(@"%@",url);
    [Alert loading:@"图片上传中..."];

    [Network upLoadImage:url para:self.body image:self.image progress:^(NSProgress *uploadProgress) {
        
    } success:^(NSDictionary *dic) {
        [Alert dismiss];

        NSLog(@"%@",dic);
        [self loadTableData:dic];
        self.reload();
        
    } failure:^(NSString *error) {
        [Alert dismiss];
        [Alert showMessage:error];

        self.error = error;
        self.reload();
    }];
}
@end
