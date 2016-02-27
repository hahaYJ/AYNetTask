//
//  AYBaseTask.m
//  AYNetTask
//
//  Created by hahaYJ on 2/27/16.
//  Copyright © 2016 杨捷. All rights reserved.
//

#import "AYBaseTask.h"

@interface AYBaseTask ()

@property (nonatomic, copy) AYRequestCompletedBlock requestCompletedBlock;

@end

@implementation AYBaseTask

/** 后台执行任务 **/
- (void)taskInBackgroundRunning {
    
}

/** 发起get任务执行 **/
- (AYBaseTask * (^)(AYRequestCompletedBlock block))doGetTask {
    return ^(AYRequestCompletedBlock block) {
        block(@"doGetTask");
        _requestCompletedBlock(@"!!!!");
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
    return ^(AYRequestCompletedBlock block) {
        _requestCompletedBlock = block;
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
