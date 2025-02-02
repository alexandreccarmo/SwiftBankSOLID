import Foundation

protocol PostDisplay {
    func display()
}

class PostTextDisplay: PostDisplay {
    func display() {
        print("Post Text Display")
    }
}

class PostImageDisplay: PostDisplay {
    func display() {
        print("Post Image Display")
    }
}

class PostVideoDisplay: PostDisplay {
    func display() {
        print("Post Video Display")
    }
}

class PostDataDisplay {
    let postDisplay: PostDisplay
    
    init(postDisplay: PostDisplay) {
        self.postDisplay = postDisplay
    }
}

let postTextDisplay = PostTextDisplay()
let postImageDisplay = PostImageDisplay()
let postVideoDisplay = PostVideoDisplay()

let postDataDisplayText = PostDataDisplay(postDisplay: postTextDisplay)
let postDataDisplayImage = PostDataDisplay(postDisplay: postImageDisplay)
let postDataDisplayVideo = PostDataDisplay(postDisplay: postVideoDisplay)

postDataDisplayImage.postDisplay.display()
