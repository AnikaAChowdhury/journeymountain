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
    var acessory1:String
    var acessory2:String
    var acessory3:String
    var acessory4:String
    
    // constructor
    init(worldColor:String, clouds:String, background:String, foreground:String, path:String, completedStep:String, uncompletedStep:String, acessory1:String, acessory3:String, acessory2:String, acessory4:String ){
        self.worldColor = worldColor
        self.clouds = clouds
        self.background = background
        self.foreground = foreground
        self.path = path
        self.completedStep = completedStep
        self.uncompletedStep = uncompletedStep
        self.acessory1 = acessory1
        self.acessory2 = acessory2
        self.acessory3 = acessory3
        self.acessory4 = acessory4
    }
    
}
