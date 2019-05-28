Given("Eu estou na pagina de criar um novo produto") do
  visit 'http://localhost:3000/produtos/new'
  expect(page).to have_content('Novo Produto')
end

When("Eu crio o produto de descricao {string} e preco {int}") do |string, int|
  fill_in 'produto[descricao]', :with => string
  fill_in 'produto[preco]', :with => int
end

When("Clico em criar produto") do
  click_button 'Create Produto'
end

Then("Eu vejo que o produto de descricao {string} foi salvo") do |string|
  expect(page).to have_content(string)
end

Then("Eu vejo a mensagem de erro {string}") do |string|
  expect(page).to have_content(string)
end

When("Eu crio o produto de descricao {string} e preco {string}") do |string, string2|
  fill_in 'produto[descricao]', :with => string
  fill_in 'produto[preco]', :with => string2
end
