//
//  UIView+Controller.m
//  mainBoardApplication
//
//  Created by Ingo Böhme on 15.05.14.
//  Copyright (c) 2014 . All rights reserved.
//

#import "UIView+Controller.h"

@implementation UIView (Controller)
- (UIViewController *)viewController {
	return (UIViewController *)[self traverseResponderChainForUIViewController];
    
	//
	//	if ([self.nextResponder isKindOfClass:UIViewController.class])
	//		return (UIViewController *)self.nextResponder;
	//	else
	//		return nil;
}

- (UINavigationController *)navigationController {
	UIViewController *viewController =     self.viewController;
	if (viewController)
		return viewController.navigationController;
	else
		return nil;
}

- (id)traverseResponderChainForUIViewController {
	id nextResponder = [self nextResponder];
	if ([nextResponder isKindOfClass:[UIViewController class]]) {
		return nextResponder;
	}
	else if ([nextResponder isKindOfClass:[UIView class]]) {
		return [nextResponder traverseResponderChainForUIViewController];
	}
	else {
		return nil;
	}
}

@end
