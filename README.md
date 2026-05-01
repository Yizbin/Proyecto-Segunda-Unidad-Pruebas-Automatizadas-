# Proyecto de Pruebas Automatizadas - Segunda Unidad

Este repositorio contiene una suite de pruebas automatizadas E2E desarrollada con Robot Framework y SeleniumLibrary. El proyecto utiliza el patrón Page Object Model (POM) para garantizar bajo acoplamiento y facilitar el mantenimiento.

## Requisitos Previos
* Python 3.8 o superior.
* Google Chrome.
* Git.

## Instalación y Configuración

1. Clonar el repositorio:
   ```bash
   git clone <https://github.com/Yizbin/Proyecto-Segunda-Unidad-Pruebas-Automatizadas->
   cd Proyecto-Segunda-Unidad-Pruebas-Automatizadas-
   
2. Crear y activar el entorno virtual (.venv) en Windows:
python -m venv .venv
.\.venv\Scripts\activate

3. Instalar las dependencias:
pip install -r requirements.txt


Toda la suite:

robot -d resultados test/