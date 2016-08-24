//
//  DIMusicManager.h
//  iDisk
//
//  Created by Bruce.He on 16/8/22.
//  Copyright © 2016年 heyuan110.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DIMusicManager : NSObject

/**
 *  获取所有音乐
 *
 *  @param block 回调，返回数组
 */
- (void)getAllMusics:(void(^)(NSArray *items))block;

@end
