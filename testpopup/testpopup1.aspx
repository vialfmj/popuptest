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

        function isGreenBrowser() {
                var sUsrAg = navigator.userAgent;

            if (sUsrAg.indexOf("MSIE") > -1) return true;
            return false



        }
        function openPopUpWithModal() {
            var retVal = window.showModalDialog("/popup1.aspx");
            alert("retVal: " + retVal)
            return retVal;
        }
        function openNewWindow() {
            window.open("/popup1.aspx");
        }
        function openPopUp() {
            var gb = isGreenBrowser();
            if (gb == true) {
                //alert("is gb");
                //var res = openPopUpWithModal();
                //alert(res);
                var res = window.open("/popup1.aspx")
            }
            else {
                alert("is not gb")
                openNewWindow();
            }
        }
        document.getElementById("btnOpen").onclick = openPopUp
        //function messageHandler (event) {
        //    console.log({event})
        //}
        //window.onmessage = messageHandler;

        //function fn1() {
        //    //console.log("fn1");
        //    //console.log({ browser: window.navigator })

        //    var sBrowser,
        //        sUsrAg = navigator.userAgent;

        //    if (sUsrAg.indexOf("Chrome") > -1) {
        //        sBrowser = "Google Chrome";
        //    } else if (sUsrAg.indexOf("Safari") > -1) {
        //        sBrowser = "Apple Safari";
        //    } else if (sUsrAg.indexOf("Opera") > -1) {
        //        sBrowser = "Opera";
        //    } else if (sUsrAg.indexOf("Firefox") > -1) {
        //        sBrowser = "Mozilla Firefox";
        //    } else if (sUsrAg.indexOf("MSIE") > -1) {
        //        sBrowser = "Microsoft Internet Explorer";
        //    }

        //    alert("Usted está utilizando: " + sBrowser);
        //}


        //var ES1 = !!(Array.prototype && Array.prototype.join),
        //    ES3 = !!(Array.prototype && Array.prototype.pop),
        //    ES51 = (function () { 'use strict'; return !this; })(),
        //    ES6 = !!Object.assign,
        //    ES7 = !!(Array.prototype && Array.prototype.includes);
        ///*
        //var ES51    = Modernizr.es5,
        //    ES6     = Modernizr.es6object;
        //    ES7     = false;
        //*/

        //if (ES7) {
        //    alert('Tu navegador contiene características mínimas de ECMAScript 7');
        //} else if (ES6) {
        //    alert('Tu navegador contiene características mínimas de ECMAScript 6');
        //} else if (ES51) {
        //    alert('Tu navegador tiene soporte para ECMAScript 5.1');
        //} else if (ES3) {
        //    alert('Tu navegador contiene características de ECMAScript 3');
        //} else if (ES1) {
        //    alert('Tu navegador contiene características de ECMAScript 1');
        //} else {
        //    alert('Tu navegador contiene características de ECMAScript desconocida');
        //}
        //const openWindow = () => {
        //    window.open('popup1.aspx')
        //}


        //document.getElementById('btnOpen').addEventListener("click", openWindow)
    </script>
</body>
</html>
