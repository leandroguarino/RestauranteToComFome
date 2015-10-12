package restaurantetocomfome

class Produto {

	String nome
	Double preco
	Estoque estoque
	
	static hasMany = [clientes: Cliente, itens: ItemPedido]
	
	static belongsTo = [Cliente]
	
    static constraints = {
		nome nullable:false, blank:false
		preco min:new Double(0)
    }
	
	static mapping ={		
		discriminator column: "tipo", value: "GERAL"
		estoque column: "id_estoque"
		clientes joinTable:[name:"preferencias_clientes", key: "id_produto", column: "id_cliente"]
	}
}
