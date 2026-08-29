//
//  AWHSSQuantityStatisticsQueryCfgModel.h
//  AWHOilSwift
//
//  Created by 王恒 on 2024/9/15.
//

#import <Foundation/Foundation.h>
#import <AWHOilSwift/AWHSSQuantityStatisticsQueryAdsModel.h>

NS_ASSUME_NONNULL_BEGIN

@interface AWHSSQuantityStatisticsQueryCfgModel : NSObject

@property (nonatomic,strong) NSArray<AWHSSQuantityStatisticsQueryAdsModel *> *ads;

@property (nonatomic,assign) NSInteger analog;

@property (nonatomic,strong) NSString *compute;

@property (nonatomic,assign) BOOL filterAccOff;

@property (nonatomic,assign) BOOL filterCb;

@property (nonatomic,assign) BOOL filterInvalid;

@property (nonatomic,assign) BOOL filterSatl0;

@property (nonatomic,assign) BOOL filterSpeed0;

@property (nonatomic,strong) NSString *name;
/// 精确小数点位数
@property (nonatomic,assign) NSInteger precision;

@property (nonatomic,assign) CGFloat refuel_threshold;

@property (nonatomic,assign) BOOL smooth;

@property (nonatomic,strong) NSString *type;

@property (nonatomic,strong) NSString *typeId;

@property (nonatomic,strong) NSString *unit;

@property (nonatomic,strong) NSString *value;

@property (nonatomic,assign) BOOL isSelect;

@end

NS_ASSUME_NONNULL_END
