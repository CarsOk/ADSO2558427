# Formulario Visual Basic 

### Boton buscar 
~~~
Private Sub bbucar_Click()
    nombre.Enabled = True
    telefono.Enabled = True
    correo.Enabled = True
    bguardar.Enabled = True
    r = 0
    n = 3
    m = datos.Cells(1, 7) + 1
    a = Int(InputBox("cedula:"))
    While r = o
      If datos.Cells(n, 2) = a Then
       nombre.Text = datos.Cells(n, 1)
       cedula.Text = datos.Cells(n, 2)
       telefono.Text = datos.Cells(n, 3)
       correo.Text = datos.Cells(n, 4)
        r = r + 1
        editar.Enabled = True
        datos.Cells(1, 8) = n
      Else
        n = n + 1
      End If
      If n = m Then
        r = 2
        MsgBox "la cedula no se encuentra registrada."
      End If
    Wend
End Sub
~~~

### Boton guardar 
~~~
 Private Sub bguardar_Click()
  c = datos.Cells(1, 7)
  datos.Cells(c, 1) = nombre.Text
  datos.Cells(c, 2) = cedula.Text
  datos.Cells(c, 3) = telefono.Text
  datos.Cells(c, 4) = correo.Text
  MsgBox "los datos se han guardado con exito."
  cnuevo.Enabled = True
  registro.Caption = "registro de datos"
  nombre.Text = Empty
  cedula.Text = Empty
  telefono.Text = Empty
  correo.Text = Empty
  bguardar.Enabled = False
  cnuevo.SetFocus
End Sub
~~~

### Boton nuevo 
~~~
Private Sub cnuevo_Click()
  nombre.Enabled = True
  cedula.Enabled = True
  telefono.Enabled = True
  correo.Enabled = True
  bguardar.Enabled = True
  nombre.Text = ""
  cedula.Text = ""
  telefono.Text = ""
  correo.Text = ""
  registro.Caption = "nuevo registro"
  cnuevo.Enabled = False
  nombre.SetFocus
  datos.Cells(1, 7) = datos.Cells(1, 7) + 1
  cnuevo.Enabled = False
  editar.Enabled = False
~~~

### Boton editar
~~~
Private Sub editar_Click()
    l = datos.Cells(1, 8)
    datos.Cells(l, 1) = nombre.Text
    datos.Cells(l, 2) = cedula.Text
    datos.Cells(l, 3) = telefono.Text
    datos.Cells(l, 4) = correo.Text
    nombre.SetFocus
    bguardar.Enabled = False
    nombre.Text = Empty
    cedula.Text = Empty
    telefono.Text = Empty
    correo.Text = Empty
  End Sub
~~~

### Boton elimar 
~~~
Private Sub eliminar_Click()
    b = datos.Cells(1, 8)
    reg.Rows(b).EntireRow.Delete
    nombre.Text = Empty
    cedula.Text = Empty
    telefono.Text = Empty
    correo.Text = Empty
    datos.Cells(1, 8) = datos.Cells(1, 8) - 1
  End Sub
~~~