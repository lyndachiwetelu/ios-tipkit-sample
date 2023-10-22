//

import SwiftUI
import TipKit


struct PlaceDetail {
    let id: Int
    let name: String
    let imageLink: String
}

typealias Location = PlaceDetail
typealias Landmark = PlaceDetail

struct ContentView: View {
    
    var likedLocationTip = LikedLocationTip()
    var landmarkTip = FavoriteLandmarkTip()
    
    var locations: [Location] = [
        Location(id: 1, name: "Hamburg", imageLink: "hamburg"),
        Location(id: 2, name: "Abuja", imageLink: "abuja"),
        Location(id: 3, name: "Paris", imageLink: "paris"),
    ]
    
    var landmarks: [Landmark] = [
        Landmark(id:1, name: "The Metropolitan Museum, NY", imageLink: "museum"),
        Landmark(id: 2, name: "Central Park, NY", imageLink: "centralpark"),
    ]
    
    var body: some View {
        VStack(alignment: .center) {
            Text("My Awesome Travels").font(.title2)
            Spacer()
            
            //Locations
            VStack(alignment: .center) {
                Text("Liked Locations").font(.body)
                HStack() {
                    ForEach(locations, id:\.name) { l in
                        VStack {
                            Image(l.imageLink).resizable().frame(width: 75, height: 75).cornerRadius(200)
                            Text(l.name)
                            
                        }
                        Spacer()
                    }
                    
                }.padding()
                
                TipView(likedLocationTip, arrowEdge: .top)
            
            }
            
            Spacer()
            Text("Sights near you now").font(.system(size: 18, weight: .medium)).padding()
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    ForEach(landmarks, id:\.name) { s in
                        VStack {
                            Image(s.imageLink).resizable().frame(maxWidth: .infinity, maxHeight: 167)
                            HStack {
                                Text(s.name)
                                Spacer()
                                
                                if s.id == 1 {
                                    Image(systemName: "heart").imageScale(.large).popoverTip(landmarkTip)
                                    
                                } else {
                                    Image(systemName: "heart").imageScale(.large)
                                }
                                
                               
                                
                            }
                            
                        }.padding()
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
