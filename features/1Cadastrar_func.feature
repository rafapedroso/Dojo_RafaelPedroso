#language: pt
@cadastrar
Funcionalidade: Cadastrar_func
    Eu como RH quero cadastrar 
    Um novo funcionario

    Contexto: Logar 
        Dado que esteja logado no Site ORANGEHRM como admin

    Cenario: Novo_cadastro
    Dado que eu esteja na pagina de Cadastro de Empregado
    Quando  inserir informacoes necessarias para cadastrar novo funcionario
    Então Usuario sera cadastrado com sucesso 


