//
//  ViewController.m
//  Michael Sayman
//
//  Created by Michael Sayman on 4/10/14.
//  Copyright (c)  Michael Sayman. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h" // import pages
#import "TwoViewController.h" // import pages
#import "ThreeViewController.h" // import pages
#import "FourViewController.h" // import pages
#import "FiveViewController.h" // import pages


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIScrollView *sv = [[UIScrollView alloc] initWithFrame:self.view.bounds]; // make a sv with the bounds of the screen to put the pages on it
    sv.pagingEnabled = YES;
    sv.contentSize = CGSizeMake(320*5, self.view.bounds.size.height); // make it's content size bigger than the screen
    sv.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:sv]; // add it as a subview of the self's view.
    
    // add each as a container
    
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    
    for (int i = 0; i < 5; i++) {
        if (i == 0) {
            OneViewController *pages = [[OneViewController alloc] init]; //make a new viewcontroller object thing
            pages.view.frame = CGRectMake(320*i, 0, 320, self.view.bounds.size.height); // make the frame the screen
            [sv addSubview:pages.view]; // add it's child view as a subview
            pages.view.clipsToBounds = YES; // make it clipped
            [self addChildViewController:pages]; // add it as a child of the main view
            [pages didMoveToParentViewController:self]; // move it the parent
        }
        if (i == 1) {
            TwoViewController *pages = [[TwoViewController alloc] init]; //make a new viewcontroller object thing
            pages.view.frame = CGRectMake(320*i, 0, 320, self.view.bounds.size.height); // make the frame the screen
            [sv addSubview:pages.view]; // add it's child view as a subview
            pages.view.clipsToBounds = YES; // make it clipped
            [self addChildViewController:pages]; // add it as a child of the main view
            [pages didMoveToParentViewController:self]; // move it the parent
        }
        if (i == 2) {
            ThreeViewController *pages = [[ThreeViewController alloc] init]; //make a new viewcontroller object thing
            pages.view.frame = CGRectMake(320*i, 0, 320, self.view.bounds.size.height); // make the frame the screen
            [sv addSubview:pages.view]; // add it's child view as a subview
            pages.view.clipsToBounds = YES; // make it clipped
            [self addChildViewController:pages]; // add it as a child of the main view
            [pages didMoveToParentViewController:self]; // move it the parent
        }
        if (i == 3) {
            FourViewController *pages = [[FourViewController alloc] init]; //make a new viewcontroller object thing
            pages.view.frame = CGRectMake(320*i, 0, 320, self.view.bounds.size.height); // make the frame the screen
            [sv addSubview:pages.view]; // add it's child view as a subview
            pages.view.clipsToBounds = YES; // make it clipped
            [self addChildViewController:pages]; // add it as a child of the main view
            [pages didMoveToParentViewController:self]; // move it the parent
        }
        if (i == 4) {
            FiveViewController *pages = [[FiveViewController alloc] init]; //make a new viewcontroller object thing
            pages.view.frame = CGRectMake(320*i, 0, 320, self.view.bounds.size.height); // make the frame the screen
            [sv addSubview:pages.view]; // add it's child view as a subview
            pages.view.clipsToBounds = YES; // make it clipped
            [self addChildViewController:pages]; // add it as a child of the main view
            [pages didMoveToParentViewController:self]; // move it the parent
        }
        
        
       
    }
   
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
