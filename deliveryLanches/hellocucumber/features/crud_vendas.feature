Feature: CRUD Vendas
	As an gerente do delivery de lanches
	I want to adicionar, remover, ver e editar uma venda
	so that eu vejo que os dados foram salvos corretamente

	Scenario: Criando venda corretamente
		Given Eu estou na tela de vendas
		And Eu clico no botao de nova venda
		When Eu adiciona o id "ID" do produto e a quantidade "x"
		And Eu clico no botao salvar venda
		Then Eu vejo que a venda e criada corretamente

	Scenario: Criar venda com quantidade invalida
		Given Eu estou na tela de vendas
		And Eu clico no botao nova venda
		When Eu adiciona o id "ID" do produto e a quantidade com valor "x"
		And Eu clico no botao salvar venda
		Then Eu vejo a mensagem de erro informando que a quantidade do produto e invalida

	Scenario: Editar venda como campos validos
		Given Eu estou na tela de vendas
		And Eu clico no botao editar venda
		When Eu altero o produto de id "id" para o id "id novo"
		And Eu clico no bota salvar
		Then Eu vejo que a venda e salva com as novas informacoes

	Scenario: Deletar venda existente
		Given Eu estou na tela de vendas
		When Eu clico no botao destroy da venda de id "id"
		Then Eu vejo que a venda e excluida corretamente