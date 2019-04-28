//
//  ImagePicker.swift
//  Agenda
//
//  Created by Willans Júnior on 28/04/19.
//  Copyright © 2019 Alura. All rights reserved.
//

import UIKit

//Protocolo para devolver a imagem
protocol ImagePickerFotoSelecionada {
    func imagePickerFotoSelecionada(_ foto:UIImage)
}

class ImagePicker: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //Delegate utilizado para devolver a foto
    var delegate:ImagePickerFotoSelecionada?
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        //Devolvendo a imagem no delegate
        delegate?.imagePickerFotoSelecionada(image)
        
        picker.dismiss(animated: true, completion: nil)
    }

}
