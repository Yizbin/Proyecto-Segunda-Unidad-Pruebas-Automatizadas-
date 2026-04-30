*** Settings ***
Library    SeleniumLibrary
Resource   ../recursos/base.robot
Resource   ../recursos/paginas/teclas_presionadas.robot

*** Test Cases ***

Tecla ESC CAMPO
    [Documentation]    Caso de tecla presionada ESC
    [Tags]    esc teclas

    Navegar A Pagina Teclas Presionadas
    Presionar Tecla En Input    ESCAPE
    Verificar Mensaje De Tecla    "You entered: ESCAPE"


Tecla Espacio Campo
    [Documentation]    Caso de tecla presionada Espacio
    [Tags]    espacio teclas

    Navegar A Pagina Teclas Presionadas
    Presionar Tecla En Input    SPACE
    Verificar Mensaje De Tecla    "You entered: SPACE"