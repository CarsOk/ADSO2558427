## Desafío del hotel y noches

Se creo un desafio en donde si habian más de 3 noches hospedadas se le hacia un descuento del 5%

**Algoritmo**

![Algoritmo hotel](https://i.imgur.com/RwzMBSL.jpg)

**Diagrama de flujo**

![Diagrama hotel](https://i.imgur.com/I4Mf5O2.jpg)

**Visual Basic**

```
Sub Hotel()
    nombreCliente = InputBox("nombre del cliente")
    totalNoches = Int(InputBox("noches a hospedar"))
    precioNoches = totalNoches * 100
    If totalNoches <= 3 Then
        MsgBox (nombreCliente & " se va hospedar " & totalNoches & " noche(s) y debe pagar: " & precioNoches)
    Else
        descontar = (precioNoches * 5) / 100
        descuento = precioNoches - descontar
        MsgBox (nombreCliente & " se va hospedar " & totalNoches & " y debe pagar " & descuento)
    End If
End Sub
```