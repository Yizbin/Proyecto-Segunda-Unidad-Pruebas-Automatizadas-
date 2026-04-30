*** Settings ***
Documentation     Pruebas para interactuar con elementos dinámicos que se habilitan o desaparecen tras un tiempo de carga[cite: 57].
Resource          ../recursos/base.robot
Resource          ../recursos/paginas/controles_dinamicos.robot

Suite Setup       Abrir Navegador Principal
Suite Teardown    Cerrar Navegador Principal

*** Test Cases ***
Remover Elemento Dinamico
    [Documentation]    Valida que el checkbox sea removido del DOM tras hacer clic en Remove[cite: 60, 61].
    [Tags]             dinamico    ui

    Navegar A Pagina Controles Dinamicos
    Hacer Clic En Remover
    Verificar Checkbox Removido

Habilitar Input Dinamico
    [Documentation]    Valida que el campo de texto se habilite para escritura tras hacer clic en Enable[cite: 62, 63].
    [Tags]             dinamico    ui

    Navegar A Pagina Controles Dinamicos
    Hacer Clic En Habilitar
    Verificar Input Habilitado