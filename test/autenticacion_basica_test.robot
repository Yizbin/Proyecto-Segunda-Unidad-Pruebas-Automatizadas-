*** Settings ***
Documentation     Pruebas para la funcionalidad de Autenticación Básica.
Resource          ../recursos/base.robot
Resource          ../recursos/paginas/autenticacion_basica.robot

Suite Setup       Abrir Navegador Principal
Suite Teardown    Cerrar Navegador Principal

*** Test Cases ***
Login Con Credenciales Validas
    [Documentation]    Verifica el acceso exitoso utilizando el usuario y contraseña correctos.
    [Tags]             auth    positivo

    Ingresar Con Credenciales Basicas    admin    admin
    Verificar Autenticacion Exitosa

Login Con Credenciales Invalidas
    [Documentation]    Verifica que el sistema rechace el acceso al utilizar credenciales incorrectas.
    [Tags]             auth    negativo

    Ingresar Con Credenciales Basicas    admin1    admin1
    Verificar Autenticacion Fallida