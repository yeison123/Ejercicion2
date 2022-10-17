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
    <style type="text/css">
        .auto-style4 {
            width: 53%;
            height: 173px;
        }
    </style>
</head>

<body>
    <div id="wrapper">

        <h1>Pagina de Registro</h1>

        <form id="form1" runat="server">
            <div class="col-2">
                <label>
                    Nombres
      <asp:TextBox ID="text_nombres" runat="server"></asp:TextBox>
                    &nbsp;</label>&nbsp;
                <label>
                    Apellidos
      <asp:TextBox ID="text_apellidos" runat="server"></asp:TextBox>
                    &nbsp;</label>
                <br />
            </div>
            <div class="col-2">
            </div>
            <div class="col-2">
                <label>
                    Edad
      <asp:TextBox ID="text_edad" runat="server"></asp:TextBox>
                    &nbsp;</label>&nbsp;
                Nacionalidad
                <asp:DropDownList ID="nacionalidad" runat="server" DataSourceID="SqlDataSource5" DataTextField="descripcion" DataValueField="id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:login_undaConnectionString %>" SelectCommand="SELECT * FROM [nacionalidades]"></asp:SqlDataSource>
                <br />
            </div>

            <div class="col-3">
            </div>
            <div class="col-3">
                <label>
                    Email
                </label>
                <asp:TextBox ID="text_email" runat="server"></asp:TextBox>
            &nbsp;
                Password
      <asp:TextBox ID="text_password" runat="server"></asp:TextBox>
                <label>
                    &nbsp;</label>
                <br />
            </div>
            <div class="col-3">
            </div>

            <div class="col-4">
                <label>
                    Carrera
                    <asp:DropDownList ID="carrera" runat="server" DataSourceID="SqlDataSource3" DataTextField="descripcion" DataValueField="id">
                </asp:DropDownList>
                &nbsp;</label>&nbsp;
                <label>
                    Semestre:
                <asp:TextBox ID="semestre" runat="server"></asp:TextBox>
                &nbsp;
                    Estado Civil:&nbsp;
                    <asp:DropDownList ID="civil" runat="server" DataSourceID="SqlDataSource4" DataTextField="descripcion" DataValueField="id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:login_undaConnectionString %>" SelectCommand="SELECT * FROM [estados_civies]"></asp:SqlDataSource>
&nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:login_undaConnectionString %>" SelectCommand="SELECT * FROM [carreras]"></asp:SqlDataSource>
                <br />
                </label>
            </div>
            <div class="col-4">
                <asp:Button ID="Registrar" runat="server" Text="Registrar" />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:login_undaConnectionString %>" SelectCommand="SELECT * FROM [carreras]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:login_undaConnectionString %>" SelectCommand=" SELECT ROW_NUMBER() OVER (order by (select 1))+ (SELECT COALESCE(MAX(id),0) FROM dbo.usuarios)"></asp:SqlDataSource>
                <br />
                <asp:Label ID="resultado" runat="server" Text="Label" hidden></asp:Label>
                <br />
                <br />
                <br />
                Lista de Usuarios<br />
                <table class="auto-style4">
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6">
                                <Columns>
                                    <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
                                    <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
                                    <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                                    <asp:BoundField DataField="nacionalidad" HeaderText="nacionalidad" SortExpression="nacionalidad" />
                                    <asp:BoundField DataField="estado_civil" HeaderText="estado_civil" SortExpression="estado_civil" />
                                    <asp:BoundField DataField="carrera" HeaderText="carrera" SortExpression="carrera" />
                                    <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:login_undaConnectionString %>" SelectCommand="select 
nombres,
apellidos,
edad,
nacionalidades.descripcion as nacionalidad,
estados_civies.descripcion as estado_civil,
carreras.descripcion as carrera,
correo,
password
from 
dbo.estudiantes
INNER JOIN dbo.estudiantes_usuarios ON estudiantes_usuarios.id_estudiante = estudiantes.id
INNER JOIN dbo.usuarios ON usuarios.id = estudiantes_usuarios.id_usuarios
INNER JOIN dbo.nacionalidades ON nacionalidades.id = estudiantes.nacionalidad
INNER JOIN dbo.estados_civies ON estados_civies.id = estudiantes.estado_civil
INNER JOIN dbo.carreras ON carreras.id = estudiantes.carrera
alter table estudiantes alter column nombres varchar(150)
alter table estudiantes alter column apellidos varchar(150);"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
                <br />
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
