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
        <button id="btnEscribirDatos"> EscribirDatos</button>
        <button id="btnEnviarDatos">Enviar datos</button>
    </div>
    <script type="text/javascript" language="javascript">
        document.getElementById('btnEscribirDatos').addEventListener("click", () => {
            let text1 = window.opener.document.getElementById('text1')
            console.log(text1.innerText)
            if (text1.innerText === 'titulo1') {
                text1.innerText= "titulo2"
                console.log('escribirdatos')
            }
            if (text1.innerText === 'titulo2') window.opener.document.getElementById('text1').innerText = 'titulo1'

        })
        document.getElementById('btnEnviarDatos').addEventListener("click", () => {
            let prevWindow = window.opener
            let cliente = {
                clienteCodi: 123456,
                clienteRazon: 'clienteRazon',
                clienteDescuento: 21
            }
            prevWindow.postMessage(cliente, '*')
        })

    </script>
</body>
</html>
