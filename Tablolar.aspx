<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tablolar.aspx.cs" Inherits="web_Odev.Tablolar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            
                 <tr>
                     <td>ID</td>
                     <td>Telefon Marka Adı</td>
                     <td>Telefon Model Adı</td>
                     <td>Alış Fiyatı</td>
                     <td>Satış Fiyatı</td>
                     <td>Hafıza</td>
                     <td>Renk</td>
                     
                 </tr>
                    <asp:Repeater ID="rptTablo" runat="server">
                        <ItemTemplate>

                             <tr>                    
                                                                      
                                 <td><%#Eval("ID")%></td>
                                 <td><%#Eval("TelefonMarkaAdi")%></td>                                     
                                 <td><%#Eval("TelefonModelAdi")%></td>  
                                 <td><%#Eval("AlisFiyat")%></td>
                                 <td><%#Eval("SatisFiyat")%></td>                                     
                                 <td><%#Eval("Hafiza")%></td> 
                                 <td><%#Eval("Renk")%></td>
                                 
                             </tr>
                        </ItemTemplate>
             </asp:Repeater>

         </table>
    </form>
</body>
</html>
