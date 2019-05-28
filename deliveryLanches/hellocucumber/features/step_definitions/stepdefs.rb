Given("Eu estou na pagina de criar um novo produto") do
  visit 'produtos/new'
  expect(page).to have_current_path('/produtos/new')
end

When("Eu crio o produto de descricao {string} e preco {float}") do |string, float|
  fill_in 'produtos[descricao]', :with => string
  fill_in 'produtos[preco]', :with => float
end

When("Clico em criar produto") do
  click_button 'Create Produto'
end

Then("Eu vejo que o produto de descricao {string} foi salvo") do |string|
  expect(page).to have_content(string)
  expect(page).to have_current_path(produtos_path + '/' + Produtos.last.id.to_s)
end

#
