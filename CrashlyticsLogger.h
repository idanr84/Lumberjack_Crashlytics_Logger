//
//  CrashlyticsLogger.h
//
//
//  Created by Idan Ratzabi on 11/1/15.
//
//

#import <Foundation/Foundation.h>


@interface CrashlyticsLogger : DDAbstractLogger <DDLogger>

+(instancetype) sharedInstance;

@end
