//
//  FlowLayout.m
//  kuai
//
//  Created by apple on 2020/6/15.
//  Copyright © 2020 sui. All rights reserved.
//

#import "FlowLayout.h"
@interface FlowLayout ()
@property(nonatomic,strong)NSMutableArray *attributes;

@end
@implementation FlowLayout

- (NSMutableArray *)attributes{
    if (_attributes == nil) {
        
        _attributes = [NSMutableArray array];
    }
    return _attributes;
}
- (instancetype)initWithScrollDirection:(UICollectionViewScrollDirection)scrollDirection
{
    self = [super init];
    if (self) {
        
        self.itemSize = CGSizeZero;
        self.minimumLineSpacing = 0;
        self.minimumInteritemSpacing = 0;
        self.scrollDirection = scrollDirection;
        
    }
    return self;
}
- (void)prepareLayout{
    [super prepareLayout];
    CGRect rect = self.collectionView.frame;
    NSInteger count = [self.collectionView numberOfItemsInSection:0];
    
    
    for (int i = 0; i < count; i ++) {
        
        UICollectionViewLayoutAttributes *attrs = [self layoutAttributesForItemAtIndexPath:[NSIndexPath indexPathForRow:i inSection:0]];
        
        CGFloat x;
        CGFloat y;
        CGFloat w;
        CGFloat h;
        CGRect frame = attrs.frame;
        id obj = [self.collectionView performSelector:@selector(array)][i];
        CGSize nextSize = [[obj performSelector:@selector(size)] CGSizeValue];
        
        nextSize = [self fixSlitWith:nextSize];
        
        if (self.scrollDirection == UICollectionViewScrollDirectionHorizontal) {
            
            if (i == 0) {
                x = frame.origin.x;
                y = frame.origin.y;
                w = nextSize.width;
                h = nextSize.height;
                frame.size = nextSize;
                attrs.frame = frame;
                
            }else {
                frame.origin.x = x + w;
                frame.origin.y = 0;
                
                frame.size = nextSize;
                attrs.frame = frame;
                
                x = frame.origin.x;
                y = frame.origin.y;
                w = frame.size.width;
                h = frame.size.height;
                
                
            }
        }else{
            

            if (i == 0) {
                x = frame.origin.x;
                y = frame.origin.y;
                w = nextSize.width;
                h = nextSize.height;
                frame.size = nextSize;
                attrs.frame = frame;
                
            }else {
                if (x + w >= rect.size.width ) {
                    frame.origin.x = 0;
                    frame.origin.y = y + h;
                }else if (x + w + nextSize.width >= rect.size.width) {
                    frame.origin.x = 0;
                    frame.origin.y = y + h;
                    
                }else {
                    frame.origin.x = x + nextSize.width;
                    frame.origin.y = y;
                    
                }
                
                frame.size = nextSize;
                attrs.frame = frame;
                
                x = frame.origin.x;
                y = frame.origin.y;
                w = frame.size.width;
                h = frame.size.height;
                
                
            }
        }
        
        
        
        [self.attributes addObject:attrs];
    }
    
    
}
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds{
    
    
    return [super shouldInvalidateLayoutForBoundsChange:newBounds];
}

- (NSArray<__kindof UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    
    return self.attributes;
}
- (CGSize)fixSlitWith:(CGSize)size{
    CGRect rect = self.collectionView.frame;
    CGFloat w = size.width;
    if (w >= 1) {
        w = rect.size.width;
    }else{
        w = (int)(rect.size.width * w);
    }
    CGFloat h = [[NSString stringWithFormat:@"%d",(int)size.height] floatValue];

    return CGSizeMake(w, h);
}

@end
