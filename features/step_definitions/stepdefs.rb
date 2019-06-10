# Steps CRUD Produtos

Given("Eu estou na pagina de criar um novo produto") do
  visit 'http://localhost:3000/produtos/new'
  expect(page).to have_content('Novo Produto')
end

When("Eu crio o produto de descricao {string} e preco {int}") do |descricao, preco|
  fill_in 'produto[descricao]', :with => descricao
  fill_in 'produto[preco]', :with => preco
end

When("Clico em criar produto") do
  click_button 'Create Produto'
end

Then("Eu vejo que o produto de descricao {string} foi salvo") do |descricao|
  expect(page).to have_content(descricao)
end

Then("Eu vejo uma mensagem de erro") do
  expect(page).to have_content('error')
end

When("Eu crio o produto de descricao {string} e preco {string}") do |descricao, preco|
  fill_in 'produto[descricao]', :with => descricao
  fill_in 'produto[preco]', :with => preco
end

# Steps CRUD Vendas

Given("Eu estou na tela de nova venda") do
  visit 'http://localhost:3000/vendas/new'
  expect(page).to have_content('Nova Venda')
end

When("Eu crio uma nova venda com o cliente {string}, o produto {string} e quantidade {int}") do |cliente,produto, quantidade|
  select cliente, :from => "venda[cliente_id]"
  select produto, :from => "venda[produto_id]"
  select quantidade, :from => "venda[quantidade]"
end

When("Eu clico em criar venda") do
  click_button 'Create Venda'
end

Then("Eu vejo que a venda do produto {string} foi salva") do |descricao|
  expect(page).to have_content(descricao)
end

Then("Eu vejo mensagens de erro") do
  expect(page).to have_content('error')
end

# Steps CRUD Estoque

Given("Eu estou na pagina de criar um novo produto para o estoque") do
  visit 'http://localhost:3000/produto_estoques/new'
  expect(page).to have_content('Novo Produto Estoque')
end

When("Eu crio o produto de descricao {string}, preco compra {int} e quantidade {int}") do |descricao, preco, quantidade|
  fill_in 'produto_estoque[descricao]', :with => descricao
  fill_in 'produto_estoque[preco_compra]', :with => preco
  fill_in 'produto_estoque[quantidade]', :with => quantidade
end

When("Eu crio o produto de descricao {string}, preco compra {string} e quantidade {int}") do |descricao, preco, quantidade|
  fill_in 'produto_estoque[descricao]', :with => descricao
  fill_in 'produto_estoque[preco_compra]', :with => preco
  fill_in 'produto_estoque[quantidade]', :with => quantidade
end

When("Eu crio o produto de descricao {string}, preco compra {int} e quantidade {string}") do |descricao, preco, quantidade|
  fill_in 'produto_estoque[descricao]', :with => descricao
  fill_in 'produto_estoque[preco_compra]', :with => preco
  fill_in 'produto_estoque[quantidade]', :with => quantidade
end

When("Clico em criar produto para o estoque") do
  click_button 'Salvar Produto Estoque'
end

# Steps CRUD Perfis

Given("Eu estou na pagina de criar um novo funcionario") do
  visit 'http://localhost:3000/funcionarios/new'
  expect(page).to have_content('Novo Funcionario')
end

When("Eu crio o funcionario de nome {string}, de CPF {int} e de senha {string}") do |nome, cpf, senha|
  fill_in 'funcionario[nome]', :with => nome
  fill_in 'funcionario[cpf]', :with => cpf
  fill_in 'funcionario[senha]', :with => senha
end

When("Clico em salvar funcionario") do
  click_button 'Salvar Funcionario'
end

Then("Eu vejo que o funcionario foi salvo corretamente") do
  expect(page).to have_content('Nome')
end