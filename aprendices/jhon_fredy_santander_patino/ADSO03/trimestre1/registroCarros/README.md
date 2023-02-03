<h2 align="center">Registro de datos de carros</h2>

Aprendimos a como nombrar una hoja excel, como referenciar una celda y crear un contador para que se mueva a otra linea.

<h3 align="center">Interfaz y base de datos</h3>

![Interfaz](https://i.imgur.com/0VEzW6g.png)

![Base de datos](https://i.imgur.com/pyHThjU.png)

<h3 align="center">Programación en Visual Basic</h3>

```
Sub datosCarros()
    fila = datos.Cells(4, 7)
    datos.Cells(fila, 1) = formulario.Cells(6, 5)
    datos.Cells(fila, 2) = formulario.Cells(8, 5)
    datos.Cells(fila, 3) = formulario.Cells(10, 5)
    datos.Cells(fila, 4) = formulario.Cells(12, 5)
    MsgBox "Datos guardados"
    pregunta = MsgBox("¿Deseas limpiar el formulario?", vbYesNo + vbQuestion)
    If pregunta = vbNo Then Exit Sub
    formulario.Range("E6").ClearContents
    formulario.Range("E8").ClearContents
    formulario.Range("E10").ClearContents
    formulario.Range("E12").ClearContents
    datos.Cells(4, 7) = fila + 1
End Sub
```

[Descargar programa](https://drive.google.com/file/d/1MvePcqfcBUYxzo1ox58TIcZ3rR8Flfml/view?usp=sharing)