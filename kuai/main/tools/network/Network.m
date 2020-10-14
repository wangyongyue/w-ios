//
//  Network.m
//  kuai
//
//  Created by apple on 2020/8/10.
//  Copyright © 2020 sui. All rights reserved.
//


#import "Network.h"

#define kTimeoutInterval (60)

@implementation Network

//GET请求

+ (void)GET:(NSString *)url success:(void(^)(NSDictionary *dic))success failure:(void(^)(NSString *error))failure{
    AFHTTPSessionManager *manger = [AFHTTPSessionManager manager];
    manger.responseSerializer = [AFHTTPResponseSerializer serializer];
    manger.requestSerializer.timeoutInterval = kTimeoutInterval;
    manger.securityPolicy.allowInvalidCertificates=YES;
    manger.securityPolicy.validatesDomainName=NO;
    manger.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", nil];
    
    [manger GET:url parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        
        if ([responseObject[@"code"] intValue] == 0) {
            if (success) {
                success(responseObject);
            }
        }else{
            if (failure){
                
                failure(responseObject[@"error"]);
            }
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(@"网络加载失败");
        }
        
    }];
    
}
+ (void)POST:(NSString *)url parameter:(NSDictionary *)parameter success:(void(^)(NSDictionary *dic))sucess failure:(void(^)(NSString *error))failure{
    
    AFHTTPSessionManager *manger = [AFHTTPSessionManager manager];
    manger.requestSerializer.timeoutInterval = kTimeoutInterval;
    manger.securityPolicy.allowInvalidCertificates=YES;
    manger.securityPolicy.validatesDomainName=NO;
    manger.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", nil];
//    ,@"application/octet-stream"
    
    //无条件的信任服务器上的证书
    AFSecurityPolicy *securityPolicy =  [AFSecurityPolicy defaultPolicy];
    // 客户端是否信任非法证书
    securityPolicy.allowInvalidCertificates = YES;
    // 是否在证书域字段中验证域名
    securityPolicy.validatesDomainName = NO;
    manger.securityPolicy = securityPolicy;
    
    NSString *token = [[NSUserDefaults standardUserDefaults] valueForKey:@"token"];
    if (token) {
        [manger.requestSerializer setValue:token forHTTPHeaderField:@"token"];

    }
    
   
    [manger POST:url parameters:parameter progress:^(NSProgress * _NonnulluploadProgress){
        
    }success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        if (sucess) {
            sucess(responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error--%@",error);
        if (failure) {
            failure(@"网络加载失败");
        }
        
    }];
    
}
+ (NSString *)stringWithCurrentDate{
    NSDate *date = [NSDate date];
    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[date timeIntervalSince1970]*1000];
    return timeSp;
}

//DownLoad请求

+ (void)downLoad:(NSString *)url progress:(void(^)(CGFloat downloadProgress))progress completionHandler:(void(^)(NSString *filePath))completionHandler{
    //1. 创建NSURLSessionConfiguration
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    //2. 创建管理者对象
    AFURLSessionManager *manager = [[AFURLSessionManager alloc]initWithSessionConfiguration:configuration];
    //3. 设置url
    NSURL *uRL = [NSURL URLWithString:url];
    //4. 创建请求对象
    NSURLRequest *request = [NSURLRequest requestWithURL:uRL];
    /* 下载路径 */
    NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
    NSString *file = [path stringByAppendingPathComponent:url.lastPathComponent];
    if (![url hasSuffix:@".jpg"] && ![url hasSuffix:@".mp4"]) {
        NSString *str = [NSString stringWithFormat:@"%@.%@",[Network stringWithCurrentDate],[url pathExtension]];
        file = [path stringByAppendingPathComponent:str];
    }
    //5. 下载任务
    /* 开始请求下载 */
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        //打印下载进度
        CGFloat number = 1.0*downloadProgress.completedUnitCount/downloadProgress.totalUnitCount;
        if (progress) {
            progress(number);
        }
        NSLog(@"abcddsfsdfsdf 下载进度：%.0f％", downloadProgress.fractionCompleted * 100);

        
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {


        return [NSURL fileURLWithPath:file];
        
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
        //下载完成
        
        NSData *data = [NSData dataWithContentsOfURL:filePath];
        NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
        NSString *imageFilePath = [path stringByAppendingPathComponent:filePath.lastPathComponent];
        [data writeToFile:imageFilePath atomically:YES];
        BOOL success = [data writeToFile:imageFilePath atomically:YES];
        
        if (success){
            NSLog(@"abcddsfsdfsdf %@",imageFilePath);
            NSLog(@"abcddsfsdfsdf 写入本地成功");
        }

        
        NSLog(@"abcddsfsdfsdf  %@",filePath);
        NSLog(@"abcddsfsdfsdferror  %@",error);

        if (completionHandler && error == nil) {
            completionHandler(imageFilePath);
        }
    }];
    //启动任务
    [downloadTask resume];
    
}
//UpLoad请求 image
+ (void)upLoadImage:(NSString *)url para:(NSDictionary *)para image:(UIImage *)image progress:(void(^)(NSProgress *uploadProgress))progress success:(void(^)(NSDictionary *dic))success failure:(void(^)(NSString *error))failure{
        
    [Network upLoad:url para:para image:image progress:^(NSProgress *uploadProgress) {
        if (progress) {
            progress(uploadProgress);
        }
    } success:^(NSDictionary *dic) {
        if (success) {
            success(dic);
        }
    } failure:^(NSString *error) {
        if (failure) {
            failure(error);
            
        }
    }];
    
    
}



