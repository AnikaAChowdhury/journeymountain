//
//  Mountain.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 9/29/22.
//

import Foundation
import SwiftUI

struct Mountain{
    
    // image name for background behind the mountain
    var worldColor:Color
    
    //image name for clouds
    var clouds:String
    var hasClouds:Bool
    
    // image names for colors of the mountain
    var background:String
    var foreground:String
    
    // image name for path
    var path:String
    
    // image names for color of the steps
    var completedStep:String
    var uncompletedStep:String
    var completedStarStep:String
    var uncompletedStarStep:String
    
    // image names for accessories
    var decoration1:String
    var decoration2:String
    var decoration3:String
    var decoration4:String
    
    // if it has this decoration
    var showDecoration1:Bool
    var showDecoration2:Bool
    var showDecoration3:Bool
    var showDecoration4:Bool
    
    // decoration size
    var sizeDecoration1:Double
    var sizeDecoration2:Double
    var sizeDecoration3:Double
    var sizeDecoration4:Double

    // if it has snow
    var hasSnow:Bool
    
    // constructor
    init(monthNumber:Int, worldColor:Color, clouds:String, hasClouds:Bool, decoration1:String, decoration2:String, decoration3:String, decoration4:String, showDecoration1:Bool, showDecoration2:Bool, showDecoration3:Bool, showDecoration4:Bool, hasSnow:Bool, sizeDecoration1:Double, sizeDecoration2:Double, sizeDecoration3:Double, sizeDecoration4:Double){
        self.worldColor = worldColor
        self.clouds = clouds
        self.hasClouds = hasClouds
        self.background = "mountain_background_" + String(monthNumber)
        self.foreground = "mountain_light_" + String(monthNumber)
        self.path = "path_" + String(monthNumber)
        self.completedStep = "completed_step_" + String(monthNumber)
        self.uncompletedStep = "uncompleted_step"
        self.completedStarStep = "completed_star_step_" + String(monthNumber)
        self.uncompletedStarStep = "uncompleted_star_step"
        self.decoration1 = decoration1
        self.decoration2 = decoration2
        self.decoration3 = decoration3
        self.decoration4 = decoration4
        self.showDecoration1 = showDecoration1
        self.showDecoration2 = showDecoration2
        self.showDecoration3 = showDecoration3
        self.showDecoration4 = showDecoration4
        self.sizeDecoration1 = sizeDecoration1
        self.sizeDecoration2 = sizeDecoration2
        self.sizeDecoration3 = sizeDecoration3
        self.sizeDecoration4 = sizeDecoration4
        self.hasSnow = hasSnow

    }
    
}
