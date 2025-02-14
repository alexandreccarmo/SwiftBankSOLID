import Foundation


protocol Saveable {
    func save()
}

class Document {
    
}

class TextDocument: Document, Saveable {
    func save() {
        print("Salvando documento de texto")
    }
}

class OnlyReadingDocument: Document {
    
}

func saveDocumentIfNeeded(document: Document){
    
    if let saveableDocument = document as? Saveable {
        saveableDocument.save()
    } else {
        print("Este documento nao pode ser salvo")
    }
    
}

saveDocumentIfNeeded(document: TextDocument())
saveDocumentIfNeeded(document: OnlyReadingDocument())
