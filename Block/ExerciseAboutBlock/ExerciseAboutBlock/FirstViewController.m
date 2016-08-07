//
//  FirstViewController.m
//  ExerciseAboutBlock
//
//  Created by Chung BD on 8/7/16.
//  Copyright © 2016 Chung BD. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

#pragma mark - life cycle of view
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

#pragma mark - IBAction
- (IBAction)touchUpInside_btnNext:(id)sender {
    [self goToSecondViewControllerWithCompletion:^(NSString *output) {
        //Do right thing at here
    }];
}

#pragma mark - Public methods


#pragma mark - Private methods
- (void) goToSecondViewControllerWithCompletion:(CompletionWhenFinishEnterInput)completion {
    SecondViewController *second = [SecondViewController newViewController];
    [self presentViewController:second animated:YES completion:nil];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
