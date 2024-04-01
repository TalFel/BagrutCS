<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="bitcointry.pages.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .header{
            padding-left: 5px;
            font-family: Monaco;
            font-size: 40px;
            color: white;
        }
        .smallheader{
            padding-left: 5px;
            font-family: Calibri;
            font-size: 20px;
            color: white;
            text-decoration: underline;
        }
        .text{
            padding-left: 10px;
            font-family: 'Courier New', monospace;
            color: white;
        }
        .center{
            width: 60%;
            height:100%;
            background-color:  #19334d;
            margin-left: 20%;
            margin-right: 20%;
            margin-top: 3px;
        }
        .button{
            background-color: black;
            color: white;
            outline: 1px solid black;
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
            width: 200px;
            box-sizing: border-box;
            border: 2px solid rgba(0, 0, 0, 0.02);
            margin-bottom: 50px;
            margin-left: 10px;
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
            margin-left: 10px;
            font-size: 13px;
            box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
        }
        .table{
            color: white;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center">
        <aside>
            <h1 class="header" style="text-align:center" >admin page</h1>
            <form method="post" style="margin-left:400px">
                <input class="tb" type="text" placeholder="username to search" name="user2serach"/>
                <input class="submit" type="submit" name="search" value="search"/>
            </form>
            <form method="post" style="margin-left:400px">
                <input class="tb" type ="text" placeholder="fullname to search" name="Fullname"/>
                <input class="submit" type="submit" name="search1" value="search"/>
            </form>
            <form method="post" style="margin-left:500px">
                <input class="submit" type="submit" name="reset" value="reset"/>
            </form>
            <br /><br /><br />
            <%=usersTDB %>
            <br /><br /><br />
            <form method="post" style="margin-left:35%">
                <input class="tb" type="text" name="user2delete" placeholder="username to delete" />
                <input class="submit" type="submit" name="deleteBtn" value="Delete" />
            </form>

        </aside>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
