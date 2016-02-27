//
//  AYBaseTask.m
//  AYNetTask
//
//  Created by hahaYJ on 2/27/16.
//  Copyright © 2016 杨捷. All rights reserved.
//

#import "AYBaseTask.h"

@interface AYBaseTask ()

@property (nonatomic, copy) AYConfigurationRequestBlock configurationRequestBlock;

@end

@implementation AYBaseTask

/** 后台执行任务 **/
- (void)taskInBackgroundRunning {
    
}

/** 发起get任务执行 **/
- (AYBaseTask * (^)(AYRequestCompletedBlock block))doGetTask {
    return ^(AYRequestCompletedBlock block) {
        block(@"doGetTask");
        if(_configurationRequestBlock)
            _configurationRequestBlock(@"!!!!");
        return self;
    };
}

/** 发起post任务执行 **/
- (AYBaseTask * (^)(AYRequestCompletedBlock block))doPostTask {
    return ^(AYRequestCompletedBlock block) {
        block(@"doPostTask");
        return self;
    };
}

/** http 基本参数配置 **/
- (AYBaseTask * (^)(AYConfigurationRequestBlock block))configurationRequest {
    return ^(AYConfigurationRequestBlock block) {
        _configurationRequestBlock = block;
        return self;
    };
}

/** url 重映射 **/
- (AYBaseTask * (^)(AYUrlMapBlock block))urlMap {
    return ^(AYRequestCompletedBlock block) {
        block(@"AYUrlMapBlock");
        return self;
    };
}

/** url 设置 **/
- (AYBaseTask * (^)(NSString *url))url {
    return ^(NSString *url) {
        return self;
    };
}

/** post参数设置 **/
- (AYBaseTask * (^)(AYPostParamsBlock block))postParams {
    return ^(AYPostParamsBlock block) {
        NSMutableDictionary *postParams = [NSMutableDictionary new];
        block(postParams);
        NSLog(@"%@", postParams);
        return self;
    };
}

/** 任务执行完成 **/
- (void)taskCompleted {
    
}

/** 任务执行失败 **/
- (void)taskFailure {
    
}

/** 任务执行中断 **/
- (void)taskInterrupt {
    
}

@end
