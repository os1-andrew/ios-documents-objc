//
//  AELDocument.m
//  Documents
//
//  Created by Andrew Dhan on 10/3/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

#import "AELDocument.h"
#import "NSString+WordCount.h"

@implementation AELDocument

-(instancetype) initWithTitle: (NSString *) title text:(NSString *) text
{
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
    }
    return self;
}

-(int) getWordCount
{
    return [self wordCount];
}

@end
