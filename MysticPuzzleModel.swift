import SwiftUI

struct TileModel: Identifiable {
    let id: UUID
    let value: Int
    var currentPoint: CGPoint
    let winningPoint: CGPoint
    
    init(
        id: UUID = UUID(),
        value: Int,
        currenPoint: CGPoint,
        winningPoint: CGPoint) {
        self.id = id
        self.value = value
        self.currentPoint = currenPoint
        self.winningPoint = winningPoint
    }
}

struct MysticPuzzleModel: Identifiable {
    let id: UUID
    var tiles: [TileModel]
    let n: Int
    
    init(id: UUID = UUID(),
         tiles: [TileModel],
         n: Int
    ) {
        self.id = id
        self.tiles = tiles
        self.n = n
    }
}

let LEFT = CGPoint(x: -1, y: 0)
let RIGHT = CGPoint(x: 1, y: 0)
let UP = CGPoint(x: 0, y: -1)
let DOWN = CGPoint(x: 0, y: 1)


