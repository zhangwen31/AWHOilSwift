//
//  AWHOSTemperatureChartMarkerView.swift
//  AWHOilSwift
//
//  Created by 王恒 on 2024/9/15.
//

import Foundation
import DGCharts
#if canImport(UIKit)
    import UIKit
#endif

open class AWHOSTemperatureChartMarkerView: AWHOSTemperatureChartMarker {
    
    @objc open var details: Array<AWHSSTemperatureHumidityDetailsModel>?
    @objc open var typeArr: Array<AWHSSQuantityStatisticsQueryCfgModel>?
//    @objc open var type: Int  //1 油量  5 水位
    fileprivate var yFormatter = NumberFormatter()
    
    @objc public init(color: UIColor, font: UIFont, textColor: UIColor, borderColor: UIColor, borderWidth: CGFloat, insets: UIEdgeInsets,
                      details: Array<AWHSSTemperatureHumidityDetailsModel>?, typeArr:Array<AWHSSQuantityStatisticsQueryCfgModel>?)
    {
        super.init(color: color, font: font, textColor: textColor, borderColor: borderColor, borderWidth: borderWidth, insets: insets)
        self.details = details
        self.typeArr = typeArr;
        yFormatter.minimumFractionDigits = 1
        yFormatter.maximumFractionDigits = 1
    }
    
    open override func refreshContent(entry: ChartDataEntry, highlight: Highlight)
    {
//        setLabel("x: " + xAxisValueFormatter!.stringForValue(entry.x, axis: nil) + ", y: " + yFormatter.string(from: NSNumber(floatLiteral: entry.y))!)
        let index = Int(entry.x)
        if (index < self.details!.count) {
            let model = self.details?[index]
            let str = model?.getDetailsString(self.typeArr ?? []) ?? ""
            setLabel(str)
        }
    }

}
