//
//  AELDocumentController.h
//  Documents
//
//  Created by Andrew Dhan on 10/3/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AELDocument;

NS_ASSUME_NONNULL_BEGIN

@interface AELDocumentController : NSObject

-(void) createDocumentWith: (NSString *) title text: (NSString *) text;
-(void) updateDocumentFor: (AELDocument *) document title: (NSString *) title text: (NSString *) text ;

-(void) deleteDocument: (AELDocument *) document;

@property NSMutableArray *documents;

@end

NS_ASSUME_NONNULL_END
