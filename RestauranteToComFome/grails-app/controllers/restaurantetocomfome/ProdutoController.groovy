package restaurantetocomfome

class ProdutoController {
	
    def index() { 
		
		def lista = Produto.list()		
		render(view:"/produto/index", model: [produtos: lista])
	}
	
	def adicionar(){
		
		Produto novoProduto=new Produto()
		novoProduto.preco = 0
		novoProduto.estoque = new Estoque()
		novoProduto.estoque.quantidade = 0
		novoProduto.estoque.quantidadeMinima = 0
		
		render(template:"/produto/form", model: [produto: novoProduto])
	}
	
	def alterar(){
		Produto produto = Produto.get(params.id)
		render(template:"/produto/form", model: [produto: produto])
	}
	
	def lista(){
		def lista = Produto.list()
		render(template:"/produto/lista", model:[produtos: lista])
	}
	
	def salvar(){
		Produto produto = null
		if (params.id)
		{
			produto = Produto.get(params.id)
		}else{
			produto = new Produto()
			produto.estoque = new Estoque()
		}		
		produto.nome = params.nome
		produto.preco = params.preco.toDouble()
		produto.estoque = new Estoque()
		produto.estoque.quantidade = params.quantidade.toInteger()
		produto.estoque.quantidadeMinima = params.quantidadeMinima.toInteger()
		
		produto.validate()
		if (!produto.hasErrors()){
			
			produto.save(flush:true)
			render("Salvou com sucesso")
		}else{
			render("Ops... deu pau!")
		}
	}
	
	def excluir(){
		Produto produto = Produto.get(params.id)
		produto.delete(flush:true)
		
		def lista = Produto.list()
		render(template:"/produto/lista", model:[produtos: lista])		
	}
}
