 //********************************************************************//
 //---ESTE SCRIPT SIRVE PARA DOMUENTACION O FUNCIONES POR JAVASCRIPT---// 
 //********************************************************************//


 // #region ----->>> DESHABILITA LA TECLA ENTER EN LA PANTALLA <<<--------
 $(function () {
    $("form").keypress(function (e) {
        var key;
        if (window.event)
            key = window.event.keyCode; //IE
        else
            key = e.which; //FIREFOX  
        return (key != 13);
    });
});
// #endregion 


// #region ----->>> RECORTA VALORES A UNA CADENA DE TEXTO <<<--------
 const str = "DelftStacks";
 const str2 = str.substring(0, str.length - 2);
 console.log(str2);
// #endregion 

 // #region ----->>> FUNCION PARA DARLE FORMATO A UNA FECHA <<<--------
 let vFechaInicio = new Date();
 let sfechaInicio;
 let dI = vFechaInicio.getDate();
 var mI = vFechaInicio.getMonth() + 1;
 var yI = vFechaInicio.getFullYear();
 sfechaInicio = (dI <= 9 ? '0' + dI : dI) + '/' + (mI <= 9 ? '0' + mI : mI) + '/' + yI + ' ' + '00:00';
 // #endregion 


// #region ----->>> BORRA SOLO LOS ESPACIOS EN BLANCO EN UNA CADENA DE TEXTO <<<--------
 const str = "DelftS    tacks  ";
 const str2 = str.replace(/\s+/g, '');
 console.log(str2);
// #endregion 

 // #region ----->>> REEMPLAZA LOS CARACTERES DE UNA CADENA DE TEXTO <<<--------
const p = 'The quick brown fox jumps over the lazy dog. If the dog reacted, was it really lazy?';
console.log(p.replace('dog', 'monkey'));
// expected output: "The quick brown fox jumps over the lazy monkey. If the dog reacted, was it really lazy?"
 // #region ----->>> REEMPLAZA LOS CARACTERES DE UNA CADENA DE TEXTO <<<--------

// #region ----->>> PRIMERAS LETRAS DE LAS PALABRAS EN MAYUSCULAS <<<--------
  const str = "este es mi texto solo en minusculas";
  str = str.replace(/\b\w/g, l => l.toUpperCase())
  console.log(str);
 // #endregion 