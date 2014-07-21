//
//  MenuIconCell.m
//  AppMenu
//
//  Created by Daniel Munoz on 6/15/14.
//  Copyright (c) 2014 Greencraft. All rights reserved.
//

#import "MenuIconCell.h"

@implementation MenuIconCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        CGRect bounds = self.bounds;
        UIView *innerView = [[UIView alloc] initWithFrame:CGRectInset(bounds, CGRectGetWidth(bounds)/4, CGRectGetHeight(bounds)/4)];
        [self.contentView addSubview:innerView];
        [self setBackgroundColor:[UIColor grayColor]];
        self.layer.shouldRasterize = YES;
        self.layer.cornerRadius = self.bounds.size.width/4;
        //Setting up a UILabel to show the cell number
        self.cellNumber = [[UILabel alloc] initWithFrame:bounds];
        self.cellNumber.textColor = [UIColor whiteColor];
        self.cellNumber.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:self.cellNumber];
    }
    
    //this part of the code is only used to make the "delete" effect on the icons
    self.removeButton = [[UIButton alloc] initWithFrame:CGRectMake(frame.size.width/16, frame.size.width/16, frame.size.width/4, frame.size.width/4)];
    
    
    CGRect buttonFrame = self.removeButton.frame;
    UIGraphicsBeginImageContext(buttonFrame.size);
    CGFloat sz = MIN(buttonFrame.size.width, buttonFrame.size.height);
    int margin = 2; //change this
    UIImage *deleteButtonImg; //change this
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:self.removeButton.center radius:sz/2-margin startAngle:0 endAngle:M_PI * 2 clockwise:YES];
        [path moveToPoint:CGPointMake(margin, margin)];
        [path addLineToPoint:CGPointMake(sz-margin, sz-margin)];
        [path moveToPoint:CGPointMake(margin, sz-margin)];
        [path addLineToPoint:CGPointMake(sz-margin, margin)];
        [[UIColor redColor] setFill];
        [[UIColor whiteColor] setStroke];
        [path setLineWidth:3.0];
        [path fill];
        [path stroke];
        deleteButtonImg = UIGraphicsGetImageFromCurrentImageContext();
    
        UIGraphicsEndImageContext();
    [self.removeButton setImage:deleteButtonImg forState:UIControlStateNormal];
    [self.contentView addSubview:self.removeButton];
    
    return self;
}

@end
