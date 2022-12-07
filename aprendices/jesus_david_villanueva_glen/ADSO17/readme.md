# Pagina Caninos
![image](https://user-images.githubusercontent.com/110982601/206300088-7885f254-59d9-4c91-8345-856980c02c32.png)

# html
``` 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="estilos.css">
    <title>Document</title>
</head>
<body>
    <main>
        <header><img src="veterinaria.png" alt="veterinaria"></header>
        <nav>
            <ul>
                <li>servicios</li>
                <li>productos</li>
                <li>guarderia</li>
                <li>promociones</li>
            </ul>
        </nav>
        <section>
         <article>
            <h2>cuidado y educacion de su perro</h2>
            <h5>Equam, lum fugiandebis sit, qui occab <br> 
                ipienihit as moluptatur rem <br> et liquis et  
                ulparci psanis <br> mo voluptia <br> volupta  pa et 
                 offictur? 
                 Dusdae <br> volore, <br> que peribus 
                 sapist, <br> sande volenis <br> sunt.  <br>
                 Ver mas...</h5>
                <img src="perro.png" alt="perro"
            ></article>
         <article>
            <h2 class="bloque2"> salir de viaje con su mascota </h2class> 
                <h5>Equam, lum fugiandebis sit, qui occab <br> 
                    ipienihit as moluptatur rem <br> et liquis et  
                    ulparci psanis <br> mo voluptia <br> volupta  pa et 
                     offictur? 
                     Dusdae <br> volore, <br> que peribus 
                     sapist, <br> sande volenis <br> sunt.  <br>
                     Ver mas...</h5>
                     <img src="perro2.png" alt="perro2">
         </article>
        </section>
        <aside>
            <header class= "superior"> 
                <h2 class="titulo"> solicitar cita medica</h2>
        </header>
            <ul class="datos"> 
                <datagrid>mascota <input type="text"></datagrid>
                <br><br> 
                <datagrid>edad <input type="number" name="edad" id=""></datagrid><br> <br> 
                <datagrid>raza <input type="text"></datagrid><br> <br> 
                <datagrid>fecha <input type="number" name="fecha" id="green"></datagrid><br> <br> 
                <datagrid>hora <input type="number" name="hora" id="15:00"> </datagrid><br> <br> 
                <datagrid>amo <input type="text"></datagrid><br> <br> 
                <button class="validar"> VALIDAR CITA </button>
            </ul>
        </aside>
        <footer> 
            <h3>
            contactenos
        </h3>
        <h3>
linea gratuita 018000-00001 
</h3> 
        <h3>
correo: preguntas@caninosyfelinos.com
        </h3>
    </footer>
        
    </main>
</body>
</html>
``` 
# Css
``` 
main{
    
    width: 800px;
    height: 560px;
    margin: auto;
    border-radius: 10px;
}
header{
    
    height: 90px;
    border-radius: 10px;
}
nav{
    background-color: #004030;
    margin: -16px 3px -4px 0px;
    height: 50px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
    
}
ul li{
    
    margin: 17px 59px 0px 0px;
    display: inline-flex;
    color: white;
    margin-bottom: 20px;
    letter-spacing: 1px;
    margin-right: 45px;
    margin-left: 45px;  
}
section{
   
    height: 200px;
    width: 300px;
    float: left;
    border-radius: 10px;

}
article{
    background-color: #ffff99;
    height: 185px;
    width: 350px;
    border-radius: 10px;
    font-weight: 900px;
    font-size: 14px;
    margin-bottom: 5px;

    
    
    
    
    
}
aside{
    border: 1px solid black;
    height: 402px;
    width: 300px;
    float: right;
    border-radius: 10px;
    background-color: #73b6a5;
    margin: 10px  0  0  0;
    margin-bottom: 10px;
    
}
footer{
    border-bottom: 20px;
    height: 80px;
    clear: both;
    background-color: #004030;
    margin: 0px 2px 0px -1px;
}
img{
    height: 90px;
    width: 797px;
    

}
article img{
    width: 140px;
    height: 80px;
    margin-right: 145px;
    margin-left: 145px;
    margin-bottom: 255px;
    border: 1px solid black;
    margin: 0px 0px -76px 182px;
    border-radius: 10px;
   
}
h5{
    margin: 0 0 -119px 0;
}

header.superior{
    border: 1px solid black;
    margin: auto;
    height: 50px;
    width: 300px;
    background-color: #052019;
    border-radius: 10px;

}
h2.titulo{
    margin: 10px 0px 0px 50px;
    color: gainsboro;
}
ul.datos{
    color: gainsboro;
    font-size: 20px;
    margin: 24px 0px 0 -12px;
    
}
button.validar{
    
    margin: 0px 0 0 82px;
    background-color:rgb(203, 198, 198);
  
   
    
}
input.color{
    background-color: rgb(203, 198, 198);
    border-radius: 10px;
    
   
}
h3{
    font-size: 15px;
    margin: 0px 0px 9px 320px;
    color:  gainsboro;

}
``` 
