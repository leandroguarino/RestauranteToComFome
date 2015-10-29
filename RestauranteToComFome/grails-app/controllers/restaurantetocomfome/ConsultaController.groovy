package restaurantetocomfome

class ConsultaController {

    def index() { 
		def lista = []
		
		/*
		lista = Pedido.createCriteria().list{
			sizeGt("itens",1)
		}*/
		
		lista = Pedido.executeQuery("select ped from Pedido ped where ped.itens.size > 1")
		
		render(view:"index", model: [lista: lista.dataHora])
	}
}
