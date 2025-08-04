//
//  AWHOSXYMarkerView.swift
//  AWHOilSwift
//
//  Created by 王恒 on 2022/10/9.
//

import Foundation
import DGCharts
#if canImport(UIKit)
    import UIKit
#endif


open class AWHOSXYMarkerView: AWHOSBalloonMarker
{
    @objc open var xAxisValueFormatter: AxisValueFormatter?
    fileprivate var yFormatter = NumberFormatter()
    
    @objc public init(color: UIColor, font: UIFont, textColor: UIColor, borderColor: UIColor, borderWidth: CGFloat, type: Int, precision: Int, insets: UIEdgeInsets,
                xAxisValueFormatter: AxisValueFormatter)
    {
        super.init(color: color, font: font, textColor: textColor, borderColor: borderColor, borderWidth: borderWidth, type: type, precision: precision, insets: insets)
        self.xAxisValueFormatter = xAxisValueFormatter
        yFormatter.minimumFractionDigits = 1
        yFormatter.maximumFractionDigits = 1
    }
    
    open override func refreshContent(entry: ChartDataEntry, highlight: Highlight)
    {
        setLabel("x: " + xAxisValueFormatter!.stringForValue(entry.x, axis: nil) + ", y: " + yFormatter.string(from: NSNumber(floatLiteral: entry.y))!)
    }
    
}
