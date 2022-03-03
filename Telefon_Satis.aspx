<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Telefon_Satis.aspx.cs" Inherits="web_Odev.Telefon_Satis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
                 <tr>
                    <td>Satış ID : </td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlID" AutoPostBack="True"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Telefon ID : </td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlTelefon" AutoPostBack="True"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Satış Fiyatı : </td>
                    <td><asp:TextBox runat="server" ID="txtSatis" /></td>
                </tr>
                

            </table>
        <table>
            <tr>
                <td><asp:Button ID="btnEkle" runat="server" Text="Ekle" OnClick="btnEkle_Click" /></td>
                <td><asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" OnClick="btnGuncelle_Click" /></td>
            </tr>
        </table>
        
        <table>
            
                 <tr>
                     <td>Satış ID</td>
                     <td>Telefon ID</td>
                     <td>Satış Fiyatı</td>
                     
                 </tr>
                    <asp:Repeater ID="rptSatis" runat="server">
                        <ItemTemplate>

                             <tr>                    
                                                                      
                                 <td><%#Eval("SatisID")%></td>
                                 <td><%#Eval("TelefonID")%></td>                                     
                                 <td><%#Eval("SatisFiyat")%></td>                                      
                                 
                             </tr>
                        </ItemTemplate>
             </asp:Repeater>

         </table>
    </form>
</body>
</html>
