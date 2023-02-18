      //This gets the id of the item in the list that the user clicks on
        
    func updateItem(item: ItemModel) {
        
        if let index = items.firstIndex { (existingItem) -> Bool in
            return existingItem.id == item.id
        } {
            //run this code
        }
        
    }

    func updateItem(item: ItemModel) {
//below line of code is the same as line 5 and 6
        if let index = items.firstIndex(where: { $0.id == item.id}) {
            
        }
    }

//update item with new status i.e true (done), false (not done):
    func updateItem(item: ItemModel) {
        
        if let index = items.firstIndex(where: { $0.id == item.id}) {
            items[index] = ItemModel(title: item.title, isComplete: !item.isComplete)
        }
    }
