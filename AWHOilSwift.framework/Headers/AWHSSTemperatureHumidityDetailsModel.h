//
//  AWHSSTemperatureHumidityDetailsModel.h
//  AWHOilSwift
//
//  Created by 王恒 on 2024/9/8.
//

#import <Foundation/Foundation.h>
#import <AWHOilSwift/AWHSSQuantityStatisticsQueryCfgModel.h>

NS_ASSUME_NONNULL_BEGIN

@interface AWHSSTemperatureHumidityDetailsModel : NSObject

///定位时间,
@property (nonatomic,strong)NSString *time;
///真实值,
@property (nonatomic,assign)CGFloat v0;
///优化值,
@property (nonatomic,assign)CGFloat v;
///速度,
@property (nonatomic,assign)CGFloat s;
///里程
@property (nonatomic,assign)CGFloat mile;

@property (nonatomic,assign)NSInteger index;

@property (nonatomic,assign)NSInteger m;

@property (nonatomic,strong)NSString *lat;

@property (nonatomic,strong)NSString *lng;

@property (nonatomic,assign)BOOL acc;

@property (nonatomic,strong)NSDictionary *dict;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithDict:(NSDictionary *)dict;

- (NSString *)getValueStr:(NSString *)key;

- (NSInteger)getValueInteger:(NSString *)key;

- (CGFloat)getValueFloat:(NSString *)key;

- (NSString *)getDetailsString:(NSArray<AWHSSQuantityStatisticsQueryCfgModel *> *)typeArr;

@end

NS_ASSUME_NONNULL_END
