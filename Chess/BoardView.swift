//
//  BoardView.swift
//  Chess
//
//  Created by Ігор Ляхович on 20.08.2022.
//

import UIKit

class BoardView: UIView {
    
    let originX : CGFloat = 20
    let originY : CGFloat = 20
    let cellSide : CGFloat = 37
    
    override func draw(_ rect: CGRect) {
        drawBoard()
    }
    
    func drawBoard() {
        for row in 0..<4 {
            for col in 0..<4 {
                drawSquare(col: col * 2, row: row * 2, color: .white)
                drawSquare(col: 1 + col * 2, row: row * 2, color: .black)
                drawSquare(col: col * 2, row: 1 + row * 2, color: .black)
                drawSquare(col: 1 + col * 2, row: 1 + row * 2, color: .white)
            }
        }
    }
    
    func drawSquare(col: Int, row: Int, color: UIColor) {
        let path = UIBezierPath(rect: CGRect(x: originX + CGFloat(col) * cellSide, y: originY + CGFloat(row) * cellSide, width: cellSide, height: cellSide))
        color.setFill()
        path.fill()
    }
}
