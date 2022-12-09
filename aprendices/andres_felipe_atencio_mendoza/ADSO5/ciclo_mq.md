~~~
Sub fff()
    For Z = 2 To 21
        nombre = nomb.Cells(Z, 1)
        ulti = Len(nombre) - 1
        nomb.Cells(Z, 2) = Mid(nombre, ulti, 2)
    Next Z
End Sub
~~~