//
//  ViewController.m
//  p75
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UISegmentedControl *segment;
}

@end

@implementation ViewController
- (IBAction)segmentedC1:(id)sender {
    UISegmentedControl *control = (UISegmentedControl *)sender;
    NSString * selectedStr = [control titleForSegmentAtIndex:control.selectedSegmentIndex];
    NSLog(@"Index: %d - Title: %@", control.selectedSegmentIndex,selectedStr);
}
- (void) segball:(UISegmentedControl *)sender{
    switch (sender.selectedSegmentIndex) {
        case 0:
            NSLog(@"Baseball");
        break;
            
        case 1:
            NSLog(@"basketball");
            break;
            
        case 2:
            NSLog(@"Football");
            break;
            
        case 3:
            NSLog(@"volleyball");
            break;
            
        default:
            break;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    UIImage *base = [UIImage imageNamed:@"baseball.png"];
    UIImage *foot = [UIImage imageNamed:@"football.png"];
    UIImage *basket= [UIImage imageNamed:@"basket.png"];
    UIImage *volley= [UIImage imageNamed:@"volley.png"];
    NSArray *items = [NSArray arrayWithObjects:base, foot, basket, volley,nil];
    
    segment = [[UISegmentedControl alloc]initWithItems:items];
    segment.frame = CGRectMake(10, 100, 300, 40);
    [self.view addSubview:segment];
    
    segment.selectedSegmentIndex=2;
    
    [segment addTarget:self action:@selector(segball:) forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
