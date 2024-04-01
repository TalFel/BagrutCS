<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="bitcointry.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .sign {
            padding-top: 40px;
            color: white;
            font-family: 'Ubuntu', sans-serif;
            font-weight: bold;
            font-size: 23px;
        }
        .main {
            background-color: #19334d;
            width: 400px;
            height: 800px;
            margin: 7em auto;
            border-radius: 1.5em;
            box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
        }
        .text{
            vertical-align: middle;
            padding-top: 10px;
            color: white;
            font-family: 'Ubuntu', sans-serif;
            font-weight: bold;
            font-size: 15px;
        }
        .tb{
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
            text-align: center;
            margin-bottom: 27px;
            font-family: 'Ubuntu', sans-serif;
        }
        form.form1 {
            padding-top: 40px;
            align-content: center;
        }
        .un:focus, .pass:focus {
            border: 2px solid rgba(0, 0, 0, 0.18) !important;
        }
        .un:focus, .pass:focus {
            border: 2px solid rgba(0, 0, 0, 0.18) !important;
        }
        .reset{
            font-family: 'Ubuntu', sans-serif;
            font-size: 13px;
            color: white;
            background-color: #19334d;
            border: 0;
            padding-left: 0px;
            padding-right: 0px;
            padding-bottom: 0px;
            padding-top: 0px;
        }
        .reset:hover{
            color: dimgray;
        }
        .reset:active{
            color: blue;
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
            font-size: 13px;
            box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
        }
        a {
            text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
            color: #E1BEE7;
            text-decoration: none
        }

        @media (max-width: 600px) {
            .main {
                border-radius: 0px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
        <h1 class="sign" align="center">Sign Up</h1>
        <form name="signup" class="form1" method="post">
            <div align="center">
                <input class="tb" align="center" type="text" name="Username" placeholder="Username"><br />
                <input class="tb" type="password" name="Password" placeholder="Password"><br />
                <input class="tb" type="text" name="fullname" placeholder="Full name"><br />
                <input class="tb" type="text" name="mail" placeholder="Email">
                <h3 class="text">Your favorite crypto</h3>
                <input type="radio" id="btc" name="favCrypto" value="Bitcoin">
                        <label for="btc" class="text">Bitcoin</label>
                        <input type="radio" id="eth" name="favCrypto" value="Etherium">
                        <label for="eth" class="text">Etherium</label>
                        <input type="radio" id="sol" name="favCrypto" value="Solana">
                        <label for="sol" class="text">Solana</label>
                        <input type="radio" id="other" name="favCrypto" value="Other">
                        <label for="ada" class="text">Other</label>
                <br /><br />
                <h3 class="text" style="margin-left:5px;">Year of birth</h3><br />
                <select class="tb" name="year" placeholder="Year of birth"><%for(int i = 2020; i > 1920; i--){ %>
                                                                <option value = <%=i%>><% =i %></option>
                                                        <%} %>
                </select>
                <div style="display: flex; align-items: center; margin-left: 20px;">
                    <input type="checkbox" style="vertical-align:middle;" name="allowmail" value="Allow">
                    <h3 class="text" style="margin-left:5px;">I confirm receipt of emails</h3><br />
                </div>
                <button class="submit" action="func" name="Signup" align="center">Sign up</button>
                <input class="reset" type="reset" value="Reset">
            </div>
        </form>
        <br /><br />
        
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>