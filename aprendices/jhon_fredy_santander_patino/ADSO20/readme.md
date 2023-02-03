<h1 align=center>Display Flex y Media queries</h1>

<h1 align=center>PC</h1>

<p align=center><img src="https://i.imgur.com/6sR2sm0.png"></p>

<h1 align=center>Celular</h1>

<p align=center><img src="https://i.imgur.com/zE2fKbi.png"></p>

<h2 align=center>HTML5</h2>

```
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Media Query</title>
</head>
<body>
    <header class="menu">
        <div>
            <img src="img/logo.png" alt="logo" class="logo">
        </div>
        <ul class="lista">
            <li class="elementLista"><a href="https://www.google.com" class="dirigir">op1</a></li>
            <li class="elementLista"><a href="https://www.google.com" class="dirigir">op2</a></li>
            <li class="elementLista"><a href="https://www.google.com" class="dirigir">op3</a></li>
        </ul>
        <div>
            <img src="img/hamburguesa.png" alt="hamburguesa" class="hamburguesa">
        </div>
    </header>   
</body>
</html>
```

<h2 align=center>CSS3</h2>

```
*{
    font-family: Arial, Helvetica, sans-serif;
}

@media screen and (max-width: 480px) {
    .menu{
        align-items: center;
        border: 1px solid blue;
        background-color: blue;
        display: flex;
        justify-content: space-between;
        height: 70px;
        list-style: none;
    }
    .logo{
        width: 50px;
        padding-left: 10px;
    }
    .lista {
        display: none;
    }
    .hamburguesa{
        width: 45px;
        padding-right: 10px;
    }
}

@media screen and (min-width: 480px) and (max-width: 2560px){
    .menu{
        align-items: center;
        border: 1px solid red;
        background-color: red;
        display: flex;
        justify-content: space-between;
        padding-bottom: 10px;
        padding-top: 10px;

    }
    .dirigir{
        text-decoration: none;
        color: white;
        font-size: 30px;
    }
    .logo {
        width: 70px;
        padding-left: 20px;
    }
    .lista {
        display: flex;
        list-style: none;
        width: 250px;
        justify-content: space-around;
        order: 3;
    }
    .hamburguesa {
        display: none;
    }
}
```