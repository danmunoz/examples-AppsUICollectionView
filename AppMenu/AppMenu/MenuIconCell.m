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
        UIView *innerView = [[UIView alloc] initWithFrame:CGRectInset(self.bounds, self.bounds.size.width/8, self.bounds.size.height/8)];
        [self.contentView addSubview:innerView];
        [self setBackgroundColor:[UIColor blackColor]];
        self.layer.shouldRasterize = YES;
        self.layer.cornerRadius = self.bounds.size.width/4;
    }
    return self;
}

@end
