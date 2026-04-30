*** Settings ***
Documentation     Pruebas para verificar que el menú flotante se mantenga visible al hacer scroll[cite: 64].
Resource          ../recursos/base.robot
Resource          ../recursos/paginas/menu_flotante.robot

Suite Setup       Abrir Navegador Principal
Suite Teardown    Cerrar Navegador Principal

*** Test Cases ***
Validar Visibilidad Del Menu Flotante Al Desplazarse
    [Documentation]    Verifica que las opciones del menú se queden ancladas en la pantalla aunque el usuario baje hasta el fondo[cite: 65, 66].
    [Tags]             scroll    ui

    Navegar A Pagina Menu Flotante
    Desplazarse Al Fondo De La Pagina
    Verificar Menu Visible