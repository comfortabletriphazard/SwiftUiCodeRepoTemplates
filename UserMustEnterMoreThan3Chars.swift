    func savedButtonPress() {
        
        if textIsAppropriate() == true {
        listViewModel.addItem(title: textFieldText)
        presentationMode.wrappedValue.dismiss() //go back one in the view hierarchy
        
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            return false
        }
        return true
    }
}
