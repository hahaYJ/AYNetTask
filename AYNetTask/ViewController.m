//
//  ViewController.m
//  AYNetTask
//
//  Created by hahaYJ on 2/27/16.
//  Copyright © 2016 杨捷. All rights reserved.
//

#import "ViewController.h"
#import "AYBaseTask.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [AYBaseTask new]
    .configurationRequest(^(id data) {
        NSLog(@"%@", data);
    }).urlMap(^(id data) {
        NSLog(@"%@", data);
    }).doGetTask(^(id data) {
        NSLog(@"%@", data);
    });
    
    
    [AYBaseTask new]
    .url(@"http://www.baidu.com")
    .postParams(^(NSDictionary *post) {
        [post setValue:@"1" forKey:@"1"];
        [post setValue:@"2" forKey:@"2"];
    }).doGetTask(^(id data) {
        NSLog(@"%@", data);
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
