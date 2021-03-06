import SwiftUI

// emoji picker used in note page and journal customization

// category = emoji
// index = position of emoji in picker

var Categories: [Category] = []
var lastIndex: Int = 0

struct Category: Hashable {
    let id: Int
    var emoji: String
    var selected: Bool

    init (id: Int, emoji: String, selected: Bool) {
        self.id = id
        self.emoji = emoji
        self.selected = selected
    }
}

// emoji picker for notebook emoji taggin
struct EmojiPicker: View {
    
    @Binding var selectedIndex: Int
    @Binding var selected : String
    @State private var currentIndex: Int = 0
    @Namespace private var ns
    
    //add all the emojis
    init(selectedIndex: Binding<Int>, selected: Binding<String>) {
        _selectedIndex = selectedIndex
        _selected = selected
        Categories.removeAll()
        Categories.append(Category(id: 0, emoji: "âïļ", selected: true))
        Categories.append(Category(id: 1, emoji: "ðĪĐ", selected: false))
        Categories.append(Category(id: 2, emoji: "ðĨģ", selected: false))
        Categories.append(Category(id: 3, emoji: "ð", selected: false))
        Categories.append(Category(id: 4, emoji: "ð", selected: false))
        Categories.append(Category(id: 5, emoji: "ð", selected: false))
        Categories.append(Category(id: 6, emoji: "ðĨļ", selected: false))
        Categories.append(Category(id: 7, emoji: "ðĪŊ", selected: false))
        Categories.append(Category(id: 8, emoji: "ðĪ ", selected: false))
        Categories.append(Category(id: 9, emoji: "ð", selected: false))
        Categories.append(Category(id: 10, emoji: "ð", selected: false))
        Categories.append(Category(id: 11, emoji: "ðĪŠ", selected: false))
        Categories.append(Category(id: 12, emoji: "ð", selected: false))
        Categories.append(Category(id: 13, emoji: "ð", selected: false))
        Categories.append(Category(id: 14, emoji: "ðĨē", selected: false))
        Categories.append(Category(id: 15, emoji: "ð", selected: false))
        Categories.append(Category(id: 16, emoji: "âšïļ", selected: false))
        Categories.append(Category(id: 17, emoji: "ð", selected: false))
        Categories.append(Category(id: 18, emoji: "ð", selected: false))
        Categories.append(Category(id: 19, emoji: "ð", selected: false))
        Categories.append(Category(id: 20, emoji: "ðŽ", selected: false))
        Categories.append(Category(id: 21, emoji: "ð", selected: false))
        Categories.append(Category(id: 22, emoji: "ð", selected: false))
        Categories.append(Category(id: 23, emoji: "ð", selected: false))
        Categories.append(Category(id: 24, emoji: "âđïļ", selected: false))
        Categories.append(Category(id: 25, emoji: "ð", selected: false))
        Categories.append(Category(id: 26, emoji: "ðĪ", selected: false))
        Categories.append(Category(id: 27, emoji: "ð§", selected: false))
        Categories.append(Category(id: 28, emoji: "ðĪ", selected: false))
        Categories.append(Category(id: 29, emoji: "ðĨī", selected: false))
        Categories.append(Category(id: 30, emoji: "ðĐ", selected: false))
        Categories.append(Category(id: 31, emoji: "ð­", selected: false))
        Categories.append(Category(id: 32, emoji: "ð", selected: false))
        Categories.append(Category(id: 33, emoji: "ð", selected: false))
        Categories.append(Category(id: 34, emoji: "ðģ", selected: false))
        Categories.append(Category(id: 35, emoji: "ðĩ", selected: false))
        Categories.append(Category(id: 36, emoji: "ðĪ", selected: false))
        Categories.append(Category(id: 37, emoji: "ðĨą", selected: false))
        Categories.append(Category(id: 38, emoji: "ðĪĒ", selected: false))
        Categories.append(Category(id: 39, emoji: "ðĪ", selected: false))
        Categories.append(Category(id: 40, emoji: "ðĨĩ", selected: false))
        Categories.append(Category(id: 41, emoji: "ðĪŽ", selected: false))
        Categories.append(Category(id: 42, emoji: "âïļ", selected: true))
        Categories.append(Category(id: 43, emoji: "ð", selected: false))
        Categories.append(Category(id: 44, emoji: "ð", selected: false))
        Categories.append(Category(id: 45, emoji: "ð", selected: false))
        Categories.append(Category(id: 46, emoji: "ð", selected: false))
        Categories.append(Category(id: 47, emoji: "ðą", selected: false))
        Categories.append(Category(id: 48, emoji: "ðš", selected: false))
        Categories.append(Category(id: 49, emoji: "ðĐ", selected: false))
        Categories.append(Category(id: 50, emoji: "ð", selected: false))
        Categories.append(Category(id: 51, emoji: "ð§Đ", selected: false))
        Categories.append(Category(id: 52, emoji: "ðē", selected: false))
        Categories.append(Category(id: 53, emoji: "ðĪđââïļ", selected: false))
        Categories.append(Category(id: 54, emoji: "ðž", selected: false))
        Categories.append(Category(id: 55, emoji: "ð", selected: false))
        Categories.append(Category(id: 56, emoji: "âïļ", selected: false))
        Categories.append(Category(id: 57, emoji: "ð", selected: false))
        Categories.append(Category(id: 58, emoji: "âŊïļ", selected: false))
        Categories.append(Category(id: 59, emoji: "âŪïļ", selected: false))
        Categories.append(Category(id: 60, emoji: "ð", selected: false))
        Categories.append(Category(id: 61, emoji: "âïļ", selected: false))
        Categories.append(Category(id: 62, emoji: "âŠïļ", selected: false))
        Categories.append(Category(id: 63, emoji: "âļïļ", selected: false))
        Categories.append(Category(id: 64, emoji: "âĄïļ", selected: false))
        Categories.append(Category(id: 65, emoji: "ðŊ", selected: false))
        Categories.append(Category(id: 66, emoji: "ð­", selected: false))
        Categories.append(Category(id: 67, emoji: "ðŊ", selected: false))
        Categories.append(Category(id: 68, emoji: "ðŠ", selected: false))
        Categories.append(Category(id: 69, emoji: "ð§ðžââïļ", selected: false))
        Categories.append(Category(id: 70, emoji: "âðž", selected: false))
        Categories.append(Category(id: 71, emoji: "ððž ", selected: false))
        Categories.append(Category(id: 72, emoji: "ð§ð―ââïļ", selected: false))
        Categories.append(Category(id: 73, emoji: "âð―", selected: false))
        Categories.append(Category(id: 74, emoji: "ðð―", selected: false))
        Categories.append(Category(id: 75, emoji: "ð§ðūââïļ", selected: false))
        Categories.append(Category(id: 76, emoji: "âðū", selected: false))
        Categories.append(Category(id: 77, emoji: "ððū", selected: false))
        Categories.append(Category(id: 78, emoji: "ð§ðŋââïļ", selected: false))
        Categories.append(Category(id: 79, emoji: "âðŋ", selected: false))
        Categories.append(Category(id: 80, emoji: "ððŋ", selected: false))
        Categories.append(Category(id: 81, emoji: "ð", selected: false))
        Categories.append(Category(id: 82, emoji: "ðĪ", selected: false))
        Categories.append(Category(id: 83, emoji: "ðū", selected: false))
        Categories.append(Category(id: 84, emoji: "âïļ", selected: true))
    }

    
    var body: some View {
        VStack {
            
            ScrollView(.horizontal, showsIndicators: false) {
                ScrollViewReader { scrollView in
                    HStack(spacing: 35) {
                        ForEach(Categories, id: \.self) { item in
                            if item.id == currentIndex {
                                ZStack() {
                                    Text(item.emoji)
                                        .font(.system(size: 70))
                                        .bold()
                                        .layoutPriority(1)
                                        .scaleEffect(1.1)
                                        .foregroundColor(.black )
                                    VStack() {
                                        Rectangle().frame(height: 30)
                                            .padding(.top, 100)
                                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8470588235)))
                                            .opacity(0.0)
                                        
                                    }
                                    .matchedGeometryEffect(id: "animation", in: ns)
                                }
                            } else {
                                Text(item.emoji)
                                    .onTapGesture {
                                        withAnimation {
                                            currentIndex = item.id
                                            selectedIndex = currentIndex
                                            
                                            
                                            if (item.emoji == "âïļ") {
                                                selected = ""
                                            } else {
                                                selected = item.emoji
                                            }
                                            
                                            scrollView.scrollTo(item)
                                        }
                                        
                                    }
                                    .opacity(0.4)
                                    .scaleEffect(1.0)
                                    .font(.system(size: 70))
                            }
                        }
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 20)
                }
            }
        }
    }
}


