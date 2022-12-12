<h2 align=center> Formulario </h2>

El instructor nos dejo como desafió crear una interfaz tipo fomulario que fuera capaz de grabar los datos ingrasados en otra hoja donde se almacenaba los datos

<h2 align=center> Codigo en Visual Basic </h2>


```
Sub registrarDatos()

Dim hojaDatos As Worksheet
Dim tabla As ListObject
Dim nuevaFila As ListRow
Dim pregunta As Byte

Set hojaDatos = ThisWorkbook.Sheets("datos")
Set tabla = hojaDatos.ListObjects("tablaDatos")
Set nuevaFila = tabla.ListRows.Add

With nuevaFila
    .Range(1) = Hoja1.Range("G7").Value
    .Range(2) = Hoja1.Range("G9").Value
    .Range(3) = Hoja1.Range("G11").Value
End With

MsgBox "Se guadaron los datos en tabla", vbInformation

pregunta = MsgBox("¿Deseas limpiar el formulario?", vbYesNo + vbQuestion)

If pregunta = vbNo Then Exit Sub

Hoja1.Range("G7").ClearContents
Hoja1.Range("G9").ClearContents
Hoja1.Range("G10").ClearContents

End Sub
```

### Interfaz

![Interfaz](https://i.imgur.com/bxoWqp5.png)

### Datos

![Datos](https://i.imgur.com/NDQHy4b.png)

[Descargar fomulario](https://drive.google.com/file/d/1tQ_v1HpBFLSCiCRpgI3FeU80QnXmmrQ5/view?usp=sharing)