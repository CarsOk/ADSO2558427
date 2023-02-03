## Sacar impuesto según los ingreso anuales de una empresa

**Con condición if**

```
Sub genradorImpuesto()
    MsgBox ("Bienvenidos a la IDAN")
    ingresos = Int(InputBox("Digite sus ingresos anuales"))
    If ingresos >= 0 And ingresos <= 1000 Then
        MsgBox ("No debe pagar impuestos")
    Else
        If ingresos >= 1001 And ingresos <= 10000 Then
            impuesto = (ingresos * 5) / 100
            MsgBox ("Debe pagar $" & impuesto & (" de impuesto"))
        Else
            If ingresos >= 10001 And ingresos <= 100000 Then
                impuesto = (ingresos * 10) / 100
                MsgBox ("Debe pagar $" & impuesto & (" de impuesto"))
            Else
                If ingresos >= 100001 And ingresos <= 1000000 Then
                    impuesto = (ingresos * 15) / 100
                    MsgBox ("Debe pagar $" & impuesto & (" de impuesto"))
                Else
                    If ingresos >= 1000001 And ingresos <= 10000000 Then
                        impuesto = (ingresos * 20) / 100
                        MsgBox ("Debe pagar $" & impuesto & (" de impuesto"))
                    Else
                        If ingresos >= 10000001 Then
                            impuesto = (ingresos * 25) / 100
                            MsgBox ("Debe pagar $" & impuesto & (" de impuesto"))
                        Else
                            MsgBox ("Error el sacar valor")
                        End If
                    End If
                End If
            End If
        End If
    End If
End Sub

```

**Con condición dependiendo de**

```
Sub generadorImpuestos()
    MsgBox ("Bienvenido a IDAN")
    ingresos = Int(InputBox("Digite sus ingresos anuales"))
    Select Case ingresos
    Case Is < 0
        MsgBox ("Error al sacar calculo")
    Case 0 To 1000
        MsgBox ("No debe pagar impuestos")
    Case 1001 To 10000
        impuesto = (ingresos * 5) / 100
        MsgBox ("Debe pagar $" & impuesto & (" de impuesto"))
    Case 10001 To 100000
        impuesto = (ingresos * 10) / 100
        MsgBox ("Debe pagar $" & impuesto & (" de impuesto"))
    Case 100001 To 1000000
        impuesto = (ingresos * 15) / 100
        MsgBox ("Debe pagar $" & impuesto & (" de impuesto"))
    Case 1000001 To 10000000
        impuesto = (ingresos * 20) / 100
        MsgBox ("Debe pagar $" & impuesto & (" de impuesto"))
    Case Else
        impuesto = (ingresos * 25) / 100
        MsgBox ("Debe pagar $" & impuesto & (" de impuesto"))
    End Select
End Sub
```

**Algoritmo con select case**

![Algoritmo select case](https://i.imgur.com/53Yf34y.jpg)

**Diagrama de flujo de select case**

![Diagrama select case](https://i.imgur.com/dXdHGMj.jpg)