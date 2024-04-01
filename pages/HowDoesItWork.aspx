<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HowDoesItWork.aspx.cs" Inherits="bitcointry.pages.WebForm1" %>
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
            background-color:  #19334d;
            margin-left: 20%;
            margin-right: 20%;
            margin-top: 3px;
        }
        html
        {
            overflow: scroll;
        } 

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center">
        <aside>
            <h1 class="header">The Blockchain</h1>
            <p class="text">
                Most Cryptocurrencies are operated by the blockchain technolegy.<br />
                A blockchain is a public digital ledger of transactions maintained by a network of computers in a way that makes it difficult to hack or alter.
                The technology offers a secure way for individuals to deal directly with each other, without an intermediary like a government, bank or other third party.
                The growing list of records, called blocks, is linked together using cryptography.
                Each transaction is independently verified by peer-to-peer computer networks, time-stamped and added to a growing chain of data. Once recorded, the data cannot be altered.
            </p>
            <iframe src="https://www.youtube.com/embed/SSo_EIwHSd4"
                width="560" height="315" style="margin-left:250px" frameborder="0" allowfullscreen></iframe>

            <br />
            <h1 class="header">How Does it Work</h1>
            <p class="text">
                Blockchain consists of three important concepts: blocks, nodes and miners.
            </p>
            <h1 class="smallheader">Blocks</h1>
            <p class="text">
                Every chain consists of multiple blocks and each block has three basic elements:

                The data in the block.
                A 32-bit whole number called a nonce. The nonce is randomly generated when a block is created, which then generates a block header hash. 
                The hash is a 256-bit number wedded to the nonce. It must start with a huge number of zeroes (i.e., be extremely small).
                When the first block of a chain is created, a nonce generates the cryptographic hash. The data in the block is considered signed and forever tied to the nonce and hash unless it is mined.  
            </p>
            <h1 class="smallheader">Nodes</h1>
            <p class="text">
                One of the most important concepts in blockchain technology is decentralization. No one computer or organization can own the chain.
                Instead, it is a distributed ledger via the nodes connected to the chain. Nodes can be any kind of electronic device that maintains copies of the blockchain and keeps the network functioning. 
                Every node has its own copy of the blockchain and the network must algorithmically approve any newly mined block for the chain to be updated, trusted and verified.
                Since blockchains are transparent, every action in the ledger can be easily checked and viewed. Each participant is given a unique alphanumeric identification number that shows their transactions.
                Combining public information with a system of checks-and-balances helps the blockchain maintain integrity and creates trust among users.
                Essentially, blockchains can be thought of as the scalability of trust via technology. 
            </p>
            <h1 class="smallheader">Miners</h1>
            <p class="text">
                Miners create new blocks on the chain through a process called mining.

                In a blockchain every block has its own unique nonce and hash, but also references the hash of the previous block in the chain, so mining a block isn't easy, especially on large chains.

                Miners use special software to solve the incredibly complex math problem of finding a nonce that generates an accepted hash. Because the nonce is only 32 bits and the hash is 256,
                there are roughly four billion possible nonce-hash combinations that must be mined before the right one is found.
                When that happens miners are said to have found the "golden nonce" and their block is added to the chain. 

                Making a change to any block earlier in the chain requires re-mining not just the block with the change, but all of the blocks that come after.
                This is why it's extremely difficult to manipulate blockchain technology. Think of it as "safety in math" since finding golden nonces requires an enormous amount of time and computing power.

                When a block is successfully mined, the change is accepted by all of the nodes on the network and the miner is rewarded financially.
            </p>
            <br />
            <br />
        </aside>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
