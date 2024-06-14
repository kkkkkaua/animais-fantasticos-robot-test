*** Settings ***
Resource    ../resources/main.robot
Test Setup    Abra o navegador na url do site animais fantásticos
Test Teardown    E feche o navegador

*** Test Cases ***
Verifique se o dropdown menu está visível após o usuário passar o mouse sobre o elemento "Sobre" na barra de navegação
    Passe o mouse sobre o "sobre"
    Verifique se o dropdown-menu está visível para o usuário

Verifique se ao passar o mouse sobre um elemento do dropdown-menu se este fica com o efeito hover
    Passe o mouse sobre o elemento a ter o hover verificado
    Verifique se ao passar o mouse sobre um elemento do dropdown-menu o elemento muda para a cor esperada

Verifique se ao clicar o elemento de login um modal aparece
    Clique no elemento de login
    Verifique se o modal está visível para o usuário
