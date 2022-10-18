//
//  Mountain.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 9/29/22.
//

import Foundation

struct Mountain{
    
    // image name for background behind the mountain
    var worldColor:String
    
    //image name for clouds
    var clouds:String
    
    // image names for colors of the mountain
    var background:String
    var foreground:String
    
    // image name for path
    var path:String
    
    // image names for color of the steps
    var completedStep:String
    var uncompletedStep:String
    
    // image names for accessories
    var decoration1:String
    var decoration2:String
    var decoration3:String
    var decoration4:String
    
    // constructor
    init(worldColor:String, clouds:String, background:String, foreground:String, path:String, completedStep:String, uncompletedStep:String, decoration1:String, decoration3:String, decoration2:String, decoration4:String ){
        self.worldColor = worldColor
        self.clouds = clouds
        self.background = background
        self.foreground = foreground
        self.path = path
        self.completedStep = completedStep
        self.uncompletedStep = uncompletedStep
        self.decoration1 = decoration1
        self.decoration2 = decoration2
        self.decoration3 = decoration3
        self.decoration4 = decoration4
    }
    
}
