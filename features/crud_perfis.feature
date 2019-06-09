Feature: CRUD Perfis
	As a gerente do delivery de lanches
	I want to adicionar, remover, ver e editar um perfil (cliente, funcionario ou gerente)
	so that eu vejo que os dados foram salvos corretamente

	Scenario: Criar um funcionario corretamente
		Given Eu estou na pagina de criar um novo funcionario
		When Eu crio o funcionario de nome 'Rogerio', de CPF 00000000000 e de senha 'socorrodeus'
		And Clico em salvar funcionario
		Then Eu vejo que o funcionario foi salvo corretamente

	Scenario: Criar um funcionario com nome em branco
		Given Eu estou na pagina de criar um novo funcionario
		When Eu crio o funcionario de nome '', de CPF 11111111111 e de senha 'socorrodeus'
		And Clico em salvar funcionario
		Then Eu vejo uma mensagem de erro
	
	Scenario: Criar um funcionario com nome invalido
		Given Eu estou na pagina de criar um novo funcionario
		When Eu crio o funcionario de nome 'Rog', de CPF 22222222222 e de senha 'socorrodeus'
		And Clico em salvar funcionario
		Then Eu vejo uma mensagem de erro

	Scenario: Criar um funcionario com CPF em branco
		Given Eu estou na pagina de criar um novo funcionario
		When Eu crio o funcionario de nome 'Rogerio', de CPF 000 e de senha 'socorrodeus'
		And Clico em salvar funcionario
		Then Eu vejo uma mensagem de erro

	Scenario: Criar um funcionario com senha em branco
		Given Eu estou na pagina de criar um novo funcionario
		When Eu crio o funcionario de nome 'Rogerio', de CPF 33333333333 e de senha ''
		And Clico em salvar funcionario
		Then Eu vejo uma mensagem de erro
