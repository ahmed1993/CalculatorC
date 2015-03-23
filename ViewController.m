//
//  ViewController.m
//  Calculator
//
//  Created by Ahmed Syed on 9/15/14.
//  Copyright (c) 2014 Ahmed Syed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)Number1:(id)sender{
    selectNumber = selectNumber * 10;
    selectNumber = selectNumber + 1;
    Screen.text = [NSString stringWithFormat:@"%i", selectNumber];
    
}
-(IBAction)Number2:(id)sender{
    selectNumber = selectNumber * 10;
    selectNumber = selectNumber + 2;
    Screen.text = [NSString stringWithFormat:@"%i", selectNumber];
   
}
-(IBAction)Number3:(id)sender{
    selectNumber = selectNumber * 10;
    selectNumber = selectNumber + 3;
    Screen.text = [NSString stringWithFormat:@"%i", selectNumber];
    
}
-(IBAction)Number4:(id)sender{
    selectNumber = selectNumber * 10;
    selectNumber = selectNumber + 4;
    Screen.text = [NSString stringWithFormat:@"%i", selectNumber];
    
}
-(IBAction)Number5:(id)sender{
    selectNumber = selectNumber * 10;
    selectNumber = selectNumber + 5;
    Screen.text = [NSString stringWithFormat:@"%i", selectNumber];
    
}
-(IBAction)Number6:(id)sender{
    selectNumber = selectNumber * 10;
    selectNumber = selectNumber + 6;
    Screen.text = [NSString stringWithFormat:@"%i", selectNumber];
    
}
-(IBAction)Number7:(id)sender{
    selectNumber = selectNumber * 10;
    selectNumber = selectNumber + 7;
    Screen.text = [NSString stringWithFormat:@"%i", selectNumber];
    
}
-(IBAction)Number8:(id)sender{
    selectNumber = selectNumber * 10;
    selectNumber = selectNumber + 8;
    Screen.text = [NSString stringWithFormat:@"%i", selectNumber];
    
}
-(IBAction)Number9:(id)sender{
    selectNumber = selectNumber * 10;
    selectNumber = selectNumber + 9;
    Screen.text = [NSString stringWithFormat:@"%i", selectNumber];
    
}
-(IBAction)Number0:(id)sender{
    selectNumber = selectNumber * 10;
    selectNumber = selectNumber + 0;
    Screen.text = [NSString stringWithFormat:@"%i", selectNumber];
    
}
-(IBAction)Times:(id)sender{
    if(runningTotal == 0){
        runningTotal = selectNumber;
    }
    else{
        switch (method) {
            case 1:
                runningTotal = runningTotal * selectNumber;
                break;
            case 2:
                runningTotal = runningTotal / selectNumber;
                break;
            case 3:
                runningTotal = runningTotal - selectNumber;
                break;
            case 4:
                runningTotal = runningTotal + selectNumber;
                break;
                
            default:
                break;
        }
    }
    method = 1;
    
    //to allow the user to enter another number
    selectNumber = 0;
    
    
    
}
-(IBAction)Divide:(id)sender{
    if(runningTotal == 0){
        runningTotal = selectNumber;
    }
    else{
        switch (method) {
            case 1:
                runningTotal = runningTotal * selectNumber;
                break;
            case 2:
                runningTotal = runningTotal / selectNumber;
                break;
            case 3:
                runningTotal = runningTotal - selectNumber;
                break;
            case 4:
                runningTotal = runningTotal + selectNumber;
                break;
                
            default:
                break;
        }
    }

    method = 2;
    selectNumber = 0;
    
}
-(IBAction)Subtract:(id)sender{
    if(runningTotal == 0){
        runningTotal = selectNumber;
    }
    else{
        switch (method) {
            case 1:
                runningTotal = runningTotal * selectNumber;
                break;
            case 2:
                runningTotal = runningTotal / selectNumber;
                break;
            case 3:
                runningTotal = runningTotal - selectNumber;
                break;
            case 4:
                runningTotal = runningTotal + selectNumber;
                break;
                
            default:
                break;
        }
    }

    method = 3;
    selectNumber = 0;
    
}
-(IBAction)Plus:(id)sender{
    if(runningTotal == 0){
        runningTotal = selectNumber;
    }
    else{
        switch (method) {
            case 1:
                runningTotal = runningTotal * selectNumber;
                break;
            case 2:
                runningTotal = runningTotal / selectNumber;
                break;
            case 3:
                runningTotal = runningTotal - selectNumber;
                break;
            case 4:
                runningTotal = runningTotal + selectNumber;
                break;
                
            default:
                break;
        }
    }

    method = 4;
    selectNumber = 0;
    
}
-(IBAction)equals:(id)sender{
    if(runningTotal == 0){
        runningTotal = selectNumber;
    }
    else{
        switch (method) {
            case 1:
                runningTotal = runningTotal * selectNumber;
                break;
            case 2:
                runningTotal = runningTotal / selectNumber;
                break;
            case 3:
                runningTotal = runningTotal - selectNumber;
                break;
            case 4:
                runningTotal = runningTotal + selectNumber;
                break;
                
            default:
                break;
        }
    }
    method = 0;
    selectNumber = 0;
    Screen.text = [NSString stringWithFormat:@"%.3f", runningTotal];

    
}
-(IBAction)allClear:(id)sender{
    method = 0;
    runningTotal = 0;
    selectNumber = 0;
    Screen.text = [NSString stringWithFormat:@"0"];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
