import UIKit

class Refeicao3 {
    
    //MARK: Atributos
    var nome: String
    var felicidade: String
    var itens: [Item] = []

    //MARK: - Construtor
    
   init(con_nome: String, con_felicidade: String) {
        self.nome = con_nome
        self.felicidade = con_felicidade
    }
    
    // MARK: -Metodos
    
    
    func totalDeCalorias() -> Double {
        var totalCalorias = 0.0
        for func_item in itens {
            totalCalorias += func_item.calorias
        }
        return totalCalorias
    }
}

class Item {

    let nome: String
    var calorias: Double


    init(con_nome: String, con_calorias: Double) {
        self.nome = con_nome
        self.calorias = con_calorias
    }
}



let arroz = Item(con_nome: "Arroz", con_calorias: 51.0)
let feijao = Item(con_nome: "Feijao", con_calorias: 90.0)
let contraFile = Item(con_nome: "Contra File", con_calorias: 287.0)

let refeicao = Refeicao3(con_nome: "Almoço", con_felicidade: "5")
refeicao.itens.append(arroz)
refeicao.itens.append(feijao)
refeicao.itens.append(contraFile)

print(refeicao.nome)
if let primeiroItemLista = refeicao.itens.first {
    print(primeiroItemLista.nome)
}

print(refeicao.totalDeCalorias())

