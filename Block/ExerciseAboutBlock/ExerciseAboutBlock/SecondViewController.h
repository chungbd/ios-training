//
//  SecondViewController.h
//  ExerciseAboutBlock
//
//  Created by Chung BD on 8/7/16.
//  Copyright © 2016 Chung BD. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^CompletionWhenFinishEnterInput)(NSString *output);

@interface SecondViewController : UIViewController
+ (instancetype) newViewController;
@end
