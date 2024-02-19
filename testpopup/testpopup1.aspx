<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testpopup1.aspx.cs" Inherits="testpopup1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>testpopup1</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 id="text1">titulo1</h1>
            <button id="btnOpen" class="btn btn-primary">OPEN</button>
        </div>
    </form>

    <script language="javascript">
        const openWindow = () => {
            window.open('popup1.aspx')
        }
        const messageHandler = (event) => {
            console.log({event})
        }


        document.getElementById('btnOpen').addEventListener("click", openWindow)
        window.addEventListener('message', messageHandler)
    </script>
</body>
</html>
