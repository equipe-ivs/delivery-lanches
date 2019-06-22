# Delivery Lanches
## Projeto de criação de sistema para gerenciamento de delivery de lanches

> **Nome do cliente:** Kamila Dias da Silva  
> **Equipe: [Igor Cezar](https://github.com/igorcalbuquerque), 
>            [Valdir Dias](https://github.com/BluePegasus24),
>            [Saú Cesar](https://github.com/saucesar)**
> **Disciplina:** Engenharia de Software 2019.1  
> **Professor:** [Rodrigo Andrade](https://github.com/rcaa)

### Usuarios padrão para acesso ao sistema
Acesso Gerente
+ **login:** admin@admin.com **senha:** adminadmin

Acesso Funcionario

+ **login:** user@user.com **senha:** useruser

### Instrucões para realização dos testes
+ **Passo 1:**
Instalar as gems presentes no arquivo **Gemfile** na raiz do projeto  
Caso a gem geckodriver-helper não seja intalada altomaticamente, execute
no terminal o commando: **sudo gem install geckodriver-helper**  

+ **Passo 2:**
Executar o comando "rails db:migrate RAILS_ENV=development" para criar as tabelas no banco de dados

+ **Passo 3:**
Ter o **firefox 67.0(64 bits)**
![img1](https://lh3.googleusercontent.com/--5JJ8DFp0h0/XO3azvknCaI/AAAAAAAAEd4/fOCdP6wKJnILTh8oh31XBDeyIB_JGnMzwCK8BGAs/s0/imagem5.png)

+ **Passo 4:** Cadastrar cliente com os seguintes parametros:  
Nome: DeliveryBot  
Cpf: 11 caracteres numéricos(00000000000)  
Endereco: palavra de no minimo 5 caracteres (Rua Teste)  
Telefone: numérico com no minimo 9 caracteres (999999999)   
![img2](https://lh3.googleusercontent.com/-B-sK-vdQV0E/XQBhJHRBp2I/AAAAAAAAAc8/EX5oD1E57TYqmIIyW-bdCJXoa9MZz8z3wCK8BGAs/s0/Imagem_Postar2.png)      
![img3](https://lh3.googleusercontent.com/-dX1vL4oUf4Y/XQBhGBIk-EI/AAAAAAAAAcw/1nxyN9cpSaQP7OFQbUiwlgYQkaehvyhiQCK8BGAs/s0/Imagem_Postar1.png)

**Apos estes passos os testes estão aptos a serem realizados**

**Observação: Todos os teste foram realizados em versão linux mint 19 64 bits e ubuntu 18.04 64bits**    