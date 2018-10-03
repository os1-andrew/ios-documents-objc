//
//  AELDocument.h
//  Documents
//
//  Created by Andrew Dhan on 10/3/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AELDocument : NSObject

@property NSString * title;
@property NSString * text;
@property int wordCount;

@end

NS_ASSUME_NONNULL_END
