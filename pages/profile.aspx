<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="bitcointry.pages.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .header{
            padding-left: 5px;
            font-family: Monaco;
            font-size: 40px;
            color: white;
        }
        .text{
            padding-left: 10px;
            font-family: 'Courier New', monospace;
            color: white;
        }
        .main {
            background-color: #19334d;
            width: 400px;
            height: 600px;
            margin: 7em auto;
            border-radius: 1.5em;
            box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
        }
        .tb {
            width: 76%;
            color: rgb(38, 50, 56);
            font-weight: 700;
            font-size: 14px;
            letter-spacing: 1px;
            background: white;
            padding: 10px 20px;
            border: none;
            border-radius: 20px;
            outline: none;
            box-sizing: border-box;
            border: 2px solid rgba(0, 0, 0, 0.02);
            margin-bottom: 50px;
            margin-left: 46px;
            text-align: center;
            margin-bottom: 27px;
            font-family: 'Ubuntu', sans-serif;
        }
        .submit {
            cursor: pointer;
            border-radius: 5em;
            color: white;
            background: linear-gradient(to right, #00ffff, #0026ff);
            border: 0;
            padding-left: 40px;
            padding-right: 40px;
            padding-bottom: 10px;
            padding-top: 10px;
            font-family: 'Ubuntu', sans-serif;
            margin-left: 35%;
            font-size: 13px;
            box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
        <br />
        <h1 class="header"><%=username%></h1>
        <h1 class="header" style="font-size:20px;">User details</h1>
        <p class ="text">
            Username: <%=username %><br />
            Full name: <%=fname %><br />
            Gmail: <%=gmail %><br />
            Favorite crypto: <%=favcrypto %><br />
            <%=receiptmail %><br />
            Year of birth: <%=year%>
        </p>
        <form method="post">
            <br /><br />
            <input class="tb" type="password" name="pass" placeholder="current pass"/><br />
            <input class="tb" type="password" name="newpass" placeholder="new pass" /><br />
            <input class="tb" type="password" name="newpass2" placeholder="new pass again"/><br />
            <input class="submit" type="submit" name="updatepass" value="update" /><br />
        </form>

    </div>
    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
