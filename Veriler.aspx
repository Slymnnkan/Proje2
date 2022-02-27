<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Veriler.aspx.cs" Inherits="Proje2net.Veriler" %>

<!DOCTYPE html>
<html>
<head>
   <title>Admin Paneli</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
li a:hover{
    color:gray;
}

li a:hover:not(.active) {
  background-color:burlywood;
}


</style>
</head>
<body>

<ul>
  <li><a href="#home"></a></li>
  
 
</ul>
    <form runat="server">
        <div style="margin-top:15px">
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>KULLANICI ADI</th>
                    <th>SIFRE</th>
                    <th>SİL</th>
                    <th>İÇERİK</th>
                </tr>
                
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr>
                            <th><%# Eval("ID") %></th>
                            <td><%# Eval("KULLANICI") %></td>
                            <td><%# Eval("SIFRE") %></td>
                            <td><asp:HyperLink NavigateUrl='<%# "SilmeSayfası.Aspx?ID="+Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">İçeriği Gösterme</asp:HyperLink></td>
                            <td><asp:HyperLink NavigateUrl='<%# "VeriGöster.Aspx?ID="+Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-success">İçeriği Göster</asp:HyperLink></td>
                            </tr>



                        </ItemTemplate>
                        </asp:Repeater>



                
            </table>
        </div>
    </form>
</body>
</html>


