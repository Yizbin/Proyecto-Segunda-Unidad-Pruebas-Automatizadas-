*** Settings ***
Library    SeleniumLibrary
Resource   ../base.robot

*** Variables ***
${URL_MENU_FLOTANTE}    ${URL_BASE}/floating_menu
${MENU_PRINCIPAL}       id=menu

*** Keywords ***
Navegar A Pagina Menu Flotante
    Go To    ${URL_MENU_FLOTANTE}

Desplazarse Al Fondo De La Pagina
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)

Verificar Menu Visible
    Element Should Be Visible    ${MENU_PRINCIPAL}