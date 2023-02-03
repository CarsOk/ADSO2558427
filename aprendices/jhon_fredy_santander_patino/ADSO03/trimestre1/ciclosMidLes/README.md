<h2 align=center>Ciclos y funciones de manejo de cadenas para caracteres</h2>

Cada función cumple con un trabajo que se le va ha dar al tipo de dato

<h3 align=center>Anotaciones de la clase</h3>

![Anotación1](https://i.imgur.com/z1k9dP9.jpg)

![Anotación2](https://i.imgur.com/sADxK6J.jpg)

<h3 align=center>Desafío 1</h3>

Crear una tabla con 20 nombres y al accionar un botón se va generar una lista de los sus ultimos 2 caracteres.

**Algoritmo**

![Algoritmo1](https://i.imgur.com/fuhc0Ea.jpg)

**Codigo en VBA**

```
Sub prueba()
    For m = 2 To 21
        bres = nombres.Cells(m, 1)
        iden = Int(Len(bres)) - 1
        nombres.Cells(m, 2) = Mid(bres, iden, 2)
    Next m
End Sub
```

**Interfaz**

![Interfaz1](https://i.imgur.com/dkvkAC7.png)

[Descargar archivo](https://drive.google.com/file/d/1MKN3lbvBggPvtPdD-WdEjdnnIvVmbkDX/view?usp=sharing)

<h3 align=center>Desafío 2</h3>

Crear una tabla con 20 nombres con sus respectivas ciudades y municipios. Al accionar un botón se va generar un lista de codigo creado con los siguentes caracteres:

1. Los dos primeros caracteres del año.
2. Los dos ultimos caracteres del municipio.
3. Los dos primeros caracteres del nombre.

**Algoritmo**

![Algoritmo2](https://i.imgur.com/4LANBY6.jpg)

**Codigo en VBA**

```
Sub referencia()
    For m = 2 To 21
        nombres = codigo.Cells(m, 1)
        anho = codigo.Cells(m, 2)
        municipio = codigo.Cells(m, 3)
        idenNom = 1
        idenAnho = 1
        idenMuni = Len(municipio) - 1
        codigo.Cells(m, 4) = Mid(anho, idenAnho, 2) & Mid(municipio, idenMuni, 2) & Mid(nombres, idenNom, 2)
    Next m
End Sub
```

**Interfaz**

![Interfaz2](https://i.imgur.com/KMEuvKG.png)

[Descargar archivo](https://drive.google.com/file/d/1oDodK3zLCOYh9CaLOCqxno_xtqhuE3I2/view?usp=sharing)