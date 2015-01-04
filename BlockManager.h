//
//  BlockManager.h
//  blockPractice
//
//  Created by travis holt on 1/4/15.
//  Copyright (c) 2015 TerryBuOrg. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^simpleBlock)(void);
//typedef makes property declarations simpler, as you see below
//you define the complex syntax up here for returntype, params, and below, boom, just use the typedef as blockType of your block
//note that you can pull code snippet library for this (CBLock typedef)
typedef BOOL(^nameCheckBlock)(NSString *yourName);

@interface BlockManager : NSObject

@property (nonatomic, copy) simpleBlock simpleBlock;
//note the copy
//note that the class type declaration is the typedef you defined above the @interface
//the second simpleBlock is the name of the property

//with params
@property (nonatomic, copy) nameCheckBlock nameCheckBlock;

@end
