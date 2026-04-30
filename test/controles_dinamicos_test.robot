*** Settings ***
Documentation     Pruebas para interactuar con elementos dinámicos que se habilitan o desaparecen tras un tiempo de carga[cite: 57].
Resource          ../recursos/base.robot
Resource          ../recursos/paginas/controles_dinamicos.robot

Suite Setup       Abrir Navegador Principal
Suite Teardown    Cerrar Navegador Principal

*** Test Cases ***
Validar Eliminacion De Checkbox
    [Tags]             controles    dinamicos
    Ir A Controles Dinamicos
    Eliminar Checkbox
    Comprobar Checkbox Eliminado

Validar Activacion De Campo Texto
    [Tags]             controles    dinamicos
    Ir A Controles Dinamicos
    Activar Campo Texto
    Confirmar Campo Disponible