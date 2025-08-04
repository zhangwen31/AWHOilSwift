//
//  AWHSSTemperatureHumidityDetailsModel.m
//  AWHOilSwift
//
//  Created by 王恒 on 2024/9/8.
//

#import "AWHSSTemperatureHumidityDetailsModel.h"
#import "AWHOSTools.h"

@implementation AWHSSTemperatureHumidityDetailsModel

- (instancetype)initWithDict:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        if ([dict isKindOfClass:NSDictionary.class]) {
            _time = [dict objectForKey:@"time"];
            
            NSNumber *v0 = [dict objectForKey:@"v0"];
            if ([v0 isKindOfClass:NSNumber.class] || [v0 isKindOfClass:NSString.class]) {
                _v0 = v0.floatValue;
            }
            ///优化值,
            NSNumber *v = [dict objectForKey:@"v"];
            if ([v isKindOfClass:NSNumber.class] || [v isKindOfClass:NSString.class]) {
                _v = v.floatValue;
            }
            ///速度,
            NSNumber *s = [dict objectForKey:@"s"];
            if ([s isKindOfClass:NSNumber.class] || [s isKindOfClass:NSString.class]) {
                _s = s.floatValue;
            }
            ///里程
            NSNumber *mile = [dict objectForKey:@"mile"];
            if ([mile isKindOfClass:NSNumber.class] || [mile isKindOfClass:NSString.class]) {
                _mile = mile.floatValue;
            }

            NSNumber *index = [dict objectForKey:@"index"];
            if ([index isKindOfClass:NSNumber.class] || [index isKindOfClass:NSString.class]) {
                _index = index.integerValue;
            }

            NSNumber *m = [dict objectForKey:@"m"];
            if ([m isKindOfClass:NSNumber.class] || [m isKindOfClass:NSString.class]) {
                _m = m.integerValue;
            }
            
            _lat = [dict objectForKey:@"lat"];
            _lng = [dict objectForKey:@"lng"];

            NSNumber *acc = [dict objectForKey:@"acc"];
            if ([acc isKindOfClass:NSNumber.class] || [acc isKindOfClass:NSString.class]) {
                _acc = acc.boolValue;
            }
            _dict = dict;
        }
        
    }
    return self;
}

- (NSString *)getValueStr:(NSString *)key
{
    if ([self.dict isKindOfClass:NSDictionary.class]) {
        NSString *value = [self.dict objectForKey:key];
        NSString *str = [NSString stringWithFormat:@"%@",value];
        return str;
    }
    
    return @"";
}

- (NSInteger)getValueInteger:(NSString *)key
{
    if ([self.dict isKindOfClass:NSDictionary.class]) {
        NSString *value = [self.dict objectForKey:key];
        if ([value isKindOfClass:NSString.class] || [value isKindOfClass:NSNumber.class]) {
            return value.integerValue;
        }
    }
    return 0;
}

- (CGFloat)getValueFloat:(NSString *)key
{
    if ([self.dict isKindOfClass:NSDictionary.class]) {
        NSString *value = [self.dict objectForKey:key];
        if ([value isKindOfClass:NSString.class] || [value isKindOfClass:NSNumber.class]) {
            return value.floatValue;
        }
    }
    return 0;
}

- (NSString *)getDetailsString:(NSArray<AWHSSQuantityStatisticsQueryCfgModel *> *)typeArr
{
    NSString *time = self.time ?: @"";
    if (time.length > 14) {
        time = [time substringFromIndex:time.length - 14];
    }
    NSString *value = @"";
    BOOL isHave = NO;
    for (AWHSSQuantityStatisticsQueryCfgModel *model in typeArr) {
        if (model.isSelect) {
            isHave = YES;
            break;
        }
    }
    for (AWHSSQuantityStatisticsQueryCfgModel *model in typeArr) {
        if (model.isSelect || !isHave) {
            value = [NSString stringWithFormat:@"%@%@:%@%@\n",value,model.name,[self getStringHalfAdjustWithValue:[self getValueStr:[NSString stringWithFormat:@"v%@",model.typeId]] decimalPointNum:1],model.unit];
        }
    }
    NSString *str = [NSString stringWithFormat:AWHOSLocalizedString(@"时间:%@\n%@速度:%.fkm/h\n里程:%.2f公里"),time,value,self.s,self.mile/1000];
    return str;
}

/**
 * 转换成字符串 四舍五入
 * @param value 值 可以是字符串或者NSNumber
 * @param decimalPointNum 小数点后几位
 */
- (NSString *)getStringHalfAdjustWithValue:(id)value
                           decimalPointNum:(NSInteger)decimalPointNum
{
    NSString *format = [NSString stringWithFormat:@"%%.%ldf",decimalPointNum];
    NSString *obj = value;
    if ([obj isKindOfClass:NSNumber.class] || [obj isKindOfClass:NSString.class]) {
        CGFloat num = round(obj.doubleValue*pow(10, decimalPointNum))/pow(10, decimalPointNum);
        return [NSString stringWithFormat:format,num];
    }
    return nil;
}

@end
