Feature: CRUD Estoque
	As a gerente do delivery de lanches
	I want to adicionar, remover, ver e editar um produto do/ao estoque
	so that eu vejo que os dados foram salvos corretamente

	Scenario: Adicionar um produto ao estoque corretamente
		Given Eu estou na pagina de criar um novo produto para o estoque
		When Eu crio o produto de descricao 'Bandeja de ovos', preco compra 10 e quantidade 1
		And Clico em criar produto para o estoque
		Then Eu vejo que o produto de descricao 'Bandeja de ovos' foi salvo

	Scenario: Criar um produto com descricao em branco
		Given Eu estou na pagina de criar um novo produto para o estoque
		When Eu crio o produto de descricao '', preco compra 10 e quantidade 2
		And Clico em criar produto para o estoque
		Then Eu vejo uma mensagem de erro
	
	Scenario: Criar um produto com descricao invalida
		Given Eu estou na pagina de criar um novo produto para o estoque
		When Eu crio o produto de descricao 'abc', preco compra 10 e quantidade 1
		And Clico em criar produto para o estoque
		Then Eu vejo uma mensagem de erro

	Scenario: Criar um produto com preco compra invalido
		Given Eu estou na pagina de criar um novo produto para o estoque
		When Eu crio o produto de descricao 'Produto', preco compra 'mil reais' e quantidade 9
		And Clico em criar produto para o estoque
		Then Eu vejo uma mensagem de erro

	Scenario: Criar um produto com quantidade invalida
		Given Eu estou na pagina de criar um novo produto para o estoque
		When Eu crio o produto de descricao 'Produto teste', preco compra 10 e quantidade 'cem'
		And Clico em criar produto para o estoque
		Then Eu vejo uma mensagem de erro

