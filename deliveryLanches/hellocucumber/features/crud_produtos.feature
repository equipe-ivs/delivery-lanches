Feature: CRUD Produtos
	As a gerente do delivery de lanches
	I want to adicionar, remover, ver e editar um produto
	so that eu vejo que os dados foram salvos corretamente

	Scenario: Criar um produto corretamente
		Given Eu estou na pagina de criar um novo produto
		When Eu crio o produto de id 01, de descricao 'ProdutoTeste' e preco 10.00
		And Clico em criar produto
		Then Eu vejo que o produto de id 01 e de descricao 'ProdutoTeste' foi salvo


	Scenario: Criar um produto com descricao invalida
		Given Eu estou na pagina de criar um novo produto
		When Eu crio o produto de id 01, de descricao '' e preco 10.00
		And Clico em criar produto
		Then Eu vejo que o produto de id 01 e de descricao '' nao foi salvo

	
	
	Scenario: Criar um produto com preco invalido
		Given Eu estou na pagina de criar um novo produto
		When Eu crio o produto de id 01, de descricao 'ProdutoTeste' e preco 00.00
		And Clico em criar produto
		Then Eu vejo que o produto de id 01 e de descricao 'ProdutoTeste' nao foi salvo
