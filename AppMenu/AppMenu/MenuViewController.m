//
//  MenuViewController.m
//  AppMenu
//
//  Created by Daniel Munoz on 6/15/14.
//  Copyright (c) 2014 Greencraft. All rights reserved.
//

#import "MenuViewController.h"
#import "MenuLayout.h"
#import "MenuIconCell.h"

@interface MenuViewController ()

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation MenuViewController

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
    
}

- (void)viewDidLayoutSubviews{
    //This is called here because we are starting the device on landscape mode and if this would be called on viewDidLoad the bounds wouldn't be correct yet.
    MenuLayout *layout = [[MenuLayout alloc] init];
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    [self.collectionView registerClass:[MenuIconCell class] forCellWithReuseIdentifier:@"iconCell"];
    [self.collectionView setBackgroundColor:[UIColor whiteColor]];
    [self.collectionView setPagingEnabled:YES];
    [self.collectionView setDelegate:self];
    [self.collectionView setDataSource:self];
    [self.view addSubview:self.collectionView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionView Data Source

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 50;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MenuIconCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"iconCell" forIndexPath:indexPath];
    cell.cellNumber.text = [NSString stringWithFormat:@"%d", indexPath.row];
    return cell;
}

#pragma mark - UICollectionView Delegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"icon %d tapped", indexPath.row);
}


@end
