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
    
    // an array of 155 steps for the mountain
    var steps = [Step]()
    
    // constructor
    init(worldColor:String, clouds:String, background:String, foreground:String, path:String, completedStep:String, uncompletedStep:String){
        self.worldColor = worldColor
        self.clouds = clouds
        self.background = background
        self.foreground = foreground
        self.path = path
        self.completedStep = completedStep
        self.uncompletedStep = uncompletedStep
        
        // initialize steps
        
    }
    
}
