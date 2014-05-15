//
//  UIView+Controller.h
//  mainBoardApplication
//
//  Created by Ingo Böhme on 15.05.14.
//  Copyright (c) 2014 . All rights reserved.
// Code from http://stackoverflow.com/questions/1340434/get-to-uiviewcontroller-from-uiview-on-iphone


#import <UIKit/UIKit.h>

@interface UIView (Controller)
- (UIViewController *)viewController;
- (UINavigationController *)navigationController;



@end
