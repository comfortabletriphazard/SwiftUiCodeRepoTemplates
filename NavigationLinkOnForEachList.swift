Section {
                    ForEach(usedItemNames, id: \.self) { word in
                        NavigationLink(destination: Text("Second view")) {
                                Text(word)
                    }
                }
            }
