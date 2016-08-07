//
//  ViewController.m
//  DemoBlock
//
//  Created by Chung BD on 8/7/16.
//  Copyright © 2016 Chung BD. All rights reserved.
//

#import "ViewController.h"

typedef void (^DemoCompletion)(NSString *message, id response);

@interface ViewController () <UITableViewDelegate>

@property (strong, nonatomic) int (^addingOperator)(int, int);
@property (strong, nonatomic) DemoCompletion democompletion;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 1. first declaration
//    int (^addingOperator)(int, int);
//    addingOperator = ^(int a, int b) {
//        return a + b;
//    };
    
    // 2. second declaration: as a class variable
    self.addingOperator = ^(int a, int b) {
        return a + b;
    };
    
    // 3. using a block
    NSLog(@"Result %i",self.addingOperator(1,2));
    
    int factor = 5;
    int (^newResult)(void) = ^(void){
        return factor * 10;
    };
    
    NSLog(@"%d", newResult());
    
    
    // 4. when do we using the __block syntax
    __block int someValue = 10;
    
    int (^myOperation)(void) = ^(void){
        someValue += 5;
        
        return someValue + 10;
    };
    
    NSLog(@"%d", myOperation());
    
    // 5. completion handlers
    [self doSomethingWithCompletionHandle:nil];
    
    [self doSomethingWithCompletionHandle:^(NSString *status,int statusCode) {
        NSLog(@"Print status: %@, status code: %i",status,statusCode);
    }];
    
    [self doSomethingWithDemoCompletion:^(NSString *message, id response) {
        NSLog(@"Result for demo completion: %@",message);
    }];
    
}

- (void) completionMethod {
    
}

- (void) doSomethingWithCompletionHandle:(void(^)(NSString *status,int statusCode))completionHandler {
    // do something at here
    if (completionHandler) {
        completionHandler(@"Done",0);
    }
}

- (void) doSomethingWithDemoCompletion:(DemoCompletion)completion {
    
    if (completion) {
        completion(@"Chung",nil);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
