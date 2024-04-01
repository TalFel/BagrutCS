<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="bitcointry.WebForm2" %>

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
        .center{
            width: 60%;
            height:100%;
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
            <h1 class="header">What is Cryptocurrency</h1>
            <p class="text">
                A cryptocurrency is a digital or virtual currency that is secured by cryptography,
                Many cryptocurrencies are decentralized networks based on blockchain technology, a distributed ledger enforced by a disparate network of computers.
                A defining feature of cryptocurrencies is that they are generally not issued by any central authority, rendering them theoretically immune to 
                government interference or manipulation.
            </p>
            <br />
            <iframe src="https://www.youtube.com/embed/1YyAzVmP9xQ"
                width="560" height="315" style="margin-left:250px" frameborder="0" allowfullscreen></iframe>
            <br />
            <h1 class="header">How Much Cryptocurrencies are There?</h1>
            <p class="text">
                More than 13,000 different cryptocurrencies are traded publicly, according to CoinMarketCap.com, a market research 
                website.
                And cryptocurrencies continue to proliferate, raising money through initial coin offerings, or ICOs. The total value of all cryptocurrencies on Oct. 22, 2021,
                was more than $2.5 trillion, having fallen off an all-time high above $2.6 trillion days earlier.
                The total value of all bitcoins, the most popular digital currency, was pegged at about $1.2 trillion.
                and one Bitcoin at it's all time high was worth 68,521$.
            </p>
            <br /><br />
        </aside>
    </div>
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
