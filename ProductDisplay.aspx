<%@ Page Title="" Language="C#" MasterPageFile="~/Designpage.Master" AutoEventWireup="true" CodeBehind="ProductDisplay.aspx.cs" Inherits="Project1.ProductDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .noire-product {
            display: flex;
            align-items: center;
            gap: 55px;
            max-width: 1000px;
            margin: 50px auto;
            padding: 35px;
            background: #171717;
            color: #f5eeee;
            box-sizing: border-box;
        }

        .noire-image {
            flex: 1;
            min-width: 0;
        }

        .product-img {
            width: 100%;
            height: 400px;
            object-fit: cover;
            background: #211a1c;
        }

        .noire-details {
            flex: 1;
            min-width: 0;
        }

        .product-brand {
            color: #d3a0a7;
            font-size: 11px;
            letter-spacing: 3px;
            margin-bottom: 18px;
        }

        .product-name {
            color: #f5eeee;
            font-size: 30px;
            font-weight: 500;
            margin-bottom: 18px;
        }

        .product-description {
            color: #c4bdbd;
            font-size: 14px;
            line-height: 1.8;
            margin-bottom: 20px;
        }

        .product-price {
            color: #d3a0a7;
            font-size: 26px;
            margin-bottom: 28px;
        }

        .quantity-title {
            color: #d3a0a7;
            font-size: 11px;
            letter-spacing: 2px;
            margin-bottom: 10px;
        }

        .quantity-row {
            display: flex;
            align-items: center;
            margin-bottom: 28px;
        }

        .quantity-btn {
            width: 42px;
            height: 42px;
            background: #211a1c;
            color: #d3a0a7;
            border: 1px solid #70283a;
            font-size: 19px;
            cursor: pointer;
        }

        .quantity-input {
            width: 55px !important;
            height: 42px;
            padding: 0;
            text-align: center;
            box-sizing: border-box;
            background: #171717;
            color: #ffffff;
            border: none;
            border-top: 1px solid #70283a;
            border-bottom: 1px solid #70283a;
        }

        .cart-button {
            width: 100%;
            max-width: 280px;
            padding: 14px 20px;
            background: #70283a;
            color: #ffffff;
            border: 1px solid #70283a;
            font-size: 12px;
            letter-spacing: 2px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .cart-button:hover {
            background: #8b354a;
        }

        .cart-message {
            display: block;
            color: #d3a0a7;
            margin-top: 16px;
            font-size: 13px;
        }

        @media (max-width: 700px) {
            .noire-product {
                flex-direction: column;
                gap: 28px;
                margin: 20px auto;
                padding: 20px;
            }

            .noire-image,
            .noire-details {
                width: 100%;
            }

            .product-img {
                height: 320px;
            }

            .product-name {
                font-size: 25px;
            }
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="noire-product">

        <div class="noire-image">
            <asp:Image ID="Image1" runat="server" CssClass="product-img" />
        </div>

        <div class="noire-details">

            <p class="product-brand">NOIRÉ · FINE FRAGRANCES</p>

            <h2 class="product-name">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </h2>

            <p class="product-description">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </p>

            <h3 class="product-price">
                ₹<asp:Label ID="Label3" runat="server"></asp:Label>
            </h3>

            <p class="quantity-title">QUANTITY</p>

            <div class="quantity-row">

                <asp:Button ID="Button2" runat="server"
                    Text="−"
                    CssClass="quantity-btn"
                    OnClick="Button2_Click" />

                <asp:TextBox ID="TextBox1" runat="server"
                    Text="1"
                    CssClass="quantity-input"
                    TextMode="Number"></asp:TextBox>

                <asp:Button ID="Button3" runat="server"
                    Text="+"
                    CssClass="quantity-btn"
                    OnClick="Button3_Click" />

            </div>

            <asp:Button ID="Button1" runat="server"
                Text="ADD TO CART"
                CssClass="cart-button"
                OnClick="Button1_Click" />

            <asp:Label ID="Label4" runat="server"
                CssClass="cart-message"></asp:Label>

        </div>

    </div>

</asp:Content>