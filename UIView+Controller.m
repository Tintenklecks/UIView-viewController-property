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
	if ([self.nextResponder isKindOfClass:UIViewController.class])
		return (UIViewController *)self.nextResponder;
	else
		return nil;
}

@end
