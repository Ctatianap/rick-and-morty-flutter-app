# Proyecto Rick and Morty Flutter App

Este proyecto es una aplicación Flutter que utiliza arquitectura limpia, manejo de estado con GetX, y tiene una estructura modular.

### Descripción

La app está diseñada con tres pantallas:

#### Pantalla de Bienvenida y Validación
La pantalla inicial ofrece un mensaje de bienvenida y solicita un código de ingreso para avanzar. **(utiliza el código: 1234)**. Si el código ingresado es válido, el usuario es redirigido a la siguiente pantalla.

#### Pantalla de Personajes de Rick and Morty
Esta pantalla muestra una lista de personajes obtenida desde la Rick and Morty API. Al dar click en alguno de los personajes, ingresarás al detalle del mismo. 

Incluye un filtro de la lista de Personajes, permitiendo al usuario buscar personajes de manera rápida y específica, mejorando la experiencia de navegación.

#### Pantalla de Detalle de Personaje
Al seleccionar un personaje de la lista, se redirige al usuario a esta pantalla, donde se muestra información detallada del personaje seleccionado.


### Estructura del proyecto
La aplicación sigue una arquitectura con la siguiente estructura:
  ```

    assets/
    ├───images
    │   ├───rick-and-morty-1.png
    │   └───rick-and-morty-background.webp
    │   └───rick-and-morty-title.png
    lib/
    ├───config
    ├───data
    │   ├───models
    │   ├───provider
    │   └───repositories
    └───presentation
        ├───pages
        │   ├───characters
        │   │   └───widgets
        │   ├───character_detail
        │   │   └───widgets
        │   └───code_validation
        ├───routes
        └───widgets
   ```
**config/**: Configuraciones globales del proyecto.

**data/**: Implementaciones específicas de datos (modelos, proveedores, repositorios).

**presentation/**: Todo lo relacionado con la interfaz de usuario (páginas, rutas, widgets).

## Requisitos previos

Antes de empezar, asegúrate de tener instalados los siguientes requisitos:

1. **Flutter SDK**: Instala Flutter desde [flutter.dev](https://flutter.dev) y asegúrate de que está configurado correctamente. Puedes verificar la instalación ejecutando:

   ```
   flutter doctor
   ```
2. **Android Studio o cualquier otro IDE compatible con Flutter**: Configura un emulador con Android API 33 (Android 13), Android API 35 (Android 15) o utiliza un dispositivo físico.
3. **Visual Studio**: Sí estas en un entorno windows es necesario tener [visualstudio](https://visualstudio.microsoft.com/downloads/)

## Configuración y ejecución
Sigue estos pasos para ejecutar la aplicación:

### Clonar el repositorio

  ```
    git clone git@github.com:Ctatianap/rick-and-morty-flutter-app.git
    cd rick-and-morty-flutter-app
  ```

### Instalar las dependencias

Ejecuta el siguiente comando para instalar las dependencias del proyecto:
  ```
    flutter pub get
  ```
### Seleccionar el dispositivo

Asegúrate de tener un dispositivo/emulador conectado. Lista los dispositivos disponibles:

  ```
  flutter devices
  ```
### Ejecutar la aplicación

Inicia la aplicación ejecutando:
  ```
  flutter run
  ```
### Acceso inicial

Para acceder a la funcionalidad de inicio, utiliza el código: 1234.

### Notas adicionales

**Plataforma:** Este proyecto fue desarrollado y probado en un entorno Windows.

**Manejo de estado:** El proyecto utiliza GetX para la gestión del estado.

