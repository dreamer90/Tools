//
//  HttpTool.m
//  Tools
//
//  Created by hyfsoft on 2016/12/29.
//  Copyright © 2016年 hyfsoft. All rights reserved.
//

#import "HttpTool.h"
#import <AFNetworking/AFNetworking.h>
#import "AFNetworkActivityIndicatorManager.h"

@implementation HttpTool


// GET 请求
+ (__kindof NSURLSessionDataTask *)GET:(NSString *)url
                          paramameters:(NSDictionary *)parameters
                               success:(HttpRequestSuccess)success
                                 error:(HttpRequestError)failure
{
    AFHTTPSessionManager * manager = [HttpTool createAFHTTPSessionManager];
    
    return [manager GET:url parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        success ? success(responseObject) : nil;
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        failure ? failure(error) : nil;
    }];
}

// POST 请求
+ (__kindof NSURLSessionDataTask *)POST:(NSString *)url
                             parameters:(NSString *)parameters
                                success:(HttpRequestSuccess)success
                                  error:(HttpRequestError)failure
{
    AFHTTPSessionManager * manager = [HttpTool createAFHTTPSessionManager];
    
    return [manager POST:url parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        success ? success(responseObject) : nil;
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        failure ? failure(error) : nil;
    }];
}

+ (AFHTTPSessionManager *)createAFHTTPSessionManager
{
    // 打开状态栏的等待菊花
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    
    //设置请求参数的类型:HTTP
    AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    manager.requestSerializer.timeoutInterval = 30.f;
    //设置服务器返回结果的类型:JSON
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithArray:@[@"application/json",
                                                                              @"text/html",
                                                                              @"text/json",
                                                                              @"text/plain",
                                                                              @"text/javascript",
                                                                              @"text/xml",
                                                                              @"image/*"]];
    
    return manager;
}
@end
