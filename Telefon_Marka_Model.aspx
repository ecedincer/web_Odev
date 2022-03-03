<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Telefon_Marka_Model.aspx.cs" Inherits="web_Odev.Telefon_Marka_Model" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
                 <tr>
                    <td>Marka ID : </td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlID" AutoPostBack="True"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Marka : </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtMarka" />
                    </td>
                </tr>
                <tr>
                    <td>Model : </td>
                    <td><asp:TextBox runat="server" ID="txtModel" /></td>
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
                     <td>Telefon Marka ID</td>
                     <td>Telefon Marka Adı</td>
                     <td>Telefon Model Adı</td>
                     
                 </tr>
                    <asp:Repeater ID="rptMarka" runat="server">
                        <ItemTemplate>

                             <tr>                    
                                                                      
                                 <td><%#Eval("TelefonMarkaID")%></td>
                                 <td><%#Eval("TelefonMarkaAdi")%></td>                                     
                                 <td><%#Eval("TelefonModelAdi")%></td>                                      
                                 
                             </tr>
                        </ItemTemplate>
             </asp:Repeater>

         </table>
    </form>
</body>
</html>
