//
//  FirstViewController.m
//  PainterSizerTyper
//
//  Created by testadmin on 6/4/15.
//  Copyright (c) 2015 testadmin. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"




@interface FirstViewController ()

@property NSUInteger size;

-(void)displayingAButton:(NSUInteger)size;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor purpleColor];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)additionButton:(id)sender {
    
   self.size++;
    NSLog(@"%lu",self.size);
    
    
    
    self.tabBarItem.badgeValue = [NSString stringWithFormat:@"%lu",self.size];
    
    
    [self displayingAButton :_size];
    
    
}

- (IBAction)subtractionButton:(id)sender {
    
    self.size--;
    
    self.tabBarItem.badgeValue = [NSString stringWithFormat:@"%lu",self.size];

    
    NSLog(@"%lu",self.size);
    
    [self displayingAButton :_size];
    
}

-(void)displayingAButton:(NSUInteger)size;
{
    
    
    if (self.size == 0)
    {
         self.subtract.enabled = NO;
        
    }
        
    else if (self.size == 20)
    {
        self.addition.enabled = NO;
       
        
    }
    
    else if (self.size < 20)
    {
        self.addition.enabled = YES;
        self.subtract.enabled = YES;

        
    }


AppDelegate *delegate = ((AppDelegate *)[UIApplication sharedApplication].delegate);

delegate.selectedSize = self.size ;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
