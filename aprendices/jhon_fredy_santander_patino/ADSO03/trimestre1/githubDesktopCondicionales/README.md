## Github desktop y condicionales

Aprendimos a manejar un software llamada "Github desktop" que sirve para clonar repositorios y subirlos a la plataforma github. Realizamos un desafio sobre crear una condición entre el 5% y 10%

### Github Desktop

![Github Desktop](https://i.imgur.com/4hXPf6z.png)

### Desafío descuentre del 5% y 10%

#### Algoritmo

![Algoritmo descuento](https://i.imgur.com/XWvmaEa.jpg)

#### Diagrama de flujo

![Diagrama de flujo descuento](https://i.imgur.com/zP5sSl9.jpg)

#### Codigo en Visual Basic

```
Sub Descuentos()
    cantidadObjetos = Int(InputBox("La cantidad de objetos son: "))
    precioTotal = Int(InputBox("El precio total es:"))
    If cantidadObjetos > 10 And cantidadObjetos <= 20 Then
        descontarCinco = (precioTotal * 5) / 100
        descuentoCinco = precioTotal - descontarCinco
        MsgBox ("El precio a pagar es: " & descuentoCinco)
    Else
        If cantidadObjetos > 20 Then
            descontarDiez = (precioTotal * 10) / 100
            descuentoDiez = precioTotal - descontarDiez
            MsgBox ("El precio a pagar es: " & descuentoDiez)
        Else
            MsgBox ("El precio es: " & precioTotal)
        End If
    End If
End Sub
```