//
//  MenuLayout.m
//  AppMenu
//
//  Created by Daniel Munoz on 6/15/14.
//  Copyright (c) 2014 Greencraft. All rights reserved.
//

#import "MenuLayout.h"

@implementation MenuLayout

- (id)init
{
    if (self = [super init])
    {
        self.itemSize = CGSizeMake(100, 100);
        self.minimumInteritemSpacing = 50;
        self.minimumLineSpacing = 100;
        self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        self.sectionInset = UIEdgeInsetsMake(50, 80, 100, 80);
    }
    return self;
}

@end
