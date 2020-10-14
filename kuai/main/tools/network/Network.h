//
//  Network.h
//  kuai
//
//  Created by apple on 2020/8/10.
//  Copyright © 2020 sui. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <AFNetworking.h>
#import <AFNetworking/AFNetworkReachabilityManager.h>
@interface Network : NSObject

+ (void)GET:(NSString *)url success:(void(^)(NSDictionary *dic))success failure:(void(^)(NSString *error))failure;
+ (void)POST:(NSString *)url parameter:(NSDictionary *)parameter success:(void(^)(NSDictionary *dic))sucess failure:(void(^)(NSString *error))failure;
+ (void)downLoad:(NSString *)url progress:(void(^)(CGFloat downloadProgress))progress completionHandler:(void(^)(NSString *filePath))completionHandler;
//UpLoad请求 image
+ (void)upLoadImage:(NSString *)url para:(NSDictionary *)para image:(UIImage *)image progress:(void(^)(NSProgress *uploadProgress))progress success:(void(^)(NSDictionary *dic))success failure:(void(^)(NSString *error))failure;

//UpLoad请求 video
+ (void)upLoadVideo:(NSString *)url para:(NSDictionary *)para videoData:(NSData *)videoData progress:(void(^)(NSProgress *uploadProgress))progress success:(void(^)(NSDictionary *dic))success failure:(void(^)(NSString *error))failure;

//网络状态
+ (BOOL)reachability;


+ (void)downloadFile:(NSString *)url para:(NSDictionary *)para progress:(void(^)(CGFloat uploadProgress))progress success:(void(^)(NSString *file))success failure:(void(^)(NSString *error))failure;

@end
