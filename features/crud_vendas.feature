Feature: CRUD Vendas
	As an gerente do delivery de lanches
	I want to adicionar, remover, ver e editar uma venda
	so that eu vejo que os dados foram salvos corretamente
  
	Scenario: Criando venda corretamente
		Given Eu estou na tela de nova venda
		When Eu crio uma nova venda com o cliente 'DeliveryBot', o produto 'Misto' e quantidade 1
		And Eu clico em criar venda
		Then Eu vejo que o produto 'Misto' foi salvo

	Scenario: Criando venda com produto em branco
		Given Eu estou na tela de nova venda
		When Eu crio uma nova venda com o cliente 'DeliveryBot', o produto 'Please select' e quantidade 1
		And Eu clico em criar venda
		Then Eu vejo uma mensagem de erro

	Scenario: Criando venda sem preencher o campo de cliente
		Given Eu estou na tela de nova venda
		When Eu crio uma nova venda com o cliente 'Please select', o produto 'Misto' e quantidade 1
		And Eu clico em criar venda
		Then Eu vejo uma mensagem de erro

  	Scenario: Criando venda com cliente em branco
		Given Eu estou na tela de nova venda
		When Eu crio uma nova venda com o cliente 'Please select', o produto 'Misto' e quantidade 1
		And Eu clico em criar venda
		Then Eu vejo uma mensagem de erro

	Scenario: Criando venda com cliente e produto em branco
		Given Eu estou na tela de nova venda
		When Eu crio uma nova venda com o cliente 'Please select', o produto 'Please select' e quantidade 1
		And Eu clico em criar venda
		Then Eu vejo mensagens de erro
