//
//  AWHOSTools.h
//  AWHOilSwift
//
//  Created by 王恒 on 2022/11/17.
//

#import <Foundation/Foundation.h>

#define AWHOSLocalizedString(key) [AWHOSTools languageConversion:key]

NS_ASSUME_NONNULL_BEGIN

@interface AWHOSTools : NSObject

//多语言切换
+(NSString *)languageConversion:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
