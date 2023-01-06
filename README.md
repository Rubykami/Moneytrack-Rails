<h1 align="center"> Controlador de Finanças Organizzeta </h1>

---

# O que é o Organizzeta?
	
O Organizzeta é um site onde você pode controlar o seu dinheiro de forma rápida e prática com um design inovador onde a todo momento você consegue visualizar quanto dinheiro você tem e onde ele está.

---
</hr>

## Como utilizar o Organizzeta?

Eu separei o site Organizzeta em 2 repositórios aqui no meu Github, esse é o repositório de Backend onde eu utilizo o framework Ruby on Rails.
Aqui você poderá criar uma conta de usuário e cadastrar até 2 contas de banco para utilizar o Organizzeta.
Após fazer o seu cadastro, você poderá depositar dinheiro na sua carteira Organizzeta e transferir dinheiro para os seus bancos diretamente do site.

</hr>

1. Primeiramente, você deve criar o banco de dados utilizando o terminal através do comando rails db:create e logo após isso migrar o banco de dados para a sua aplicação utilizando o comando rails db:migrate.
2. Como esta aplicação utiliza PostgreSQL, você deve tê-lo instalado.
3. Vá para o arquivo config/database.yml e troque os campos username e password para o username e password do seu PostgreSQL, aqui eu usei
username: seuusuariopostgreSQL e
password: suasenhapostgreSQL
4. Digite o comando bundle install para instalar todas as gems(bibliotecas) do Rails.
5. O comando usado no terminal para iniciar o servidor é "rails s -p 3001". É muito importante que o comando utilizado seja esse.

