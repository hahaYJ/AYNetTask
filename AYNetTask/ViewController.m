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
    AYBaseTask *d = [AYBaseTask new];
    d.configurationRequest(^(id data) {
        NSLog(@"%@", data);
    }).urlMap(^(id data) {
        NSLog(@"%@", data);
    }).doGetTask(^(id data) {
        NSLog(@"%@", data);
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
