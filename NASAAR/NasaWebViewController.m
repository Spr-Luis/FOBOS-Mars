//
//  NasaWebViewController.m
//  Unity-iPhone
//
//  Created by Lu1s_Armandho0 on 13/04/14.
//
//

#import "NasaWebViewController.h"

@interface NasaWebViewController ()

@end

@implementation NasaWebViewController

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
	NSString *urlAddress = @"http://www.nasa.gov/mission_pages/msl/index.html#.U0rDIeZ5Mbo";
	//Create a URL object.
	NSURL *url = [NSURL URLWithString:urlAddress];
	
	//URL Requst Object
	NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
	
	//Load the request in the UIWebView.
	[self.explorador loadRequest:requestObj];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_explorador release];
    [super dealloc];
}
@end
