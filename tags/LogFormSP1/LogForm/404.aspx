<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="LogForm._404" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
    <style>

        body {
            background-image: url("img/404.jpg");
        }
        .HeaderItem {
            text-align:center;
            margin:50px;

        }
        .SimpleItem {
            text-align:center;
            margin:50px;

        }
        .page {
            background-color:orange;
            height:500px;
            margin: 20px;
        }
    </style>


    <div class="page">




    <div class="HeaderItem">
        <kbd><h1>404</h1><kbd>
    </div>

     <div class="SimpleItem">
      <h3 class="text-danger"> Користувача з даними логіном та паролем не знайдено...</h3>
          <asp:Button ID="ToHome" class="btn btn-primary btn-lg" runat="server"  Text= "Перейти на стартову сторінку" OnClick="GoWelcomePage" />
    </div>

</div>
    </form>
</body>
</html>
