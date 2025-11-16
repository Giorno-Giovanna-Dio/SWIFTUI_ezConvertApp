# Convert lbs to kg easily

## What i’ve learned:

- input和output的時候 要用 `format: .number`
- 在設計函數的時候如果沒有新增變數，就不需要使用 `let` ，直接運算即可
- 在寫的過程中，如果不確定有什麼 modifier 可以搭配，可以用 xcode的自動補上機制
- 參考過去的實作code並且做些微更改，有讓知識點更熟悉和牢固
![app demo picture](https://github.com/Giorno-Giovanna-Dio/SWIFTUI_ezConvertApp/blob/main/ezConvert_pic.png)
---
```Swift


import SwiftUI

struct ContentView: View {
    @State private var lbWeight: Double = 0.0

    // Computed property that derives kilograms from the current pounds
    var kilograms: Double {
        lbWeight / 2.20462
    }

    var body: some View {
        NavigationStack {
            Form {
                // input
                Section("convert lbs to Kg") {
                    TextField("Amount", value: $lbWeight, format: .number)
                        .keyboardType(.decimalPad)
                }
                // output
                Section("Weight in Kg") {
                    Text(kilograms, format: .number)
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .padding()
                }
            }
            .navigationTitle("ezConvert")
            
        }
    }
}

#Preview {
    ContentView()
}
```
