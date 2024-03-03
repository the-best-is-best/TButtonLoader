//
//  ButtonLoader.swift
//  TButtonLoader
//
//  Created by 52ndSolution on 03/03/2024.
//

import SwiftUI

public struct ButtonLoader: View {
   
    
      var isEnabled: Binding<Bool>
    var isLoading: Binding<Bool>
    let mainView: AnyView
    let loadingView: AnyView
    let onPressed: () -> Void
  
  public  init( isLoading: Binding<Bool>, mainView: AnyView, loadingView: AnyView, isEnabled: Binding<Bool> , onPressed: @escaping () -> Void) {
        self.isEnabled = isEnabled
        
        self.isLoading = isLoading
        self.mainView = mainView
        self.loadingView = loadingView
        self.onPressed = onPressed
    }
    
    
    public  var body: some View {
        HStack {
            Spacer()
            Button  {
                if(!isLoading.wrappedValue){
                    onPressed()
                }
            } label: {
                if(!isLoading.wrappedValue){
                    
                   mainView
                    
                }
                if(isLoading.wrappedValue){
                   loadingView
                        
                }
                
            }.padding().disabled(!isEnabled.wrappedValue)
            Spacer()
        }
           
    }
}

#Preview {
    ButtonLoader(
        isLoading: .constant(false), mainView:AnyView(Text("Click")), loadingView: AnyView(Text("Loading") ), isEnabled: .constant(true), onPressed: {
            
        }
    )
}
