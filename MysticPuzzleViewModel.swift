
import SwiftUI
import Combine

class MysticPuzzleViewModel: ObservableObject {
    @Published var mysticPuzzleModel: MysticPuzzleModel = MysticPuzzleModel(
        tiles: [],
        n: 0
    )
    
    init() {
        self.createInitialItems()
        self.shuffle()
    }
    
    func createInitialItems() {
        var tiles: [TileModel] = []
        tiles.append(
            TileModel(
                value: 1,
                currenPoint: LEFT * 2,
                winningPoint: LEFT * 2
            )
        )
        
        tiles.append(
            TileModel(
                value: 2,
                currenPoint: LEFT * 1,
                winningPoint: LEFT * 1
            )
        )
        
        tiles.append(
            TileModel(
                value: 3,
                currenPoint: .zero,
                winningPoint: .zero
            )
        )
        tiles.append(
            TileModel(
                value: 4,
                currenPoint: RIGHT * 1,
                winningPoint: RIGHT * 1
            )
        )
        
        tiles.append(
            TileModel(
                value: 5,
                currenPoint: LEFT * 2 + DOWN,
                winningPoint: LEFT * 2 + DOWN
            )
        )
        
        tiles.append(
            TileModel(
                value: 6,
                currenPoint: LEFT * 1 + DOWN,
                winningPoint: LEFT * 1 + DOWN
            )
        )
        
        tiles.append(
            TileModel(
                value: 7,
                currenPoint: .zero + DOWN,
                winningPoint:  .zero + DOWN
            )
        )
        
        tiles.append(
            TileModel(
                value: 8,
                currenPoint: RIGHT * 1 + DOWN,
                winningPoint: RIGHT * 1 + DOWN
            )
        )
        tiles.append(
            TileModel(
                value: 9,
                currenPoint: LEFT * 2 + DOWN * 2,
                winningPoint: LEFT * 2 + DOWN * 2
            )
        )
        
        tiles.append(
            TileModel(
                value: 10,
                currenPoint: LEFT * 1 + DOWN * 2,
                winningPoint: LEFT * 1 + DOWN * 2
            )
        )
        
        tiles.append(
            TileModel(
                value: 11,
                currenPoint: .zero + DOWN * 2,
                winningPoint: .zero + DOWN * 2
            )
        )
        tiles.append(
            TileModel(
                value: 12,
                currenPoint: RIGHT * 1 + DOWN * 2,
                winningPoint: RIGHT * 1 + DOWN * 2
            )
        )
        
        tiles.append(
            TileModel(
                value: 13,
                currenPoint: LEFT * 2 + DOWN * 3 ,
                winningPoint: LEFT * 2 + DOWN * 3
            )
        )
        
        tiles.append(
            TileModel(
                value: 14,
                currenPoint: LEFT * 1 + DOWN  * 3,
                winningPoint: LEFT * 1 + DOWN  * 3
            )
        )
        
        tiles.append(
            TileModel(
                value: 15,
                currenPoint: .zero + DOWN  * 3,
                winningPoint:  .zero + DOWN * 3
            )
        )
        
        
       
        let n = 4
        self.mysticPuzzleModel = MysticPuzzleModel(tiles: tiles, n:n)
    }
    
    func shuffle() {
        
    }
    
}
