# Maquetado Html Veterinaria

<a href="https://imgbb.com/"><img src="https://i.ibb.co/x8ynnv2/image.png" alt="image" border="0"></a>

### HTML 
~~~
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <main>
        <header><img src="aa.png" alt=""></header>
        <nav>
            <ul>
                <li>Servicios</li>
                <li>Productos</li>
                <li>Guarderia</li>
                <li>Promociones</li>
            </ul>
        </nav>
        <section>
            <article ><h4>Cuidado y educacion para sus perros</h4><p>Si te pudiera amar esta vida y la otra, lo haria sin pensarlo, porque despues de ti, no hay nada más.</p>
            <img class="perro" src="avatarp.png" alt=""></article>
            <article><h4>Salir de vieje con su mascota</h4><P>A veces la vida se vuelve tan sencilla que aburre, la vida tiene que ser dificil si o si, porque sino,nadie quisiera vivir.</P><img class="perro" src="avatarp2.png" alt=""></article>
        </section>
        <aside>
            <header class="estac"><h3 class="titulo">solicitar cita medica</h3></header>
        </aside>
        <footer><p id="textof">contactenos <br> line de atencion: 10002349 <br>correo: asdfasdofh@gmail.com</p></footer>
    </main>
</body>
</html>
~~~

### CSS 
~~~
main{

    height: 600px;
    width: 536px;
    margin: auto;
    border-radius: 15px 15px 0px 0px;
}
header{
    height: 109px;
    border-radius: 15px 15px 0px 0px;
}
nav {
    border:solid #184b4a;
    height: 40px;
    background-color: #184b4a;
    border-radius: 0px 0px 15px 15px;
}
section{
    height: 358px;
    width: 300px;
    display: inline-block;
}
article{
    background-color: #f8ed72ef;
    height: 150px;
    margin-top: 20px;
    border-radius: 15px 15px 15px 15px;
}
aside{
    height: 322px;
    width: 217px;
    float: right;
    margin-top: 20px;
    border-radius: 15px 15px 15px 15px;
    background-color: #4A6E6E;
}

footer{
    height: 60px;
    background-color: #184b4a;
    border-radius: 15px 15px 15px 15px;

}
img{
    
    border-radius: 15px 15px 0px 0px;
}
ul li{
    display: inline;
    font-size: 20px;
    padding-left: 20px;
    color: white;
}
aside header{
    background-color: #184b4a;
    height: 35px;
}

 h4{
    padding-top: 8px;
    padding-left: 8px;
    height: 4px;
}
p{
    font-size: 15px;
    height: 100px;
    width: 180px;
    padding-left: 8px;
}
.perro{
    height: 80px;
    width: 80px;
    float: right;
    border-radius: 0px 0px 0px 0px;
    margin: -107px 9px 0 0;
    border: solid 2px black;
}
.estac{
    margin-bottom: 20px;
}
.titulo{
    margin: 0px;
    color: white;
}
#textof{
    margin-left: 200px;
    font-size: 14px;
    color: white;
}
~~~