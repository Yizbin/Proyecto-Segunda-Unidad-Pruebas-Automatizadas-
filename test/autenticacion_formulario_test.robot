*** Settings ***
Documentation     Pruebas de autenticación mediante formulario HTML y validación de mensajes de alerta.
Resource          ../recursos/base.robot
Resource          ../recursos/paginas/autenticacion_formulario.robot

Suite Setup       Abrir Navegador Principal
Suite Teardown    Cerrar Navegador Principal

*** Test Cases ***
Login Y Logout Exitoso
    [Documentation]    Verifica el inicio de sesión y cierre de sesión con credenciales válidas[cite: 67, 71].
    [Tags]             login    positivo

    Navegar A Pagina De Login
    Ingresar Usuario    tomsmith
    Ingresar Contrasena    SuperSecretPassword!
    Hacer Clic En Login
    Verificar Mensaje De Alerta    You logged into a secure area!
    Hacer Clic En Logout
    Verificar Mensaje De Alerta    You logged out of the secure area!

Login Con Usuario Invalido
    [Documentation]    Verifica el error al ingresar un usuario incorrecto[cite: 73, 74].
    [Tags]             login    negativo

    Navegar A Pagina De Login
    Ingresar Usuario    tomsmith 1
    Ingresar Contrasena    SuperSecretPassword!
    Hacer Clic En Login
    Verificar Mensaje De Alerta    Your username is invalid!

Login Con Contrasena Invalida
    [Documentation]    Verifica el error al ingresar una contraseña incorrecta.
    [Tags]             login    negativo

    Navegar A Pagina De Login
    Ingresar Usuario    tomsmith
    Ingresar Contrasena    SuperS1ecretPassword!
    Hacer Clic En Login
    Verificar Mensaje De Alerta    Your password is invalid!