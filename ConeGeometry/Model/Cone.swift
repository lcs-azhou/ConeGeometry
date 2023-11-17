//
//  Cone.swift
//  ConeGeometry
//
//  Created by Ansheng Zhou on 2023-11-16.
//

import Foundation

struct Cone {
    
    // MARK: Stored properties
    var radius: Double
    
    // MARK: Computed properties
    var baseArea: Double {
        return Double.pi * radius * radius
    }
    
    var slantHeight: Double
    
    var lateralSurfaceArea: Double {
        return Double.pi * radius * slantHeight
    }
    
    var areaTotal: Double{
        return lateralSurfaceArea + baseArea
    }
    var height: Double {
        return Double.squareRoot(slantHeight * slantHeight-radius * radius)()
    }
}
