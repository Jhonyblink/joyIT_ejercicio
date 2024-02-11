Feature: Pagina de Login

    Feature La pagina de Login funcionara dependiendo de las credenciales.


    Background: Pre condiciones
        Given El usuario este dentro de la pagina de login

    Scenario Outline: Verificar un login exitoso when ingrese credenciales correctas
        When El usuario ingresa <user> en el campo usuario
        And El usuario ingresa <pass> en el campo password
        And El usuario presiona el boton de login
        Then El usuario espera que se muestre ' <logout_option>'
        Examples:
            | user                      | pass          | logout_option |
            | jhony.pascual@gmail.com   | JoyIt2024     | Logout        |

    Scenario Outline: Verificar Login incorrecto, when se ingresa credenciales incorrectas
        When El usuario ingresa <user> en el campo usuario
        And El usuario ingresa <pass> en el campo password
        And El usuario presiona el boton de login
        Then el usuario visualiza el mensaje '<error_message>'
        Examples:
            | user                      | pass          | error_message                        |
            | jhony.pascual@gmail.com   | JoyIt2023     | Your email or password is incorrect! |
            | desconocido@gmail.com     | JoyIt2024     | Your email or password is incorrect! |
            | desconocido@outlook.com   | error123      | Your email or password is incorrect! |