//
//  AWHOSQuantityStatisticsDetailsModel.m
//  AWHOilSwift
//
//  Created by 王恒 on 2022/10/9.
//

#import "AWHOSQuantityStatisticsDetailsModel.h"
#import "AWHOSTools.h"

@implementation AWHOSQuantityStatisticsDetailsModel

- (NSString *)getDetailsString:(int)type precision:(int)precision
{
    NSString *time = self.time ?: @"";
    if (time.length > 8) {
        time = [time substringFromIndex:time.length - 8];
    }
    if (type == 1) {
        return [NSString stringWithFormat:AWHOSLocalizedString(@"时间:%@\n油量:%@L\n速度:%.fkm/h\n里程:%@公里"),time,[self getStringHalfAdjustWithFloatValue:self.v decimalPointNum:precision],self.s,[self getStringHalfAdjustWithFloatValue:self.mile/1000 decimalPointNum:precision]];
    } else if (type == 5) {
        return [NSString stringWithFormat:AWHOSLocalizedString(@"时间:%@\n水位:%@L\n速度:%.fkm/h\n里程:%@公里"),time,[self getStringHalfAdjustWithFloatValue:self.v decimalPointNum:precision],self.s,[self getStringHalfAdjustWithFloatValue:self.mile/1000 decimalPointNum:precision]];
    } else if (type == 2) {
        return [NSString stringWithFormat:AWHOSLocalizedString(@"时间:%@\n载重:%@L\n速度:%.fkm/h\n里程:%@公里"),time,[self getStringHalfAdjustWithFloatValue:self.v decimalPointNum:precision],self.s,[self getStringHalfAdjustWithFloatValue:self.mile/1000 decimalPointNum:precision]];
    } else if (type == 3) {
        return [NSString stringWithFormat:AWHOSLocalizedString(@"时间:%@\n温度:%@L\n速度:%.fkm/h\n里程:%@公里"),time,[self getStringHalfAdjustWithFloatValue:self.v decimalPointNum:precision],self.s,[self getStringHalfAdjustWithFloatValue:self.mile/1000 decimalPointNum:precision]];
    }
    return @"";
}

/**
 * 转换成字符串 四舍五入
 * @param value 值 浮点数
 * @param decimalPointNum 小数点后几位
 */
- (NSString *)getStringHalfAdjustWithFloatValue:(CGFloat)value
                                decimalPointNum:(NSInteger)decimalPointNum {
    NSString *format = [NSString stringWithFormat:@"%%.%ldf",decimalPointNum];
    CGFloat num = round(value*pow(10, decimalPointNum))/pow(10, decimalPointNum);
    return [NSString stringWithFormat:format,num];
}

@end
