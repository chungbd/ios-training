//
//  SecondViewController.m
//  ExerciseAboutBlock
//
//  Created by Chung BD on 8/7/16.
//  Copyright © 2016 Chung BD. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController



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
- (IBAction)touchUpInside_btnFinish:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Public methods
+ (instancetype) newViewController {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SecondViewController *vc = [storyBoard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    return vc;
}

#pragma mark - Private methods



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
