        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

            if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                guard let data = image.jpegData(compressionQuality: 1.0), let compressedImage = UIImage(data: data)
                
                else {
                    print("Error occurred compressing image. ")
                    return
                }
                parent.selectedImage = image
            }

            parent.presentationMode.wrappedValue.dismiss()
        }
