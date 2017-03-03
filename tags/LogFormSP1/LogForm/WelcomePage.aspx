<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="LogForm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<link rel="stylesheet" href="http://www.webserveglobal.com/catalog/view/theme/wsg/css/animate.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<style>
body {
   background-image: url("img/background.jpg");

 }
.modal{
     text-align: center;
}
.modal::before {
     content: "";	  
     display: inline-block;
     height: 100%;	 
     margin-right: -4px;
     vertical-align: middle;
}
.modal-dialog {	
     display: inline-block;	
     text-align: left;	
     vertical-align: middle;
}	
.buttons {	
    margin-top:500px;
     text-align: center;	
     vertical-align: middle;
}	
</style>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="buttons">
    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" >
        Зареєструватись
        </button>
        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
         Залогуватись
        </button>
    </div>
     



<!-- Modal Window -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-animation="bounceIn">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="H1">Авторизація</h4>
      </div>
      <div class="modal-body">
            <div class="form-group">
                <label for="usr">Логін:</label>
                <input type="text" runat="server" class="form-control" id="usr">
            </div>
             <div class="form-group">
                 <label for="pwd">Пароль:</label>
                <input type="password" runat="server" class="form-control" id="pwd">
            </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Повернутись</button>
          <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text= "Підтвердити" OnClick="ConfirmCredentials" />
      </div>
    </div>
  </div>
</div>




<script>
    $(function () {
        var ele = $("[data-animation]");
        ele.addClass('animated');
        ele.on("show.bs.modal", function () {
            $(this).addClass($(this).data('animation'));
        });
    });
</script>
    </form>
</body>
</html>




