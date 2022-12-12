<h2 align=center>Ciclos</h2>

Aprendimos que los ciclos sirven para realizar comandos repetitivos de manera concecutiva, estos ciclos tienen un fin.

<h3 align=center>Programación en Visual Basic</h3>

Desafío sobre leer 15 nombres y colocarlos de b4 para abajo utilizando el ciclo for

```
Sub prueba()
    For n = 1 To 15
        nom = InputBox("Digite su nombre")
        fila = nombres.Cells(2, 6)
        nombres.Cells(fila, 2) = nom
        nombres.Cells(2, 6) = fila + 1
    Next n
    MsgBox ("Nombres registrados")
End Sub
```

[Descargar archivo](https://drive.google.com/file/d/1s2OTeUmbcGuaNxCx5zO9XUdCRxez-g7w/view?usp=sharing)