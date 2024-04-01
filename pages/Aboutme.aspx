<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Aboutme.aspx.cs" Inherits="bitcointry.Aboutme" %>
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
            height: 200%;
            background-color:  #19334d;
            margin-left: 20%;
            margin-right: 20%;
            margin-top: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center">
        <aside>
                <h1 class="header">About Me</h1>
                <p class="text">
                    Hi, my name is Tal and im 15 y.o.<br/>
                    When I was ~6 my dad opened to me an "investing account" that was actually an Excel sheet. Every night we checked the stockes together and he updated the Excel sheet according to the profits and losses I've made.<br />
                    I dont think I've understood a thing but I made around 300$ from this.<br />
                    When the pandemic kicked in I started to be intersted in bulding computers, stocks and investing again.<br />
                    I started by replacing my CPU fan and ram but soon after, it became a whole pc build.<br />
                    Around that time a lot of Nice-hash ads were appearing on youtube - make money when you're asleep! with only your pc!....<br />
                    I decided to try and mine with my pc for the first time. I left my pc working for the night and I made a whopping 5 shekels!<br />
                    I convienced my dad to buy a mining rig and start mining with a lot of money invested. The first GPU arrived and I managed to burn it and the motherboard.<br />
                    I delayed the project by a month - until we fixed the motherboard. then we bought 3 new GPUs and started mining for real.<br />
                    We were actually making money! and a lot! It was so satisfying, making money by doing nothing. But then, when things were looking great they also started to deteriorate.<br />
                    Elon mask decided to sell a lot of bitcoins and it shocked the market. its value dropped from more then 60000$ to less than 30000$. Our profitable buisness started making less and less money and we got tired of operating the rig.<br />
                    We decided to sell all of the gear in Yad2. At the end we actually made some profit, but the experience and knowledge we got was far more valuable.<br />
                </p>
            <image src="images/firstdaymining.jpeg" style="width: 50%;"></image>
            <image src="images/rig.jpeg" style="width:50%; float:right;"></image>
            <br /><br /><br />
        </aside>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
