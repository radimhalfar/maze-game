//
//  ViewController.swift
//  MazeGenerator
//
//  Created by Radim Halfar on 27.10.16.
//  Copyright © 2016 Inloop, s.r.o. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let size = Int(self.view.frame.size.width)
        let gridSize = 64
        
        var maze = Maze(gridSize: gridSize, screenSize: size)
        
        self.view.addSubview(maze.drawView(gridSize: gridSize, screenSize: size))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

