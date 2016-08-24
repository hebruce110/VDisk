//
//  DIMusicManager.m
//  iDisk
//
//  Created by Bruce.He on 16/8/22.
//  Copyright © 2016年 heyuan110.com. All rights reserved.
//

#import "DIMusicManager.h"
#import <MediaPlayer/MediaPlayer.h>

@implementation DIMusicManager

- (void)getAllMusics:(void(^)(NSArray *items))block
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        MPMediaQuery *everything = [MPMediaQuery songsQuery];
        //过滤掉云端的
        [everything addFilterPredicate:[MPMediaPropertyPredicate predicateWithValue:[NSNumber numberWithBool:NO] forProperty:MPMediaItemPropertyIsCloudItem]];
        block([everything items]);
    });
}

@end
