#import <UIKit/UIKit.h>

#define customTitle @"Flex To Theos"
#define customSubTitle @"Made using Flex To Theos"

%config(generator=internal)

__attribute__ ((constructor)) static void init() {
	dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1.1 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
		if (![[NSUserDefaults standardUserDefaults] objectForKey:@"WLvCjv"]) {
			[[NSUserDefaults standardUserDefaults] setObject:@"Roll, roll, roll your joint; twist it at the end! Light it up, take a puff and pass it to a friend!" forKey:@"WLvCjv"];
			
			UIAlertController *alert = [UIAlertController alertControllerWithTitle:customTitle message:customSubTitle preferredStyle:UIAlertControllerStyleAlert];
			UIAlertAction *action;

			action = [UIAlertAction actionWithTitle:@"Learn How To Code" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
				NSURL *link = [NSURL URLWithString:@"https://t.me/iOS-Randy420"];
				[[UIApplication sharedApplication] openURL:link options:@{} completionHandler:nil];
			}];
			[alert addAction:action];
			action = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
				dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
					[alert dismissViewControllerAnimated:YES completion:^{
						
					}];
				});
			}];
			[alert addAction:action];
			[[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:true completion:nil];
			dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
				[alert dismissViewControllerAnimated:YES completion:^{
				//Dismissed
				}];
			});
		}
	});
}