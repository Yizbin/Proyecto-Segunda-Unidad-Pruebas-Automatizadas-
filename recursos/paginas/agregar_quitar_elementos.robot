*** Settings ***
Documentation    Palabras clave y localizadores para interactuar con la página de Agregar y Quitar Elementos.
Library          SeleniumLibrary

*** Variables ***
${BTN_ADD}       css=button[onclick="addElement()"]
${BTN_DELETE}    css=button.added-manually

*** Keywords ***
Agregar Elementos
    [Documentation]    Hace clic en el botón 'Add Element' la cantidad de veces especificada mediante un bucle.
    [Arguments]    ${cantidad}
    FOR    ${i}    IN RANGE    ${cantidad}
        Click Element    ${BTN_ADD}
    END

Validar Cantidad De Elementos Agregados
    [Documentation]    Cuenta los botones 'Delete' presentes en la página y verifica que coincidan con la cantidad esperada.
    [Arguments]    ${cantidad_esperada}
    ${cantidad_actual}=    Get Element Count    ${BTN_DELETE}
    Should Be Equal As Integers    ${cantidad_actual}    ${cantidad_esperada}

Quitar Todos Los Elementos
    [Documentation]    Cuenta cuántos botones 'Delete' existen y los elimina uno por uno haciendo clic siempre en el primero de la lista restante.
    ${cantidad}=    Get Element Count    ${BTN_DELETE}
    FOR    ${i}    IN RANGE    ${cantidad}
        Click Element    xpath=(//button[@class='added-manually'])[1]
    END

Validar Que No Hay Elementos
    [Documentation]    Verifica que ya no exista ningún botón 'Delete' visible en el DOM de la página.
    Page Should Not Contain Element    ${BTN_DELETE}