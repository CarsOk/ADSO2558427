<h2 align=center>Ciclo For</h2>

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

<h2 align=center>Desafío con ciclo For</h2>

Crear algoritmo con la siguientes caracteristicas:

En una entidad educativa con 7500 estudiantes se requiere realizar una recolecta para sufragar los gastos de un evento organizado por el colegio. 

Se requiere que el programa entregue la siguiente información: 

1.	Total Recaudado por los estudiantes de todo el colegio.
2.	Valor del recaudo promedio para los estudiantes que aportaron dinero.
3.	Número de estudiantes que aportaron dinero a la recolecta.
4.	Número de estudiantes que NO colaboraron.
5.	Cantidad de estudiantes que aportaron valores superiores a $10.000.

<h3 align=center>Algoritmo</h3>

![Algoritmo](https://i.imgur.com/XGn2x6w.jpg)