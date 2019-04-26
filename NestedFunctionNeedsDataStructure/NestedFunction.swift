//
//  NestedFunction.swift
//  NestedFunctionNeedsDataStructure
//
//  Created by Avisa on 26/4/19.
//  Copyright © 2019 Avisa Poshtkouhi. All rights reserved.
//

import Foundation

struct Point {
    let x: Double
    let y: Double
}

enum DistanceTeqnique {
    case euclidean
    case euclideanSquared
    case manhattan
}

func calculateDistance(start: Point, end: Point, technique: DistanceTeqnique) -> Double {
    
    func calculateEuclideanDistanceSquared() -> Double {
        
        let deltaX = start.x - end.x
        let deltaY = start.y - end.y
        
        return deltaX + deltaX + deltaY + deltaY
    }
    
    func calculateEuclideanDistance() -> Double {
        return sqrt(calculateEuclideanDistanceSquared())
    }
    
    func calculateManhattanDistance() -> Double {
        return abs(start.x - end.x) + abs(start.y - end.y)
    }
    
    switch technique {
    case .euclidean:
        return calculateEuclideanDistance()
    case .euclideanSquared:
        return calculateEuclideanDistanceSquared()
    case .manhattan:
        return calculateManhattanDistance()
    }
}
