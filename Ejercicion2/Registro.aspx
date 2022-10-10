<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registro.aspx.vb" Inherits="Ejercicion2.WebForm1" %>

<!doctype html>
<html lang="en-US">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html">
    <title>Horizontal Application Form - Template Monster Demo</title>
    <meta name="author" content="Jake Rocheleau">
    <link rel="shortcut icon" href="http://static.tmimgcdn.com/img/favicon.ico">
    <link rel="icon" href="http://static.tmimgcdn.com/img/favicon.ico">
    <link rel="stylesheet" type="text/css" media="all" href="css/styles.css">
    <link rel="stylesheet" type="text/css" media="all" href="css/switchery.min.css">
    <script type="text/javascript" src="js/switchery.min.js"></script>
</head>

<body>
    <div id="wrapper">

        <h1>Pagina de Registro</h1>

        <form id="form1" runat="server">
            <div class="col-2">
                <label>
                    Nombres
      <asp:TextBox ID="text_nombres" runat="server"></asp:TextBox>
                    &nbsp;</label>
            </div>
            <div class="col-2">
                <label>
                    Apellidos
      <asp:TextBox ID="text_apellidos" runat="server"></asp:TextBox>
                    &nbsp;</label>
            </div>
            <div class="col-2">
                <label>
                    Edad
      <asp:TextBox ID="text_edad" runat="server"></asp:TextBox>
                    &nbsp;</label>
            </div>

            <div class="col-3">
                Nacionalidad
      <asp:TextBox ID="text_nacionalidad" runat="server"></asp:TextBox>
            </div>
            <div class="col-3">
                <label>
                    Email
                </label>
                <asp:TextBox ID="text_email" runat="server"></asp:TextBox>
            </div>
            <div class="col-3">
                <label>
                    Estado Civil:&nbsp;
      <select tabindex="6">
          <option id="1">Soltero</option>
          <option id="2">Casado</option>
          <option id="3">Viudo</option>
          <option id="4">Divorciado</option>
      </select>
                </label>
            </div>

            <div class="col-4">
                <label>
                    Carrera
      <asp:TextBox ID="text_carrera" runat="server"></asp:TextBox>
                    &nbsp;</label>
            </div>
            <div class="col-4">
                Password
      <asp:TextBox ID="text_password" runat="server"></asp:TextBox>
                <label>
                    &nbsp;</label>
            </div>
        </form>
    </div>
    <script type="text/javascript">
        var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

        elems.forEach(function (html) {
            var switchery = new Switchery(html);
        });
</script>
</body>
</html>
