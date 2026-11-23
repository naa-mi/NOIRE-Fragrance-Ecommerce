
<%@ Page Title="" Language="C#" MasterPageFile="~/Designpage.Master"
    AutoEventWireup="true" CodeBehind="paysuccess.aspx.cs"
    Inherits="Project1.paysuccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .success-page {
            min-height: 650px;
            background: #171717;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 50px 20px;
            color: #f5eeee;
            font-family: Arial, sans-serif;
        }

        .success-container {
            width: 100%;
            max-width: 650px;
            background: #211a1c;
            border: 1px solid #493036;
            padding: 50px 45px;
            text-align: center;
        }

        .success-icon {
            width: 75px;
            height: 75px;
            border: 1px solid #d3a0a7;
            border-radius: 50%;
            color: #d3a0a7;
            font-size: 38px;
            line-height: 75px;
            margin: 0 auto 25px;
        }

        .success-title {
            color: #d3a0a7;
            font-family: Georgia, serif;
            font-size: 32px;
            letter-spacing: 4px;
            margin-bottom: 15px;
        }

        .success-message {
            color: #c5b8ba;
            line-height: 1.8;
            font-size: 14px;
            margin-bottom: 30px;
        }

        .order-info {
            border-top: 1px solid #493036;
            border-bottom: 1px solid #493036;
            padding: 22px 0;
            margin: 25px 0;
        }

        .order-label {
            color: #bdaeb1;
            font-size: 12px;
            letter-spacing: 2px;
        }

        .order-value {
            display: block;
            color: #d3a0a7;
            font-size: 20px;
            margin-top: 10px;
        }

        .success-buttons {
            display: flex;
            justify-content: center;
            gap: 15px;
            flex-wrap: wrap;
            margin-top: 30px;
        }

        .success-button {
            padding: 13px 25px;
            font-size: 12px;
            letter-spacing: 1px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
        }

        .print-button {
            background: #70283a;
            color: white;
            border: 1px solid #70283a;
        }

        .shop-button {
            background: transparent;
            color: #d3a0a7;
            border: 1px solid #d3a0a7;
        }

        .print-button:hover {
            background: #8b354a;
        }

        .shop-button:hover {
            background: #70283a;
            color: white;
        }

        .brand-name {
            color: #d3a0a7;
            font-family: Georgia, serif;
            letter-spacing: 7px;
            font-size: 20px;
            margin-top: 35px;
        }

        @media(max-width: 600px) {
            .success-container {
                padding: 35px 20px;
            }

            .success-title {
                font-size: 25px;
            }
        }

        @media print {
            .success-buttons {
                display: none;
            }

            .success-page {
                background: white;
                color: black;
            }

            .success-container {
                background: white;
                border: 1px solid #ccc;
            }
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="success-page">

        <div class="success-container">

            <div class="success-icon">&#10003;</div>

            <h1 class="success-title">PAYMENT SUCCESSFUL</h1>

            <p class="success-message">
                Thank you for choosing NOIRÉ.<br />
                Your payment has been completed successfully
                and your order has been confirmed.
            </p>

          
            <p class="success-message">
                We appreciate your trust in us.<br />
                We hope you enjoy your fragrance.
            </p>

            <div class="success-buttons">

                <asp:Button ID="Button1" runat="server"
                    Text="PRINT BILL"
                    CssClass="success-button print-button"
                    OnClientClick="window.print(); return false;" />

                <asp:Button ID="Button2" runat="server"
                    Text="CONTINUE SHOPPING"
                    CssClass="success-button shop-button"
                    PostBackUrl="~/Home.aspx" />

            </div>

            <div class="brand-name">NOIRÉ</div>

        </div>

    </div>

</asp:Content>
