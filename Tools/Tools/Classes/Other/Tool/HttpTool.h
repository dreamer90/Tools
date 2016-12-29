//
//  HttpTool.h
//  Tools
//
//  Created by hyfsoft on 2016/12/29.
//  Copyright © 2016年 hyfsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

// 请求成功的block
typedef void(^HttpRequestSuccess)(id responseObj);
// 请求失败的block
typedef void(^HttpRequestError)(NSError * error);

@interface HttpTool : NSObject

// GET 请求
+ (__kindof NSURLSessionDataTask *)GET:(NSString *)url
                 paramameters:(NSDictionary *)parameters
                      success:(HttpRequestSuccess)success
                        error:(HttpRequestError)failure;

// POST 请求
+ (__kindof NSURLSessionDataTask *)POST:(NSString *)url
                             parameters:(NSString *)parameters
                                success:(HttpRequestSuccess)success
                                  error:(HttpRequestError)failure;

@end
