Feature: CRUD Produtos
	As a gerente do delivery de lanches
	I want to adicionar, remover, ver e editar um produto
	so that eu vejo que os dados foram salvos corretamente

	Scenario: Criar um produto corretamente
		Given Eu estou na pagina de criar um novo produto
		When Eu crio o produto de descricao 'Misto' e preco 2
		And Clico em criar produto
		Then Eu vejo que o produto de descricao 'Misto' foi salvo

	Scenario: Criar um produto com descricao em branco
		Given Eu estou na pagina de criar um novo produto
		When Eu crio o produto de descricao '' e preco 10
		And Clico em criar produto
		Then Eu vejo uma mensagem de erro
	
	Scenario: Criar um produto com descricao invalida
		Given Eu estou na pagina de criar um novo produto
		When Eu crio o produto de descricao 'Prod' e preco 10
		And Clico em criar produto
		Then Eu vejo uma mensagem de erro

	Scenario: Criar um produto com preco invalido
		Given Eu estou na pagina de criar um novo produto
		When Eu crio o produto de descricao 'Produto' e preco 'mil reais'
		And Clico em criar produto
		Then Eu vejo uma mensagem de erro

	Scenario: Criar um produto com em branco
		Given Eu estou na pagina de criar um novo produto
		When Eu crio o produto de descricao 'Produto' e preco ''
		And Clico em criar produto
		Then Eu vejo uma mensagem de erro
