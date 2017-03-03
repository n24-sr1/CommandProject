<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="LogForm.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
    <style>


    body {
            background-image: url("img/homepagebackground.jpg");
        }

        .Item {
            background-color:white;
            margin:50px;
        }

    </style>







    <div class="Item">
        <asp:textbox id="Textbox1" meta:resourcekey="WithHint" runat="server" Height="50" Width="100" TextMode="MultiLine"/>

        <asp:textbox id="Textbox2"  runat="server" Height="50" Width="100" TextMode="MultiLine"/>
    </div>



    </form>
</body>
</html>
