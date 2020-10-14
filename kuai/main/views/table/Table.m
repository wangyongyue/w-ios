//
//  Table.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Table.h"
#import "TestCell.h"
@interface Table ()
@property(nonatomic,copy)void(^block)(NSInteger index);

@end

@implementation Table

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.delegate = self;
        self.dataSource = self;
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.estimatedRowHeight = 20;
        self.rowHeight = UITableViewAutomaticDimension;
        
    }
    return self;
}
- (NSInteger)numberOfSections{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.array.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    id model = self.array[indexPath.row];
    NSString *identifier = [model performSelector:@selector(identifier)];
    [self registerClass:NSClassFromString(identifier) forCellReuseIdentifier:identifier];
    if ([[NSBundle mainBundle] pathForResource:identifier ofType:@"nib"]) {
        [self registerNib:[UINib nibWithNibName:identifier bundle:nil] forCellReuseIdentifier:identifier];
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    [cell performSelector:@selector(loadModel:) withObject:model];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;

    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    id model = self.array[indexPath.row];
    id obj = [model performSelector:@selector(size)];
    return [obj CGSizeValue].height;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    self.block(indexPath.row);

}

- (void)tableIndex:(void(^)(NSInteger index))block{
    
    self.block = block;
}


@end
