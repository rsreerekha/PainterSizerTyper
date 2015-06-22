//
//  ColorDetailViewController.m
//  PainterSizerTyper
//
//  Created by testadmin on 6/4/15.
//  Copyright (c) 2015 testadmin. All rights reserved.
//

#import "ColorDetailViewController.h"
#import "PaintTableViewCell.h"



@interface ColorDetailViewController ()

@end

@implementation ColorDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)selctedpaintonThebackground:(id)sender
{
    if ([self.colorPassed  isEqualToString :@"Red"])
    {
        
    self.view.backgroundColor = [UIColor redColor];
    }
    else if ([self.colorPassed isEqualToString:@"Green"])
    {
        self.view.backgroundColor = [UIColor greenColor];
    }
        
    else if ([self.colorPassed isEqualToString:@"Yellow"])
    {
        self.view.backgroundColor = [UIColor yellowColor];
    }

    else if ([self.colorPassed isEqualToString:@"Orange"])
    {
        self.view.backgroundColor = [UIColor orangeColor];
        
    }
    else if ([self.colorPassed isEqualToString:@"Blue"])
    {
        self.view.backgroundColor = [UIColor blueColor];
    }
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
