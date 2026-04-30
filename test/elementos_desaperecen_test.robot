*** Settings ***
Documentation     Pruebas para validar elementos que aparecen y desaparecen aleatoriamente al recargar la página[cite: 43, 44].
Resource          ../recursos/base.robot
Resource          ../recursos/paginas/elementos_desaparecen.robot

Suite Setup       Abrir Navegador Principal
Suite Teardown    Cerrar Navegador Principal

*** Test Cases ***
Validar Aparicion Y Desaparicion Del Boton Gallery
    [Documentation]    Recarga la página dinámicamente evaluando el estado del botón Gallery.
    [Tags]             aleatorio    ui

    Navegar A Pagina Elementos Desaparecen

    # 1. Actualizar hasta que el botón sea visible [cite: 45]
    WHILE    True    limit=10
        ${estado_existe}=    Run Keyword And Return Status    Verificar Boton Gallery Existe
        IF    ${estado_existe}
            BREAK
        END
        Recargar Pagina
    END
    Verificar Boton Gallery Existe    # Confirmación final [cite: 46]

    # 2. Actualizar hasta que el botón no esté visible [cite: 47]
    WHILE    True    limit=10
        ${estado_no_existe}=    Run Keyword And Return Status    Verificar Boton Gallery No Existe
        IF    ${estado_no_existe}
            BREAK
        END
        Recargar Pagina
    END
    Verificar Boton Gallery No Existe    # Confirmación final [cite: 48]