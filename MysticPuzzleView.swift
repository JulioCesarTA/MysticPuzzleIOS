
import SwiftUI



struct MysticPuzzleView: View {
    @StateObject var mysticPuzzleViewModel: MysticPuzzleViewModel = MysticPuzzleViewModel()
    
    let tileDimensions:CGFloat = 50
    let title = "Mystic puzz"
    var body: some View {
        ZStack {
            Color(.blue).opacity(0.3).ignoresSafeArea()
            
            VStack {
                Text(title)
                    .padding()
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                ZStack{
                    let tiles = mysticPuzzleViewModel.mysticPuzzleModel.tiles
                    ForEach(tiles) { tile in
                        TileView(
                            tileNumber: tile.value, tileDimensions: tileDimensions, offset: tile.currentPoint)
                    }
                }
                .frame(maxWidth: tileDimensions*4,
                maxHeight: tileDimensions*4)
                .padding()
                .background(Color.blue.opacity(0.5))
                .shadow(color: Color.blue.opacity(0.5), radius: 10, x: 3, y: 3)
                .cornerRadius(20)
                .padding()
                .padding(.vertical)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MysticPuzzleView()
    }
}

struct TileView: View {
    
    let tileNumber: Int
    let tileDimensions: CGFloat
    let offset: CGPoint
    let somePadding: CGFloat = 3
    let digitResizeFactor: CGFloat = 5/2
    
    var body: some View {
        let direction = offset * tileDimensions
        let deltaX = direction.x + tileDimensions / 2
        let deltaY = direction.y - 3 * tileDimensions / 2
        
        
        Image("digit\(tileNumber)")
            .resizable()
            .renderingMode(.template)
            .foregroundColor(.red)
            .aspectRatio(contentMode: .fit)
            .frame(width: tileDimensions , height: tileDimensions )
            .padding()
            .background(
                Image("MarbleTileBackground")
                    .resizable()
                    .frame(
                        width: tileDimensions - somePadding,
                        height: tileDimensions - somePadding
                    )
                .cornerRadius(10)
            )
            .offset(x: deltaX, y: deltaY)
            .shadow(color: .black, radius: 1, x: 1, y: 1)
    }
    
    
}


#Preview {
    MysticPuzzleView()
}
