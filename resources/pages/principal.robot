*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SOBRE}    //li[@data-dropdown]
${LOGIN}    //li/a[@data-modal='abrir']
${MODAL}    class:modal
${DROPDOWN-MENU}    class:dropdown-menu
${ELEMENTO_A_TER_O_HOVER_VERIFICADO}    //a[contains(., 'A Empresa')]
${COR_ESPERADA}    rgb(255, 255, 255)

*** Keywords ***
Passe o mouse sobre o "sobre"
    Mouse Over    ${SOBRE}

Verifique se o dropdown-menu está visível para o usuário
    Element Should Be Visible    ${DROPDOWN-MENU}

Passe o mouse sobre o elemento a ter o hover verificado
    Passe o mouse sobre o "sobre"
    Sleep    1s    # Espera um segundo para ter certeza que o efeito do menu foi aplicado
    Mouse Over    ${ELEMENTO_A_TER_O_HOVER_VERIFICADO}

Verifique se ao passar o mouse sobre um elemento do dropdown-menu o elemento muda para a cor esperada
    ${COR_DO_HOVER}=    Execute Javascript    return (window.getComputedStyle(document.querySelector('a[href="empresa.html"]')).getPropertyValue("color"))
    Should Be Equal As Strings    ${COR_DO_HOVER}    ${COR_ESPERADA}

Clique no elemento de login
    Click Element    ${LOGIN}

Verifique se o modal está visível para o usuário
    Element Should Be Visible    ${MODAL}

    


