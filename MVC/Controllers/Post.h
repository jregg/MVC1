//
//  JRG.h
//  MVC
//
//  Created by Register, Joseph (US - Seattle) on 2/11/14.
//  Copyright (c) 2014 JRegg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Post : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *userName;
@property (nonatomic, strong) NSString *content;
@property (nonatomic, strong) NSDate *timeStamp;


@end
