Feature: CRUD Vendas
	As an gerente do delivery de lanches
	I want to adicionar, remover, ver e editar uma venda
	so that eu vejo que os dados foram salvos corretamente
  
	Scenario: Criando venda corretamente
		Given Eu estou na tela de nova venda
		When Eu crio uma nova venda para o cliente 'DeliveryBot'
		And Eu clico em criar venda
		Then Eu vejo que a venda foi salva

	Scenario: Criando venda com produtos
		Given Eu estou na tela de nova venda
		And Crio uma nova venda para o cliente 'DeliveryBot'
		When Eu clico em adicionar
		Then Eu vejo que os dados foram salvos

  	Scenario: Criando venda com cliente em branco
		Given Eu estou na tela de nova venda
		When Eu crio uma nova venda com o cliente 'Please select'
		And Eu clico em criar venda
		Then Eu vejo uma mensagem de erro

	Scenario: Criando venda com dois produtos
		Given Eu estou na tela de nova venda
		And Crio uma nova venda para o cliente 'DeliveryBot'
		When Eu clico em adicionar duas vezes
		Then Vejo que os dados foram salvos

	Scenario: Criando venda com mais de dois produtos
		Given Eu estou na tela de nova venda
		And Crio uma nova venda para o cliente 'DeliveryBot'
		When Eu clico em adicionar cinco vezes
		Then Eu vejo que os dados foram salvos corretamente