
<%@ Page Title="" Language="C#" MasterPageFile="~/Designpage.Master" AutoEventWireup="true" CodeBehind="Admin_home.aspx.cs" Inherits="Project1.Admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .admin-page {
            background:#49383B;
            min-height: 650px;
            padding: 65px 25px;
            box-sizing: border-box;
            font-family: "Montserrat", sans-serif;
        }

        .admin-container {
            max-width: 1050px;
            margin: 0 auto;
        }

        .admin-heading {
            text-align: center;
            margin-bottom: 45px;
        }

        .admin-brand {
            color: #c18a91;
            font-family: Georgia, serif;
            font-size: 32px;
            letter-spacing: 7px;
            margin-bottom: 12px;
        }

        .admin-heading h2 {
            color: #ffffff;
            font-family: Georgia, serif;
            font-size: 30px;
            font-weight: normal;
            margin: 0 0 12px;
        }

        .admin-heading p {
            color: #c4b4b7;
            font-size: 12px;
            letter-spacing: 1px;
            margin: 0;
        }

        .admin-divider {
            width: 55px;
            height: 2px;
            background: #873f4c;
            margin: 22px auto 0;
        }

        .admin-grid {
            display: grid;
            grid-template-columns: repeat(2, minmax(0, 1fr));
            gap: 22px;
        }

        .admin-card {
            background: #1d181a;
            border: 1px solid #493338;
            padding: 35px 30px;
            min-height: 175px;
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            transition: border-color 0.3s, background 0.3s;
        }

        .admin-card:hover {
            background: #251b1e;
            border-color: #a35a67;
        }

        .admin-number {
            color: #b97580;
            font-family: Georgia, serif;
            font-size: 14px;
            letter-spacing: 3px;
            margin-bottom: 15px;
        }

        .admin-card h3 {
            color: #ffffff;
            font-family: Georgia, serif;
            font-size: 23px;
            font-weight: normal;
            margin: 0 0 10px;
        }

        .admin-card p {
            color: #b9aaad;
            font-size: 12px;
            line-height: 1.8;
            margin: 0 0 22px;
        }

        .admin-card input[type="submit"] {
            background: #70283a;
            color: #ffffff;
            border: 1px solid #70283a;
            padding: 13px 22px;
            font-family: "Montserrat", sans-serif;
            font-size: 10px;
            font-weight: 600;
            letter-spacing: 1.5px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .admin-card input[type="submit"]:hover {
            background: #914453;
            border-color: #914453;
        }

        @media screen and (max-width: 650px) {
            .admin-page {
                padding: 40px 16px;
            }

            .admin-grid {
                grid-template-columns: 1fr;
            }

            .admin-heading h2 {
                font-size: 26px;
            }

            .admin-card {
                padding: 28px 24px;
            }
        }

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="admin-page">

        <div class="admin-container">

            <div class="admin-heading">
                <div class="admin-brand">NOIRÉ</div>
                <h2>Admin Dashboard</h2>
                <p>MANAGE YOUR FRAGRANCE COLLECTION</p>
                <div class="admin-divider"></div>
            </div>

            <div class="admin-grid">

                <div class="admin-card">
                    <div class="admin-number">01 / CATEGORIES</div>
                    <h3>Add a Category</h3>
                    <p>Introduce a new fragrance collection to your store.</p>
                    <asp:Button ID="Button1" runat="server"
                        OnClick="Button1_Click" Text="ADD CATEGORY" />
                </div>

                <div class="admin-card">
                    <div class="admin-number">02 / PRODUCTS</div>
                    <h3>Add a Product</h3>
                    <p>Add perfumes and update your fragrance collection.</p>
                    <asp:Button ID="Button2" runat="server"
                        OnClick="Button2_Click" Text="ADD PRODUCT" />
                </div>

                <div class="admin-card">
                    <div class="admin-number">03 / CATEGORIES</div>
                    <h3>View Categories</h3>
                    <p>View, edit and manage your existing categories.</p>
                    <asp:Button ID="Button3" runat="server"
                        OnClick="Button3_Click" Text="VIEW CATEGORIES" />
                </div>

                <div class="admin-card">
                    <div class="admin-number">04 / PRODUCTS</div>
                    <h3>View Products</h3>
                    <p>Manage product details, prices and available stock.</p>
                    <asp:Button ID="Button4" runat="server"
                        OnClick="Button4_Click" Text="VIEW PRODUCTS" />
                </div>

            </div>

        </div>

    </div>

</asp:Content>

