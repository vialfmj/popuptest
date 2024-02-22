<%@ Page Language="C#" AutoEventWireup="true" CodeFile="popup1.aspx.cs" Inherits="popup1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>popup1</title>
</head>
<body>
    <div>
        <h1>popup1</h1>

        <div id="divChrome">

            <button id="btnEnviarDatos">Enviar datos</button>
        </div>
    </div>
    <script type="text/javascript" language="javascript">

        function enviarDatos() {
            alert("enviarDatos");

            window.opener.setReturnValues(1234, "newClient");
            window.close();
        }
        window.document.getElementById("btnEnviarDatos").onclick = enviarDatos;

        //function isGreenBrowser() {
        //    var sUsrAg = navigator.userAgent;

        //    if (sUsrAg.indexOf("MSIE") > -1) return true;
        //    return false
        //}
        //function sendData() {
        //    alert("sendData")
        //        let prevWindow = window.opener
        //        let cliente = {
        //            clienteCodi: 123456,
        //            clienteRazon: 'clienteRazon',
        //            clienteDescuento: 21
        //        }
        //        prevWindow.postMessage(cliente, '*')
        //    }
        

        //function returnData() {
        //    alert("returnData");
        //    //alert("returnData")
        //    //var cliente1 = {
        //    //    clienteCodi: 123456,
        //    //    clienteRazon: 'clienteRazon',
        //    //    clienteDescuento: 21
        //    //}
        //    //window.returnValue = "cliente1";
        //    window.close();
        //}

        //function pageLoadHandler() {
        //    if (isGreenBrowser == true) window.getElementById("btnEnviarDatos").onclick = returnData;
        //    else document.getElementById("btnEnviarDatos").addEventListener("click", sendData);
        //}

        //document.onload = pageLoadHandler()


        //document.getElementById('btnEscribirDatos').addEventListener("click", () => {
        //    console.log(window.opener.document.getElementById('text1').innerText)
        //    if (window.opener.document.getElementById('text1').innerText === 'titulo1') {
        //        window.opener.document.getElementById('text1').innerText = "titulo2"
        //        console.log('escribirdatos')
        //    }
        //    if (window.opener.document.getElementById('text1').innerText === 'titulo2') window.opener.document.getElementById('text1').innerText = 'titulo1'

        //})
        //document.getElementById('btnEnviarDatos').addEventListener("click", () => {
        //    let prevWindow = window.opener
        //    let cliente = {
        //        clienteCodi: 123456,
        //        clienteRazon: 'clienteRazon',
        //        clienteDescuento: 21
        //    }
        //    prevWindow.postMessage(cliente, '*')
        //})

    </script>
</body>
</html>
