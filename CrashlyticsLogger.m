//
//  CrashlyticsLogger.m
//  
//
//  Created by Idan Ratzabi on 11/1/15.
//
//

#import "CrashlyticsLogger.h"
#import <Crashlytics/Crashlytics.h>
#import "DDLog.h"

@implementation CrashlyticsLogger

+(instancetype) sharedInstance
{
    static dispatch_once_t once;
    static CrashlyticsLogger* sharedInstance;
    dispatch_once(&once, ^ { sharedInstance = [[self alloc] init]; });
    return sharedInstance;
}

- (void)logMessage:(DDLogMessage *)logMessage
{
    NSString *logMsg = logMessage->_message;
    
    if (self->_logFormatter)
        logMsg = [self->_logFormatter formatLogMessage:logMessage];
    
    if (logMsg)
    {
        CLS_LOG(@"%@",logMessage);
    }
}

- (NSString *)loggerName {
    return @"cocoa.lumberjack.crashlyticsLogger";
}


@end
