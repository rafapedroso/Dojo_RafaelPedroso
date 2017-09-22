#language: pt
@alterar
Funcionalidade: Alterar_func
    Eu como RH quero alterar os dados de um funcionario

    Contexto: Logar 
        Dado que esteja logado no Site ORANGEHRM como admin

    Cenario: Alterar_funcionario
    Dado que esteja na pagina de Lista de Empregados
    Quando buscar funcionario cadastrado
    E Editar suas informacoes
    Entao Funcionario alterado com sucesso 
