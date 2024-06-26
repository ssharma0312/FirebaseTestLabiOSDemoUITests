//
//  AddPropertyUIView.swift
//  FirebaseTestLabiOSDemo
//
//  Created by Sahil Sharma on 2024-03-26.
//

import SwiftUI

struct AddPropertyUIView: View {
    @Environment(\.dismiss) var dismiss
    @State private var address = ""
    @State private var rent = ""
    @State private var type = "House"
    var list: [String] = ["House", "Apartment", "Basement"]
        
    
    var body: some View {
        Form {
            Section("Property Details") {
                TextField("Address", text: $address)
                TextField("Rent", text: $rent)
                Picker("Type", selection:$type) {
                    ForEach(list, id: \.self) {
                        Text($0)
                    }
                }
            }
            
            Section {
                Button("Save") {
                    dismiss()
                }
            }
            
            
        }
    }
}

#if DEBUG
struct AddPropertyUIView_Previews: PreviewProvider {
    static var previews: some View {
        AddPropertyUIView()
    }
}
#endif

