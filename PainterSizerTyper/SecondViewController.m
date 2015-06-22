//
//  SecondViewController.m
//  PainterSizerTyper
//
//  Created by testadmin on 6/4/15.
//  Copyright (c) 2015 testadmin. All rights reserved.
//

#import "SecondViewController.h"
#import "PainteTableTableViewController.h"
#import "AppDelegate.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.theTextField.delegate = self;
   }


- (IBAction)typing:(id)sender {
    
   // self.label.text = self.theTextField.text;
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField

{
 return [textField resignFirstResponder];
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    
    [self updateTextlabelWithText:newString];
    
    
    AppDelegate *delegate = ((AppDelegate *)[UIApplication sharedApplication] .delegate);
   
    NSString *valueInTab = delegate.selectedColor;
    
    NSUInteger valueOfSize = delegate.selectedSize;
    
    self.theTextField.font = [UIFont systemFontOfSize:valueOfSize];
    NSLog(@" %@",self.theTextField.font);
    
    self.label.font = [UIFont systemFontOfSize:valueOfSize];
    
    
    //if user chooses typer first then default value and color of text will be:
    if (valueOfSize ==0) {
        self.theTextField.font= [UIFont systemFontOfSize:25.0];
        self.theTextField.textColor = [UIColor blackColor];
        
        
        self.label.font= [UIFont systemFontOfSize:25.0];
        self.label.textColor = [UIColor blackColor];
    }
    
    
    
    NSLog(@"%@",valueInTab);
    
    if ([valueInTab isEqualToString:@"Red"]) {
        
        self.theTextField.textColor = [UIColor redColor];
        self.label.textColor = [UIColor redColor];
    }
    else if([valueInTab isEqualToString:@"Blue"]){
        
        self.theTextField.textColor = [UIColor blueColor];
        
        self.label.textColor = [UIColor blueColor];
        
    }
    else if ([valueInTab isEqualToString:@"Yellow"]){
        
        self.theTextField.textColor = [UIColor yellowColor];
        self.label.textColor = [UIColor yellowColor];
        
    }
    else if ([valueInTab isEqualToString:@"Green"]){
        
        self.theTextField.textColor = [UIColor greenColor];
        self.label.textColor = [UIColor greenColor];
        
    }
    else if ([valueInTab isEqualToString:@"Orange"] ){
        
        self.theTextField.textColor = [UIColor orangeColor];
        self.label.textColor = [UIColor orangeColor];
    }
    
   // self.theTextField.textColor = [UIColor redColor];
    
    return YES;
}

/*- (UIFont *)fontWithSize:(CGFloat)valueOfSize{
    
    
    //return ;
    
}*/


-(void)updateTextlabelWithText: ( NSString*)string{
    
    
    [self.label setText:string];
    
    
}


- (IBAction)clearTheTextfield:(id)sender {
    
   
    
    self.theTextField.text= @"";
    self.label.text = @"";
    
    }

//- (BOOL)textFieldShouldClear:(UITextField *)textField{
   // return YES;
//}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
