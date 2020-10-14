//
//  photo_viewer_item_cell.m
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//


#import "photo_viewer_item_cell.h"
#import "Header.h"
@interface photo_viewer_item_cell ()
@property(nonatomic,strong)UIImageView *headerView;



@end

@implementation photo_viewer_item_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    
        
        self.headerView = [[UIImageView alloc]init];
        [self.contentView addSubview:self.headerView];
        self.headerView.backgroundColor = [UIColor blackColor];
        self.headerView.contentMode = UIViewContentModeCenter;
        
        [self.headerView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(0);
            make.bottom.offset(0);
            make.left.offset(0);
            make.right.offset(0);

        }];
        
       
        self.headerView.image = [UIImage imageNamed:@"home_shou"];

        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    photo_viewer_item *m = (photo_viewer_item *)model;
    
    NSString *url = [NSString stringWithFormat:@"%@%@",ImgeUrl,m.url];
    url = [url stringByReplacingOccurrencesOfString:@"\\"withString:@"/"];
    url = [url stringByReplacingOccurrencesOfString:@"/"withString:@"/"];
    [self.headerView sd_setImageWithURL:[NSURL URLWithString:url]];
    self.headerView.contentMode = UIViewContentModeScaleToFill;

}
@end
@implementation photo_viewer_item
- (NSString *)identifier{ return NSStringFromClass([photo_viewer_item_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, ScreenHeight)];
}

@end
