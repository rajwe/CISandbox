//
//  SwiftUIView.swift
//  
//
//  Created by Raj Balaiyan on 05/06/2023.
//

import SwiftUI

public struct MySwiftUIView: View {
    public init() {}

    public var body: some View {
        Text(Localized.Welcome.View.title)
    }
}

struct MySwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MySwiftUIView()
    }
}
