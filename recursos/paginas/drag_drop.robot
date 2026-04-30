*** Settings ***
Documentation    Palabras clave y localizadores para interactuar con la página de Drag and Drop (Arrastrar y Soltar).
Library          SeleniumLibrary

*** Variables ***
${CAJA_A}    id=column-a
${CAJA_B}    id=column-b

*** Keywords ***
Arrastrar Caja Hacia
    [Documentation]    Simula la acción de hacer clic sostenido sobre un elemento origen, arrastrarlo y soltarlo sobre un elemento destino.
    [Arguments]    ${origen}    ${destino}
    Drag And Drop    ${origen}    ${destino}
    Sleep    1s

Validar Orden De Las Cajas
    [Documentation]    Comprueba que el texto dentro de las cabeceras (headers) de las columnas A y B corresponda al orden esperado.
    [Arguments]    ${texto_caja_izq}    ${texto_caja_der}
    Element Text Should Be    css=#column-a header    ${texto_caja_izq}
    Element Text Should Be    css=#column-b header    ${texto_caja_der}