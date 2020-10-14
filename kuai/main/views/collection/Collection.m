//
//  Collection.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Collection.h"
@interface Collection ()<UIScrollViewDelegate>
@property(nonatomic,copy)void(^block)(NSInteger index);

@end
@implementation Collection
- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
    
    self = [super initWithFrame:frame collectionViewLayout:layout];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.dataSource = self;
        self.delegate = self;
        
        
    }
    return self;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    if (fabs(scrollView.contentSize.height - scrollView.frame.size.height - scrollView.contentOffset.y) < scrollView.contentSize.height * 0.2) {
        
    }
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.array.count;
    
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    id model = self.array[indexPath.row];
    NSString *identifier = [model performSelector:@selector(identifier)];
    [self registerClass:NSClassFromString(identifier) forCellWithReuseIdentifier:identifier];
    if ([[NSBundle mainBundle] pathForResource:identifier ofType:@"nib"]) {
        [self registerNib:[UINib nibWithNibName:identifier bundle:nil] forCellWithReuseIdentifier:identifier];
    }
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    [cell performSelector:@selector(loadModel:) withObject:model];
    return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    id model = self.array[indexPath.row];
    id obj = [model performSelector:@selector(size)];
    CGSize size = [obj CGSizeValue];
    CGFloat w = size.width;
    if (w >= 1) {
        w = collectionView.bounds.size.width;
    }else{
        w = (int)(collectionView.bounds.size.width * w);
    }
    
    return CGSizeMake(w, size.height);
}
- (void)tableIndex:(void(^)(NSInteger index))block{
    
    self.block = block;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    self.block(indexPath.row);

}






@end