+ (void)upLoad:(NSString *)url para:(NSDictionary *)para image:(UIImage *)image progress:(void(^)(NSProgress *uploadProgress))progress success:(void(^)(NSDictionary *dic))success failure:(void(^)(NSString *error))failure{
    if (image == nil) {
        return;
    }
    NSString *postUrl = url;//URL
    NSData *imageData = UIImageJPEGRepresentation(image, 1.0);
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", nil];
    
    [manager POST:postUrl parameters:para constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"yyyyMMddHHmmss";
        NSString *fileName = [NSString stringWithFormat:@"%@.png",[formatter stringFromDate:[NSDate date]]];
        //二进制文件，接口key值，文件路径，图片格式
        [formData appendPartWithFileData:imageData name:@"File" fileName:fileName mimeType:@"image/jpg/png/jpeg"];
        
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        
        if (progress) {
            progress(uploadProgress);
        }
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        if (success) {
            NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
            success(dic);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error.localizedDescription);
            
        }
    }];
    
    
}
//UpLoad请求 video
+ (void)upLoadVideo:(NSString *)url para:(NSDictionary *)para videoData:(NSData *)videoData progress:(void(^)(NSProgress *uploadProgress))progress success:(void(^)(NSDictionary *dic))success failure:(void(^)(NSString *error))failure{
    
    if (videoData.length == 0) {
        if (failure) {
            failure(@"");
        }
        return;
    }
    
    
    
    NSString *postUrl = url;//URL
    NSData *data = videoData;
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager]; manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", nil];
    
    [manager POST:postUrl parameters:para constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"yyyyMMddHHmmss";
        NSString *fileName = [NSString stringWithFormat:@"%@.mp4",[formatter stringFromDate:[NSDate date]]];
        //二进制文件，接口key值，文件路径，图片格式
        [formData appendPartWithFileData:data name:@"file" fileName:fileName mimeType:@"video/quicktime/mp4/mov"];
        
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        if (progress) {
            progress(uploadProgress);
        }
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        if (success) {
            NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
            success(dic);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
       if (failure) {
           failure(@"");
       }
    }];
    
    
}


+ (void)downloadFile:(NSString *)url para:(NSDictionary *)para progress:(void(^)(CGFloat uploadProgress))progress success:(void(^)(NSString *file))success failure:(void(^)(NSString *error))failure{
    

    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];

    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    
    /* 下载路径 */
    NSString *filePath = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingPathComponent:[url componentsSeparatedByString:@"/"].lastObject];
    NSLog(@"filePath:%@",filePath);

    /* 开始请求下载 */
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"下载进度：%.0f％", downloadProgress.fractionCompleted * 100);
        if (progress) {
            progress(downloadProgress.fractionCompleted * 100);
        }
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
       
        /* 设定下载到的位置 */
        return [NSURL fileURLWithPath:filePath];
                
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
         NSLog(@"下载完成");
        
        NSDictionary * attributes = [[NSFileManager defaultManager] attributesOfItemAtPath:filePath.absoluteString error:NULL];
        NSLog(@"%ld",[attributes fileSize]);
        if (success) {
            success(filePath.absoluteString);
        }
         
    }];
    [downloadTask resume];

    
}






//网络状态
+ (BOOL)reachability{
    //1. 创建网络监测者
    __block BOOL isNetwork = YES;
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //监测网络改变
        switch (status) {
            case AFNetworkReachabilityStatusUnknown:
                //                NSLog(@"未知网络状态");
                isNetwork = NO;
                break;
            case AFNetworkReachabilityStatusNotReachable:
                //                NSLog(@"无网络");
                isNetwork = NO;
                
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                //                NSLog(@"蜂窝数据网络");
                isNetwork = YES;
                
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                //                NSLog(@"WiFi网络");
                isNetwork = YES;
                break;
            default:
                break;
                
        }
        
    }];
    
    return isNetwork;
    
}

@end
