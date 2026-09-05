//
//  AWHOSOverallLineModel.m
//  AWHOilSwift
//
//  Created by 王恒 on 2023/3/3.
//

#import "AWHOSOverallLineModel.h"
#import "AWHOSTools.h"

@implementation AWHOSOverallLineModel

- (NSString *)getDetailsString
{
    NSString *time = self.time ?: @"";
    if (time.length > 8) {
        time = [time substringFromIndex:time.length - 8];
    }
    return [NSString stringWithFormat:AWHOSLocalizedString(@"时间:%@\n速度:%.fkm/h"),time,self.s];
}

@end
