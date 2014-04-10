//
//  1ViewController.m
//  Michael Sayman
//
//  Created by Michael Sayman on 4/10/14.
//  Copyright (c)  Michael Sayman. All rights reserved.
//


#import "FiveViewController.h"

@interface FiveViewController ()

@end

@implementation FiveViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
   bg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 320)]; // make an imageview on the scroll
    bg.contentMode = UIViewContentModeScaleAspectFill; // because it's content mode is this, we don't need to worry about height
    bg.image = [UIImage imageNamed:@"nap_between_conference_flights.jpg"]; // sequential images
    [self.view addSubview:bg]; // add it to the main
    
    UIScrollView *sv = [[UIScrollView alloc] initWithFrame:self.view.bounds]; // make a sv with the bounds of the screen
    sv.contentSize = CGSizeMake(320, (self.view.bounds.size.height*2)-300); // make it's content size bigger than the screen // adjust the variable to make sure there's no whitespace at the botton
    sv.backgroundColor = [UIColor clearColor]; // make sure it's clear
    sv.delegate = self;
    [self.view addSubview:sv]; // add it as a subview of the self's view.
    
  
    
    UIImageView *imv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 300, 320, self.view.bounds.size.height)]; // make an imageview on the scroll
    imv.contentMode = UIViewContentModeScaleAspectFill; // because it's content mode is this, we don't need to worry about height
    imv.image = [UIImage imageNamed:@"m5@2x.png"]; // sequential images
    [sv addSubview:imv]; // add it to the sv
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {

    if (scrollView.contentOffset.y > 0) {
        bg.transform = CGAffineTransformMakeTranslation(0, -scrollView.contentOffset.y/2);
         // basically we want to concat transform the background image as we scroll with parralax. To do this we want to use the scroll.content float to move the image based on the scroll and scale it.
    }
    if (scrollView.contentOffset.y < 0) {
         bg.transform = CGAffineTransformMakeScale(1-scrollView.contentOffset.y/self.view.bounds.size.height,  1-scrollView.contentOffset.y/self.view.bounds.size.height) ; // basically we want to concat transform the background image as we scroll with parralax. To do this we want to use the scroll.content float to move the image based on the scroll and scale it.
    }
   
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
