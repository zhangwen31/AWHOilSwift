//
//  AWHOSQuantityStatisticsDetailsModel.h
//  AWHOilSwift
//
//  Created by 王恒 on 2022/10/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AWHOSQuantityStatisticsDetailsModel : NSObject

//定位时间,
@property (nonatomic,strong)NSString *time;
//真实值,
@property (nonatomic,assign)CGFloat v0;
//优化值,
@property (nonatomic,assign)CGFloat v;
//速度,
@property (nonatomic,assign)CGFloat s;
//里程
@property (nonatomic,assign)CGFloat mile;

@property (nonatomic,assign)NSInteger index;

@property (nonatomic,assign)NSInteger m;

- (NSString *)getDetailsString:(int)type;

@end

NS_ASSUME_NONNULL_END
