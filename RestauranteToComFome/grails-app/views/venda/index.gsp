<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Faça seu pedido</title>

    <script type="text/javascript">
        function pedidoSalvo(data){
            if (data.resposta == "OK"){
                $("input[type=number]").val("0")
                $("input[type=text]").val("")
                alert("Seu pedido foi registrado com sucesso!")
            }else{
                alert("Vish... deu um POBREMINHA: "+data.resposta)
            }
        }
    </script>

</head>

<body>
    <g:formRemote name="formPedido" id="formPedido" url="[controller: 'venda',action: 'salvar']" onSuccess="pedidoSalvo(data)">
        <h2>Cliente</h2>
        <label>Nome</label> <input type="text" name="nome" /><br />
        <label>E-mail</label> <input type="text" name="email" /><br />

        <h2>Produtos</h2>
        <g:each in="${produtos}" var="produto">
            <input type="number" name="quantidade" value="0" /> R$ ${String.format("%.2f",produto.preco)} ${produto.nome} <br />
            <input type="hidden" name="produto" value="${produto.id}" />
        </g:each>

        <input type="submit" name="salvarPedido" value="Salvar" />

    </g:formRemote>
</body>
</html>