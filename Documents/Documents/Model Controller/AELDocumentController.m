//
//  AELDocumentController.m
//  Documents
//
//  Created by Andrew Dhan on 10/3/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

#import "AELDocumentController.h"
#import "AELDocument.h"

@implementation AELDocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createDocumentWith:(NSString *)title text:(NSString *)text
{
    AELDocument *newDocument = [[AELDocument alloc] initWithTitle:title text:text];
    [[self documents] addObject:newDocument];
    
}

- (void)updateDocumentFor:(AELDocument *)document title:(NSString *)title text:(NSString *)text
{
    NSUInteger index = [[self documents] indexOfObject:document];
    [[self documents] removeObjectAtIndex:index];
    [document setTitle:title];
    [document setText:text];
    [[self documents] insertObject:document atIndex:index];
}

-(void) deleteDocument:(AELDocument *)document
{
    [[self documents] removeObject: document];
}

@end
