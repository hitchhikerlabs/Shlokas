//
//  ShloakViewController.m
//  Shlokas
//
//  Created by Neha Mittal on 5/28/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ShloakViewController.h"


@implementation ShloakViewController
@synthesize sLabel, hLabel, lLabel, oLabel, kLabel, aLabel, dateLabel;
/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	CGRect sFrame = sLabel.frame;
	sFrame.origin.x = 50;
	sFrame.origin.y = 70;
	
	CGRect hFrame = hLabel.frame;
	hFrame.origin.x = 250;
	hFrame.origin.y = 70;
	
	CGRect lFrame = lLabel.frame;
	lFrame.origin.x = 50;
	lFrame.origin.y = 140;
	
	CGRect oFrame = oLabel.frame;
	oFrame.origin.x = 250;
	oFrame.origin.y = 140;
	
	CGRect kFrame = kLabel.frame;
	kFrame.origin.x = 50;
	kFrame.origin.y = 210;
	
	CGRect aFrame = aLabel.frame;
	aFrame.origin.x = 250;
	aFrame.origin.y = 210;
	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
	[UIView setAnimationDuration:2.0f];
	[sLabel setFrame:sFrame];
	[hLabel setFrame:hFrame];
	[lLabel setFrame:lFrame];
	[oLabel setFrame:oFrame];
	[kLabel setFrame:kFrame];
	[aLabel setFrame:aFrame];
	[UIView commitAnimations];
	NSDateFormatter *dateFormatter = [[[NSDateFormatter alloc]
									   
									   initWithDateFormat:@"%A, %B %d %Y" allowNaturalLanguage:NO] autorelease];
	
	NSDate *date = [NSDate date];
	
	NSString *formattedDateString = [dateFormatter stringFromDate:date];
	dateLabel.text = formattedDateString;
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

-(IBAction) makeItFav {
}

-(IBAction) emailSomeone {
}

- (void)dealloc {
    [super dealloc];
	[sLabel release];
	[hLabel release];
	[lLabel release];
	[oLabel release];
	[kLabel release];
	[aLabel release];
	[dateLabel release];
}


@end