// emoji picker for journal customization
struct EmojiPickerB: View {
    
    @Binding var selectedIndex: Int
    @Binding var selected : String
    @State private var currentIndex: Int = 0
    @Namespace private var ns
    
    //add all the emojis
    init(selectedIndex: Binding<Int>, selected: Binding<String>) {
        _selectedIndex = selectedIndex
        _selected = selected
        Categories.removeAll()
        Categories.append(Category(id: 0, emoji: "âïļ", selected: true))
        Categories.append(Category(id: 1, emoji: "ð", selected: false))
        Categories.append(Category(id: 2, emoji: "ð", selected: false))
        Categories.append(Category(id: 3, emoji: "ð", selected: false))
        Categories.append(Category(id: 4, emoji: "ð", selected: false))
        Categories.append(Category(id: 5, emoji: "ðą", selected: false))
        Categories.append(Category(id: 6, emoji: "ðš", selected: false))
        Categories.append(Category(id: 7, emoji: "ðĐ", selected: false))
        Categories.append(Category(id: 8, emoji: "ð", selected: false))
        Categories.append(Category(id: 91, emoji: "ð§Đ", selected: false))
        Categories.append(Category(id: 10, emoji: "ðē", selected: false))
        Categories.append(Category(id: 11, emoji: "ðĪđââïļ", selected: false))
        Categories.append(Category(id: 12, emoji: "ðž", selected: false))
        Categories.append(Category(id: 13, emoji: "ð", selected: false))
        Categories.append(Category(id: 14, emoji: "âïļ", selected: false))
        Categories.append(Category(id: 15, emoji: "ð", selected: false))
        Categories.append(Category(id: 16, emoji: "âŊïļ", selected: false))
        Categories.append(Category(id: 17, emoji: "âŪïļ", selected: false))
        Categories.append(Category(id: 18, emoji: "ð", selected: false))
        Categories.append(Category(id: 19, emoji: "âïļ", selected: false))
        Categories.append(Category(id: 20, emoji: "âŠïļ", selected: false))
        Categories.append(Category(id: 21, emoji: "âļïļ", selected: false))
        Categories.append(Category(id: 22, emoji: "âĄïļ", selected: false))
        Categories.append(Category(id: 23, emoji: "ðŊ", selected: false))
        Categories.append(Category(id: 24, emoji: "ð­", selected: false))
        Categories.append(Category(id: 25, emoji: "ðŊ", selected: false))
        Categories.append(Category(id: 26, emoji: "ðŠ", selected: false))
        Categories.append(Category(id: 27, emoji: "ð§ðžââïļ", selected: false))
        Categories.append(Category(id: 28, emoji: "âðž", selected: false))
        Categories.append(Category(id: 29, emoji: "ððž ", selected: false))
        Categories.append(Category(id: 30, emoji: "ð§ð―ââïļ", selected: false))
        Categories.append(Category(id: 31, emoji: "âð―", selected: false))
        Categories.append(Category(id: 32, emoji: "ðð―", selected: false))
        Categories.append(Category(id: 33, emoji: "ð§ðūââïļ", selected: false))
        Categories.append(Category(id: 34, emoji: "âðū", selected: false))
        Categories.append(Category(id: 35, emoji: "ððū", selected: false))
        Categories.append(Category(id: 36, emoji: "ð§ðŋââïļ", selected: false))
        Categories.append(Category(id: 37, emoji: "âðŋ", selected: false))
        Categories.append(Category(id: 38, emoji: "ððŋ", selected: false))
        Categories.append(Category(id: 39, emoji: "ð", selected: false))
        Categories.append(Category(id: 40, emoji: "ðĪ", selected: false))
        Categories.append(Category(id: 41, emoji: "ðū", selected: false))
        Categories.append(Category(id: 42, emoji: "ðĪĐ", selected: true))
        Categories.append(Category(id: 43, emoji: "ðĨģ", selected: false))
        Categories.append(Category(id: 44, emoji: "ð", selected: false))
        Categories.append(Category(id: 45, emoji: "ð", selected: false))
        Categories.append(Category(id: 46, emoji: "ð", selected: false))
        Categories.append(Category(id: 47, emoji: "ðĨļ", selected: false))
        Categories.append(Category(id: 48, emoji: "ðĪŊ", selected: false))
        Categories.append(Category(id: 49, emoji: "ðĪ ", selected: false))
        Categories.append(Category(id: 50, emoji: "ð", selected: false))
        Categories.append(Category(id: 51, emoji: "ð", selected: false))
        Categories.append(Category(id: 52, emoji: "ðĪ ", selected: false))
        Categories.append(Category(id: 53, emoji: "ð", selected: false))
        Categories.append(Category(id: 54, emoji: "ð", selected: false))
        Categories.append(Category(id: 55, emoji: "ðĨē", selected: false))
        Categories.append(Category(id: 56, emoji: "ð", selected: false))
        Categories.append(Category(id: 57, emoji: "âšïļ", selected: false))
        Categories.append(Category(id: 58, emoji: "ð", selected: false))
        Categories.append(Category(id: 59, emoji: "ð", selected: false))
        Categories.append(Category(id: 60, emoji: "ð", selected: false))
        Categories.append(Category(id: 61, emoji: "ðŽ", selected: false))
        Categories.append(Category(id: 62, emoji: "ð", selected: false))
        Categories.append(Category(id: 63, emoji: "ð", selected: false))
        Categories.append(Category(id: 64, emoji: "ð", selected: false))
        Categories.append(Category(id: 65, emoji: "âđïļ", selected: false))
        Categories.append(Category(id: 66, emoji: "ð", selected: false))
        Categories.append(Category(id: 67, emoji: "ðĪ", selected: false))
        Categories.append(Category(id: 68, emoji: "ð§", selected: false))
        Categories.append(Category(id: 69, emoji: "ðĪ", selected: false))
        Categories.append(Category(id: 70, emoji: "ðĨī", selected: false))
        Categories.append(Category(id: 71, emoji: "ðĐ", selected: false))
        Categories.append(Category(id: 72, emoji: "ð­", selected: false))
        Categories.append(Category(id: 73, emoji: "ð", selected: false))
        Categories.append(Category(id: 74, emoji: "ð", selected: false))
        Categories.append(Category(id: 75, emoji: "ðģ", selected: false))
        Categories.append(Category(id: 76, emoji: "ðĩ", selected: false))
        Categories.append(Category(id: 77, emoji: "ðĪ", selected: false))
        Categories.append(Category(id: 78, emoji: "ðĨą", selected: false))
        Categories.append(Category(id: 79, emoji: "ðĪĒ", selected: false))
        Categories.append(Category(id: 80, emoji: "ðĪ", selected: false))
        Categories.append(Category(id: 81, emoji: "ðĨĩ", selected: false))
        Categories.append(Category(id: 82, emoji: "ðĪŽ", selected: false))
    }

    
    var body: some View {
        VStack {
            
            ScrollView(.horizontal, showsIndicators: false) {
                ScrollViewReader { scrollView in
                    HStack(spacing: 35) {
                        ForEach(Categories, id: \.self) { item in
                            if item.id == currentIndex {
                                ZStack() {
                                    Text(item.emoji)
                                        .font(.system(size: 70))
                                        .bold()
                                        .layoutPriority(1)
                                        .scaleEffect(1.1)
                                        .foregroundColor(.black )
                                    VStack() {
                                        Rectangle().frame(height: 30)
                                            .padding(.top, 100)
                                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8470588235)))
                                            .opacity(0.0)
                                        
                                    }
                                    .matchedGeometryEffect(id: "animation", in: ns)
                                }
                            } else {
                                Text(item.emoji)
                                    .onTapGesture {
                                        withAnimation {
                                            currentIndex = item.id
                                            selectedIndex = currentIndex
                                            
                                            
                                            if (item.emoji == "âïļ") {
                                                selected = ""
                                            } else {
                                                selected = item.emoji
                                            }
                                            
                                            scrollView.scrollTo(item)
                                        }
                                        
                                    }
                                    .opacity(0.4)
                                    .scaleEffect(1.0)
                                    .font(.system(size: 70))
                            }
                        }
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 20)
                }
            }
        }
    }
}
