<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Telefon_Alis.aspx.cs" Inherits="web_Odev.Telefon_Alis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
                 <tr>
                    <td>Alış ID : </td>
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
                    <td>Alış Fiyatı : </td>
                    <td><asp:TextBox runat="server" ID="txtAlis" /></td>
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
                     <td>Alış ID</td>
                     <td>Telefon ID</td>
                     <td>Alış Fiyatı</td>
                     
                 </tr>
                    <asp:Repeater ID="rptAlis" runat="server">
                        <ItemTemplate>

                             <tr>                    
                                                                      
                                 <td><%#Eval("AlisID")%></td>
                                 <td><%#Eval("TelefonID")%></td>                                     
                                 <td><%#Eval("AlisFiyat")%></td>                                      
                                 
                             </tr>
                        </ItemTemplate>
             </asp:Repeater>

         </table>


    </form>
</body>
</html>
