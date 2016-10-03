//
//  ViewController.m
//  Flynn-Rider
//
//  Created by Bala on 03/10/16.
//  Copyright © 2016 Bala. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Sample";
    
    // Initialize recipe image array
    ItemPhotoArray = [NSArray arrayWithObjects:@"Mixer_Truck.png", @"painting.png", @"Smart-icon.png", @"cement_construction.png", @"bricks.jpg", @"Spa.png", @"Wellness.png", nil];
    itemArray = [NSArray arrayWithObjects:@"Truk",@"Painting",@"Setup",@"Workers",@"Bricks",@"Intirior",@"plembers", nil];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return ItemPhotoArray.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    cell.CollectionImageView= (UIImageView *)[cell viewWithTag:100];
    cell.CollectionImageView.image = [UIImage imageNamed:[ItemPhotoArray objectAtIndex:indexPath.row]];
    
    cell.Collectionlabel.text = [itemArray objectAtIndex:indexPath.row];
    return cell;
}



@end
