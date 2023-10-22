//

import SwiftUI
import TipKit

struct FavoriteLandmarkTip : Tip {
    var title: Text {
        Text("Save as a Favorite")
    }
    
    var message: Text? {
        Text("Save your preferred locations as a Favorite")
    }
    
    var options: [TipOption] {
        Tips.MaxDisplayCount(1)
    }
    
}
