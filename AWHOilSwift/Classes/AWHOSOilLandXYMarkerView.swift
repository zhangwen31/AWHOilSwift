//
//  AWHOSOilLandXYMarkerView.swift
//  AWHOilSwift
//
//  Created by 王恒 on 2022/10/9.
//

import Foundation
import DGCharts
#if canImport(UIKit)
    import UIKit
#endif


open class AWHOSOilLandXYMarkerView: AWHOSBalloonMarker
{
    @objc open var details: Array<AWHOSQuantityStatisticsDetailsModel>?
//    @objc open var type: Int  //1 油量  5 水位
    fileprivate var yFormatter = NumberFormatter()
    
    @objc public init(color: UIColor, font: UIFont, textColor: UIColor, borderColor: UIColor, borderWidth: CGFloat, type: Int, precision: Int, insets: UIEdgeInsets,
                      details: Array<AWHOSQuantityStatisticsDetailsModel>?)
    {
        super.init(color: color, font: font, textColor: textColor, borderColor: borderColor, borderWidth: borderWidth, type: type, precision:precision, insets: insets)
        self.details = details
        yFormatter.minimumFractionDigits = 1
        yFormatter.maximumFractionDigits = 1
    }
    
    open override func refreshContent(entry: ChartDataEntry, highlight: Highlight)
    {
//        setLabel("x: " + xAxisValueFormatter!.stringForValue(entry.x, axis: nil) + ", y: " + yFormatter.string(from: NSNumber(floatLiteral: entry.y))!)
        let index = Int(entry.x)
        if (index < self.details!.count) {
            let model = self.details?[index]
            let str = model?.getDetailsString(Int32(self.type), precision: Int32(self.precision)) ?? ""
            setLabel(str)
        }
    }
    
}
