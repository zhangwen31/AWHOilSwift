//
//  AWHOSOverallLineModel.h
//  AWHOilSwift
//
//  Created by 王恒 on 2023/3/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AWHOSOverallLineModel : NSObject

//定位时间,
@property (nonatomic,strong)NSString *time;
//速度,
@property (nonatomic,assign)CGFloat s;

- (NSString *)getDetailsString;

@end

NS_ASSUME_NONNULL_END
