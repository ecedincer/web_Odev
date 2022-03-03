<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Telefon.aspx.cs" Inherits="web_Odev.Telefon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
                 <tr>
                    <td>ID : </td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlID" AutoPostBack="True"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Marka : </td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlMarka" AutoPostBack="True"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Alış Kodu : </td>
                    <td><asp:TextBox runat="server" ID="txtAlis" /></td>
                </tr>
                <tr>
                    <td>Satış Kodu :</td>
                    <td><asp:TextBox runat="server" ID="txtSatis" /></td>
                </tr>
                <tr>
                    <td>Hafıza : </td>
                    <td><asp:TextBox runat="server" ID="txtHafiza" /></td>
                </tr>
                <tr>
                    <td>Renk : </td>
                    <td><asp:TextBox runat="server" ID="txtRenk" /></td>
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
                     <td>ID</td>
                     <td>Marka</td>
                     <td>Alış Kodu</td>
                     <td>Satış Kodu</td>
                     <td>Hafıza</td>
                     <td>Renk</td>


                 </tr>
                    <asp:Repeater ID="rptTelefon" runat="server">
                        <ItemTemplate>

                             <tr>                    
                                 <td><%#Eval("ID")%></td>                                     
                                 <td><%#Eval("TelefonMarkaID")%></td>                                      
                                 <td><%#Eval("AlisID")%></td>
                                 <td><%#Eval("SatisID")%></td>                                     
                                 <td><%#Eval("Hafiza")%></td>                                      
                                 <td><%#Eval("Renk")%></td>
                             </tr>
                        </ItemTemplate>
             </asp:Repeater>

         </table>


    </form>
</body>
</html>
