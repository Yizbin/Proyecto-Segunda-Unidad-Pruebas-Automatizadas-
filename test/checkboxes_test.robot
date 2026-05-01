*** Settings ***
Documentation     Pruebas para validar la interacción y selección de casillas de verificación.
Resource          ../recursos/base.robot
Resource          ../recursos/paginas/checkboxes.robot

Suite Setup       Abrir Navegador Principal
Suite Teardown    Cerrar Navegador Principal

*** Test Cases ***
Validar Seleccion De Checkbox 1 y 2
    [Documentation]    Selecciona y valida el estado individual del Checkbox 1 y Checkbox 2.
    [Tags]             checkbox    ui

    Navegar A Pagina Checkboxes

    # Validaciones para el primer elemento
    Seleccionar Primer Checkbox
    Verificar Primer Checkbox Seleccionado

    # Validaciones para el segundo elemento
    Seleccionar Segundo Checkbox
    Verificar Segundo Checkbox Seleccionado