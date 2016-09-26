### Sistema Pet Básico

 :white_check_mark: Cliente (Nome, Email, Telefone + Endereço"nested_attributes")

 :white_check_mark: Pet(Nome, especie, raça, obs)

 :white_check_mark: Produtos(Nome, descrição, preço, foto)

 - Atendimento(descrição, cliente, preço do atendimento, pet, produto"Caso haja", obs)

 - Autenticação de usuário + cadastro

 :white_check_mark: Cadastro Clientes

 :white_check_mark: Cadastro Pets

 :white_check_mark: (Cliente 1 : n Pet)

 :white_check_mark: Cadastro de produtos

 - Cadastro de Visitas(atendimento) dos pets

 - Atendimento (contém: Pet, cliente e pode conter produtos)

 - Página Inicial contém últimos atendimentos feitos, mostrando: data, cliente e pet.
