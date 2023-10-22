//

import SwiftUI
import TipKit

struct LikedLocationTip : Tip {
    var title: Text {
        Text("Your Location Favorites")
    }
    
    var message: Text? {
        Text("Tap a Location to find your favorites in that location")
    }
    
    var options: [TipOption] {
        Tips.MaxDisplayCount(1)
    }
    
}
