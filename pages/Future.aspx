<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Future.aspx.cs" Inherits="bitcointry.Future" %>
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
            <h1 class="header">Do Bitcoin and Other Cryptocurrencies Have a Future?</h1>
            <p class="text">
                As Bitcoin continues to elicit both enthusiastic and fearful responses, does the cryptocurrency have a future?<br />
                The answer is complicated. Bitcoin will hardly topple the dollar or other major central bank-issued currencies, but its technology will change how we conduct payments, banking and other financial transactions.<br />
                These changes will bring many benefits although there are significant downsides as well. Governments will have to play a key role in getting this balance right.
            </p>
            <h1 class="header">The Positive Side</h1>
            <p class="text">
                Bitcoin’s main attraction was that it would enable users to conduct financial transactions using only their digital identities,
                and to complete those transactions without using fiat currency issued by a national central bank or relying on a trusted intermediary such as a commercial bank or credit card provider.
                The technolegy that enables Bitcoin is safer than any bank and much more efficent, you can control your balance and make transactions with only a username and a password.
                another positive thing currency is used world-wide, an universal coin. 
            </p>
            <h1 class="header">The Negative Side</h1>
            <p class="text">
                for all its technological razzle dazzle, however, Bitcoin suffers from fundamental weaknesses that stand in its way of becoming a viable medium of exchange for financial transactions.

                Bitcoin transactions are slow and expensive, and its network cannot process large transaction volumes.<br />
                A bigger problem for an aspiring medium of exchange is unstable value. Bitcoin’s wild price fluctuations, from month to month and even from day to day, make it unreliable for day-to-day transactions.
                In its early days, Bitcoin acquired an unsavory reputation for facilitating illicit commerce. It has been used recently by hackers who demanded ransomware payments in bitcoins but criminals have mostly moved on to other cryptocurrencies that offer stronger anonymity than Bitcoin.<br />
                Still, governments look askance at all such cryptocurrencies for fear that they can facilitate illegal activities such as money laundering, drug trafficking and terrorism financing.
                That is not all. Because there is no centralized authority that manages Bitcoin, transactions cannot be reversed and mistakes cannot be rectified. Bitcoin balances that are stored in digital wallets can be lost forever if users forget or misplace their passwords.<br />
                Moreover, the process by which transactions on the Bitcoin blockchain are validated requires enormous computing power and energy, with terrible environmental consequences.
            </p>
            <br /><br /><br />
        </aside>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
