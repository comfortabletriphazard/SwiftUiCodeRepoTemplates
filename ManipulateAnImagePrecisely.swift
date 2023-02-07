    var body: some View {
        VStack {
          ZStack{
                Image("Image")
                .resizable()
                .scaledToFit()
//                    .scaledToFill()
                    .frame(minWidth: 300, idealWidth:500, maxWidth:600,minHeight: 75, idealHeight:143, maxHeight: 150, alignment: .center)
                Text("Business Name")
                    .font(Font.custom("Avinir-Black",size:20))
                    .foregroundColor(.white)
            }
            
            
            
        }
    }
