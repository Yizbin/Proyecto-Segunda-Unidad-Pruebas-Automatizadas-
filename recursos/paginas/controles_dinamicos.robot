*** Settings ***
Library    SeleniumLibrary
Resource   ../base.robot

*** Variables ***
${PAGINA_CONTROLES}    ${URL_BASE}/dynamic_controls
${BOTON_ELIMINAR}      xpath=//button[text()='Remove']
${BOTON_HABILITAR}     xpath=//button[text()='Enable']
${AREA_CHECKBOX}       id=checkbox
${CAMPO_ENTRADA}       xpath=//form[@id='input-example']/input
${INDICADOR_CARGA}     id=loading

*** Keywords ***
Ir A Controles Dinamicos
    Go To    ${PAGINA_CONTROLES}

Eliminar Checkbox
    Presionar Boton Y Esperar    ${BOTON_ELIMINAR}

Comprobar Checkbox Eliminado
    Wait Until Element Is Not Visible    ${AREA_CHECKBOX}
    Element Should Not Be Visible        ${AREA_CHECKBOX}

Activar Campo Texto
    Presionar Boton Y Esperar    ${BOTON_HABILITAR}

Confirmar Campo Disponible
    Element Should Be Enabled    ${CAMPO_ENTRADA}

Presionar Boton Y Esperar
    [Arguments]    ${boton}
    Click Button    ${boton}
    Wait Until Element Is Visible        ${INDICADOR_CARGA}    timeout=5s
    Wait Until Element Is Not Visible    ${INDICADOR_CARGA}    timeout=10s