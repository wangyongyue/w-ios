//
//  Video.m
//  kuai
//
//  Created by apple on 2020/6/12.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Video.h"
#import <AVFoundation/AVFoundation.h>
#import "FrameModel.h"
#import "Header.h"
@interface Video ()
@property (nonatomic,strong) AVPlayer *player;//播放器对象
@property (nonatomic,strong) AVPlayerItem *playerItem; // 播放属性


@property (nonatomic,assign) CGFloat progress;//进度
@property (nonatomic,assign) CGFloat oldProgress;//已经播放的进度

@property (nonatomic,strong) UIButton *gesButton; // 播放属性
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, assign) float timeNumber;
@property (nonatomic, assign) NSInteger index;
@property (nonatomic,strong) UIButton *playButton;



@end

@implementation Video
- (NSMutableArray *)array{
    if (_array == nil) {
        _array = [NSMutableArray array];
    }
    return _array;
}
- (void)show{
    
    // 创建AVPlayer
    NSString *sourcePath=[NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES).firstObject stringByAppendingFormat:@"/input.mov"];
    sourcePath = self.url;
    if (self.array.count == 0) {
        NSDictionary *datas = (NSDictionary *)[[NSUserDefaults standardUserDefaults] objectForKey:VideoData];
        NSArray *array = datas[self.url];
        for (NSDictionary *dic in array) {
            Behavior *be = (Behavior *)[[NSClassFromString(dic[@"class"]) alloc]init];
            be.time = [dic[@"time"] floatValue];
            be.startPoint = CGPointFromString(dic[@"startPoint"]);
            be.endPoint = CGPointFromString(dic[@"endPoint"]);
            [self.array addObject:be];
        }
        

    }
    self.playerItem = [AVPlayerItem playerItemWithURL:[NSURL fileURLWithPath:sourcePath]];
    self.player = [AVPlayer playerWithPlayerItem:self.playerItem];
    
    //创建播放视图
    AVPlayerLayer *playerLayer=[AVPlayerLayer playerLayerWithPlayer:self.player];
    playerLayer.frame = self.bounds;
    playerLayer.videoGravity=AVLayerVideoGravityResizeAspect;//视频填充模式
    [self.layer addSublayer:playerLayer];
    [self addNotification];
    [self.playerItem addObserver:self forKeyPath:@"loadedTimeRanges" options:NSKeyValueObservingOptionNew context:nil];//
    
    self.backgroundColor = [UIColor whiteColor];
    self.playButton = [[UIButton alloc]init];
    [self.playButton setImage:[UIImage imageNamed:@"play.png"] forState:UIControlStateNormal];
    [self.playButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.playButton.frame = CGRectMake(0, 0, 50, 50);
    self.playButton.center = CGPointMake(ScreenWidth/2, ScreenHeight/2);
    [self addSubview:self.playButton];
    
    [self.playButton addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    self.gesButton = [[UIButton alloc]init];
    self.gesButton.backgroundColor = [UIColor clearColor];
    [self addSubview:self.gesButton];
    self.backgroundColor = [UIColor blackColor];
    
}
- (void)click{

    NSLog(@"点击");

    [self.playerItem seekToTime:kCMTimeZero];
    self.index = 0;
    [self start];
    [self changeUI];
    [self.playButton setHidden:YES];

}
- (void)changeUI{
    if (self.index >= self.array.count) {

        return;
    }
    if (self.array.count > 0) {
        
        FrameModel *model = self.array[self.index];
        float time = model.time;
        if (self.index > 0 ) {
            FrameModel *next = self.array[self.index - 1];
            time = model.time - next.time ;
        }
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(time * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            FrameModel *m = self.array[self.index];
            UIButton *button=  [self getTypeButton:m];
            [button addTarget:self action:@selector(clickLeft:) forControlEvents:UIControlEventTouchUpInside];
            [self pause];
            
            
        });
        

        
        
    }
}

- (void)remove{
    
    if (self.player) {
        
        [[NSNotificationCenter defaultCenter] removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:self.player.currentItem];
        [self pause];
        [self.playerItem removeObserver:self forKeyPath:@"loadedTimeRanges"];
        
        for (UIView *obj in self.subviews) {
            [obj removeFromSuperview];
        }
        
    }
    
    
}
#pragma mark - 交互
- (void)clickLeft:(UIButton *)sender{
    [self start];
    [sender removeFromSuperview];
    self.index += 1;
    [self changeUI];

    
}


#pragma 公共方法


- (void)start {
     [self.player play];
}

- (void)pause {
    [self.player pause];
}

#pragma mark - 私有方法
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"loadedTimeRanges"]) {
        NSTimeInterval timeInterval = [self availableDuration];// 计算缓冲进度
        CMTime duration = self.playerItem.duration;
        CGFloat totalDuration = CMTimeGetSeconds(duration);
        //缓存进度－－－－－－－－－－－－
        self.progress = timeInterval / totalDuration;

    }
}

- (NSTimeInterval)availableDuration {
    NSArray *loadedTimeRanges = [[_player currentItem] loadedTimeRanges];
    CMTimeRange timeRange = [loadedTimeRanges.firstObject CMTimeRangeValue];// 获取缓冲区域
    float startSeconds = CMTimeGetSeconds(timeRange.start);
    float durationSeconds = CMTimeGetSeconds(timeRange.duration);
    NSTimeInterval result = startSeconds + durationSeconds;// 计算缓冲总进度
    return result;
}

#pragma mark - 通知
/**
 *  添加播放器通知
 */
-(void)addNotification{
    //给AVPlayerItem添加播放完成通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playbackFinished:) name:AVPlayerItemDidPlayToEndTimeNotification object:self.player.currentItem];
}
-(void)removeNotification{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
/**
 *  播放完成通知
 *
 *  @param notification 通知对象
 */
-(void)playbackFinished:(NSNotification *)notification{
    NSLog(@"视频播放完成.");
    
    [self.playButton setHidden:NO];

    
}

#pragma mark - timer

- (void)Stack {
    if (_playerItem.duration.timescale != 0) {
        self.oldProgress = CMTimeGetSeconds([_playerItem currentTime]) / (_playerItem.duration.value / _playerItem.duration.timescale);
       
        //当前时长进度progress
        NSInteger proMin = (NSInteger)CMTimeGetSeconds([_player currentTime]) / 60;//当前秒
        NSInteger proSec = (NSInteger)CMTimeGetSeconds([_player currentTime]) % 60;//当前分钟
        //    NSLog(@"%d",_playerItem.duration.timescale);
        //    NSLog(@"%lld",_playerItem.duration.value/1000 / 60);
        
        //duration 总时长
        
        NSInteger durMin = (NSInteger)_playerItem.duration.value / _playerItem.duration.timescale / 60;//总秒
        NSInteger durSec = (NSInteger)_playerItem.duration.value / _playerItem.duration.timescale % 60;//总分钟
        NSString *str = [NSString stringWithFormat:@"%02ld:%02ld / %02ld:%02ld", proMin, proSec, durMin, durSec];
     
    }
    if (_player.status == AVPlayerStatusReadyToPlay) {
//        [_activity stopAnimating];
    } else {
//        [_activity startAnimating];
    }

}

@end

