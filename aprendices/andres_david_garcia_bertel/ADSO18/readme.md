# Maquetado Html Banco

<a href="https://ibb.co/0hh4CjH"><img src="https://i.ibb.co/jgg0yvn/image.png" alt="image" border="0"></a>

### HTML 
~~~
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <main>
        <header id="prin"><img id="princi" src="enca1.png" alt="no esta disponible"></header>
        <nav>
            <ul>
                <li>Creditos</li>
                <li class="a">Leasing</li>
                <li class="a">Ahorros</li>
                <li class="a">Servivio al cliente</li>
            </ul>
        </nav>
        <section>
            <article id="artip">
                <header id="hh" class="diseño">
                    <h4 class="titulo">INCRESA A TU CUENTA</h4>
                </header>
                <li class="b">cuenta:</li>
                <li class="b">tipo:</li>
                <li class="b">clave:</li>
            </article>
            <article id="artis">
                <li class="c">TRANSACCIONES</li>
                <li class="d">Banco personal</li>
                <li class="d">Banco empresarial</li>
                <li class="d">Banco seguros</li>
                <li class="d">Pagp de factura</li>
                <li class="c">TARJETAS DE CREDITO</li>
                <li class="d">Credi Visa</li>
                <li class="e">Credi Mastercard</li>
            </article>
        </section>
        <aside>
            <article id="arti1">
                <header id="hh1" class="diseño">
                    <h5 class="titulo">SOLICITA NUESTROS PRODUCTOS </h5> <img class="imagen" src="tarjeta.png" alt="no disponible">
                    <p>Equam, ium fugiandebis sit, qui accav ipienihit as maluptatur rem et liquis et ulparci pasanis mo voluptia pa et, offictur</p>
                </header>
            </article>
            <article id="arti2">
                <header id="hh2" class="diseño">
                    <h5 class="titulo">AHORRO ESTUDIANTIL</h5> <img class="imagen" src="estudiante.png" alt="">
                    <p>Equam, ium fugiandebis sit, qui accav ipienihit as maluptatur rem et liquis et ulparci pasanis mo voluptia pa et, offictur</p>
                </header>
            </article>
            <article id="arti3">
                <header class="diseño">
                    <h5 class="titulo">CREDITOS HEHICULARES</h5> <img class="imagen" src="vehiculo.png" alt="">
                    <p>Equam, ium fugiandebis sit, qui accav ipienihit as maluptatur rem et liquis et ulparci pasanis mo voluptia pa et, offictur</p>
                </header>
            </article>
            <article id="arti4">
                <header class="diseño">
                    <h5 class="titulo">CREDITO HIPOTECARIO</h5> <img class="imagen" src="casa.png" alt="">
                    <p>Equam, ium fugiandebis sit, qui accav ipienihit as maluptatur rem et liquis et ulparci pasanis mo voluptia pa et, offictur</p>
                </header>
            </article>
        </aside>
        <footer>
            <p class="f">Contactenos</p>
            <p class="f">linea gratuita: 137838923</p>
            <p class="f">banco identidad finaciera - todos los derechos reservados</p>
        </footer>
    </main>
</body>

</html>
~~~

###CSS
~~~
main {
    height: 900px;
    width: 812px;
    margin: auto;
}

#prin {
    height: 157px;
    border-bottom: 10px solid black;
}

nav {
    background-color: #f6bd18;
    height: 55px;
    border-radius: 0px 0px 20px 20px;
}

section {
    height: 525px;
    width: 270px;
    display: inline-block;
    margin-top: 20px;
}

aside {
    height: 525px;
    width: 515px;
    float: right;
    margin-top: 20px;
}

footer {
    background-color: #232323;
    height: 55px;
    border-radius: 0px 0px 20px 20px;
}

#artip {
    background-color: #B2B2B2;
    height: 238px;
    width: 270px;
    margin-bottom: 10px;
    border-radius: 20px 20px 0px 0px;
}

#artis {
    height: 254px;
    width: 270px;
    background-color: #232323;
}

#arti1 {
    background-color: #D7D4D5;
    height: 240px;
    width: 240px;
    display: inline-block;
    margin-right: 10px;
    margin-bottom: 18px;
    border-radius: 20px 0px 0px 0px;
}

#arti2 {
    background-color: #D7D4D5;
    height: 240px;
    width: 240px;
    display: inline-block;
    margin-bottom: 18px;
    float: right;
    border-radius: 0px 20px 0px 0px;
}

#arti3 {
    background-color: #D7D4D5;
    height: 240px;
    width: 240px;
    display: inline-block;
    margin-right: 10px;
    border-radius: 0px 0px 0px 20px;
}

#arti4 {
    background-color: #D7D4D5;
    height: 240px;
    width: 240px;
    display: inline-block;
    float: right;
    border-radius: 0px 0px 20px 0px;
}

article {
    height: 250px;
    width: 210px;
    display: inline-block;
}

#princi {
    border-radius: 20px 20px 0px 0px;
}

ul li {
    display: inline;
    font-size: 30px;
    margin-left: 50px;
    margin-top: 50px;
}

ul {
    margin-top: 0px;
    padding: 10px;
}

.a {
    border-left: 4px solid white;
}

.diseño {
    height: 40px;
    background-color: #232323;
}

#hh1 {
    border-radius: 20px 0px 0px 0px;
}

#hh2 {
    border-radius: 0px 20px 0px 0px;
}

#hh {
    border-radius: 20px 20px 0px 0px;
}

h2 {
    padding: 20px;
}

.titulo {
    margin: 0px;
    text-align: center;
    color: white;
}

.imagen {
    height: 100px;
    margin-top: 35px;
    margin-left: 39px;
}

p {
    font-size: 15px;
}

.b {
    font-size: 30px;
    margin-bottom: 10px;
    color: #525252;
}

li {
    display: block;
}

.c {
    font-size: 25px;
    color: #EAAD17;
    text-align: center;
    background-color: #141414;
}

.d {
    font-size: 24px;
    border-bottom: 2px solid #525252;
    color: #A8A8A8;
    text-align: center;
}

.e {
    font-size: 24px;
    color: #A8A8A8;
    text-align: center;
}

.f {
    margin: 0px;
    text-align: center;
    color: #A8A8A8;
}
~~~