package restaurantetocomfome

import grails.converters.JSON

class VendaController {

    def vendaService

    def index() {
        def produtos = Produto.list()
        render(model: [produtos: produtos], view: "index")
    }

    def salvar(){
        //recebe os ids dos produtos
        def produto = params.produto
        //recebe as quantidades digitadas pelo usuário
        def quantidade = params.quantidade

        def mensagem = [:]
        //este try...catch é usado para receber possíveis Exceptions do VendaService
        try {
            //chama o service para salvar a venda (pedido)
            vendaService.salvar(params.nome, params.email, params.produto.toList(), params.quantidade.toList())
            mensagem += ["resposta":"OK"]
        }catch(Exception excecao){
            //se o método salvar do Service retornar alguma exceção, a mensagem da exceção será enviada do controller para a view
            mensagem += ["resposta":excecao.message]
        }
        //envia o mapa "mensagem" para a view
        render mensagem as JSON
    }
}
