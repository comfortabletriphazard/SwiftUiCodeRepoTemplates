                List {
                    ForEach(listViewModel.items) { item in
                        NavigationLink(destination: EmptyView()) { //this line gives the chevron for a detail view
                            ListRowView(item: item)
                        }
                            .onTapGesture {
                                withAnimation(.linear) {
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                }
                .listStyle(PlainListStyle())
