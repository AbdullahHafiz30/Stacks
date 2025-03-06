# StacksView Project

A simple SwiftUI project that demonstrates how to use different stacks (ZStack, VStack, and HStack) and basic SwiftUI components. This project shows a background color, an image, a text element, and two buttons aligned side by side.

## Features

1. **ZStack**  
   - Used to layer views on top of each other.  
   - Includes a full-screen background color.

2. **VStack**  
   - Vertically stacks the image, text, and button row.

3. **HStack**  
   - Horizontally aligns the two buttons (Left and Right).

4. **Customizations**  
   - Image resizable with a set width and height.  
   - Text with large title font and white color.  
   - Buttons with custom background colors, corner radius, and headline font.

## How It Works

1. **ZStack** is used to place the blue background color behind everything.
2. **VStack** arranges the image, text, and the horizontal stack of buttons in a vertical list.
3. **HStack** places the "Left" and "Right" buttons side by side, with a `Spacer()` in between them.

```swift
import SwiftUI

struct StacksView: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea(edges: .all)

            VStack {
                Image(systemName: "sun.max")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.yellow)
                    .cornerRadius(50)
                    .shadow(radius: 5)

                Text("Hello, My Name Is Abdullah hafiz")
                    .padding()
                    .multilineTextAlignment(.center)
                    .font(.largeTitle)
                    .foregroundColor(.white)

                HStack {
                    Button(action: {}) {
                        Text("Left")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                    }

                    Spacer()

                    Button(action: {}) {
                        Text("Right")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    StacksView()
}
```

# How to Run
1. **Open Xcode** on your Mac.  
2. **Create a new SwiftUI project** or add this `StacksView` file to an existing SwiftUI project.  
3. **Build and run** on the simulator or a real device.  
4. The preview will show in the Canvas, or you can use the SwiftUI Preview to see the layout in real-time.

## Requirements
- **Xcode**: Version 14 or higher recommended.  
- **Swift**: Version 5.7 or higher recommended.  
- **iOS**: Works on iOS 15 and above (adjust as needed).

## License
Feel free to use this code in any way you like. No attribution required.

