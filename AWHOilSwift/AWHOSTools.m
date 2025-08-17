//
//  AWHOSTools.m
//  AWHOilSwift
//
//  Created by 王恒 on 2022/11/17.
//

#import "AWHOSTools.h"


@implementation AWHOSTools

+(NSString *)languageConversion:(NSString *)string
{
    Class class = NSClassFromString(@"AWHBRTools");
    if (!class) {
        return 0;
    }
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    SEL languageConversion = NSSelectorFromString(@"languageConversion:");
    if (languageConversion && [class respondsToSelector:languageConversion]) {
        return [class performSelector:languageConversion withObject:string];
    }
#pragma clang diagnostic pop
    return string;
}

@end
