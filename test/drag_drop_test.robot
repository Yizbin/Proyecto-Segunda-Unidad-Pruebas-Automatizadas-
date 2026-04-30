*** Settings ***
Documentation     Pruebas para validar la funcionalidad de arrastrar y soltar (Drag and Drop) utilizando la API de HTML5.
Resource          ../recursos/base.robot
Resource          ../recursos/paginas/drag_drop.robot

*** Test Cases ***
Validar Intercambio De Cajas
    [Documentation]    Verifica que al arrastrar la caja A sobre la caja B (y viceversa), los textos de sus cabeceras se intercambien correctamente.
    [Tags]             drag_drop    interfaz    positivo

    Open Browser    https://the-internet.herokuapp.com/drag_and_drop    chrome
    Maximize Browser Window

    Arrastrar Caja Hacia    ${CAJA_A}    ${CAJA_B}
    Validar Orden De Las Cajas    B    A

    Arrastrar Caja Hacia    ${CAJA_B}    ${CAJA_A}
    Validar Orden De Las Cajas    A    B

    Close Browser