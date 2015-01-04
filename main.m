//
//  main.m
//  blockPractice
//
//  Created by travis holt on 1/4/15.
//  Copyright (c) 2015 TerryBuOrg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BlockManager.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
      // insert code here...
    
    //refer to Xcode Code Snippets Library and C-inline Block as Variable
    //just pull it into your code to simplify boilerplate
    void(^terryBlock)(NSString*) = ^(NSString * name) {
      NSLog(@"hi %@", name);
    };
    
    int (^awesomeBlockDouble) (int) = ^(int someNumber) {
      int result = someNumber * 2;
      return result;
    };
    
    void (^voidPracticeBlock)(void) = ^{
      NSLog(@"void baby");
    };
    
    NSString* (^moreParamsBlock)(NSString *) = ^(NSString *someString) {
      NSString *newString = [NSString stringWithFormat:@"%@ plus extra", someString];
      return newString;
    };
    
    terryBlock(@"TerryBlock");
    NSLog(@"%d", awesomeBlockDouble(4));
    voidPracticeBlock();
    NSLog(@"%@", moreParamsBlock(@"fjsadfpa"));
    
    BlockManager *blockManager = [[BlockManager alloc]init];
    blockManager.simpleBlock = ^{
      NSLog(@"I am a simple block wheee");
    };
    
    blockManager.simpleBlock();
    
    //in the beginning, there's nothing in the block property so it returns null
    NSLog(@"%@", blockManager.nameCheckBlock);
    
    blockManager.nameCheckBlock = ^(NSString *myName) {
      if ([myName isEqualToString:@"terry"]) {
        NSLog(@"yes your name is Terry");
        return YES;
      };
      return NO;
    };
    
    blockManager.nameCheckBlock(@"terry");
    
  }
    return 0;
}
