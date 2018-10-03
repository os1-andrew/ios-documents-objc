//
//  NSString+WordCount.m
//  Documents
//
//  Created by Andrew Dhan on 10/3/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (int)wordCount
{
    NSArray *words = [self componentsSeparatedByString:@" "];
    return (int)[words count];
}

@end
