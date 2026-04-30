*** Settings ***
Documentation     Pruebas para validar la funcionalidad de agregar y quitar múltiples elementos dinámicos del DOM.
Resource          ../recursos/base.robot
Resource          ../recursos/paginas/agregar_quitar_elementos.robot

*** Test Cases ***
Validar Agregar Y Quitar 20 Elementos
    [Documentation]    Verifica que se puedan agregar 20 elementos consecutivos y posteriormente removerlos todos, validando la cantidad exacta en cada paso.
    [Tags]             elementos    dinamicos    positivo

    Open Browser    https://the-internet.herokuapp.com/add_remove_elements/    chrome
    Maximize Browser Window

    Agregar Elementos    20
    Validar Cantidad De Elementos Agregados    20

    Quitar Todos Los Elementos
    Validar Que No Hay Elementos

    Close Browser