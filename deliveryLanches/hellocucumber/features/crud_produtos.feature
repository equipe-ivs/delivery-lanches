Feature: CRUD Produtos
	As a gerente do delivery de lanches
	I want to adicionar, remover, ver e editar um produto
	so that eu vejo que os dados foram salvos corretamente

	Scenario: Criar um produto corretamente
		Given Eu estou na pagina de criar um novo produto
		When Eu crio o produto de descricao 'ProdutoTeste' e preco 10
		And Clico em criar produto
		Then Eu vejo que o produto de descricao 'ProdutoTeste' foi salvo

	Scenario: Criar um produto com descricao invalida
		Given Eu estou na pagina de criar um novo produto
		When Eu crio o produto de descricao '' e preco 10
		And Clico em criar produto
		Then Eu vejo que o produto de descricao '' nao foi salvo
	
	Scenario: Criar um produto com preco invalido
		Given Eu estou na pagina de criar um novo produto
		When Eu crio o produto de descricao 'ProdutoTeste' e preco 0
		And Clico em criar produto
		Then Eu vejo que o produto de descricao 'ProdutoTeste' nao foi salvo
