//
//  SecondViewController.h
//  PainterSizerTyper
//
//  Created by testadmin on 6/4/15.
//  Copyright (c) 2015 testadmin. All rights reserved.
//
//@class PainteTableTableViewController;
#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *theTextField;
//@property(weak,nonatomic) PainteTableTableViewController *differentColors;
@end

