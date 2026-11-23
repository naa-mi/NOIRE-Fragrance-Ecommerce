
<%@ Page Title="Search Results" Language="C#" MasterPageFile="~/Designpage.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Project1.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .noire-products {
            background: #211a1c;
            color: #ffffff;
            font-family: 'Montserrat', sans-serif;
            padding: 55px 6% 75px;
            min-height: 600px;
        }

        .noire-products-heading {
            text-align: center;
            margin-bottom: 45px;
        }

        .noire-products-heading span {
            color: #bd7e88;
            font-size: 10px;
            letter-spacing: 4px;
        }

        .noire-products-heading h1 {
            color: #ffffff;
            font-family: Georgia, serif;
            font-size: 40px;
            font-weight: normal;
            margin: 14px 0;
        }

        .noire-product-list {
            width: 100%;
        }

        .noire-product-list table {
    width: auto !important;
    border-collapse: separate;
    border-spacing: 18px;
}

.noire-product-list td {
    vertical-align: top;
}

.noire-product-card {
    width: 280px;
}
        .noire-product-card {
            background: #302326;
            border: 1px solid #493338;
            padding: 12px 12px 22px;
            text-align: center;
            box-sizing: border-box;
            height: 100%;
            transition: border-color 0.3s ease;
        }

        .noire-product-card:hover {
            border-color: #a45b6a;
        }

        .noire-product-image {
            display: block;
            width: 100% !important;
            height: 280px !important;
            object-fit: cover;
            background: #211a1c;
        }

        .noire-product-name {
            display: block;
            color: #ffffff;
            font-family: Georgia, serif;
            font-size: 20px;
            margin: 20px 5px 10px;
        }

        .noire-product-price {
            display: block;
            color: #d3a0a7;
            font-size: 14px;
            letter-spacing: 1px;
            margin-bottom: 8px;
        }

        .noire-product-note {
            color: #bcaeb1;
            font-family: Georgia, serif;
            font-size: 12px;
            font-style: italic;
            margin-top: 10px;
        }

        .product-container {
    display: grid;
    grid-template-columns: repeat(5, 1fr);
    gap: 20px;
}
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="noire-products">

        <div class="noire-products-heading">
            <span>THE NOIRÉ COLLECTION</span>
            <h1>Search Results</h1>
        </div>

        <div class="noire-product-list">

            <asp:DataList ID="DataList1" runat="server"
                CellSpacing="10"
                RepeatColumns="3"
                RepeatDirection="Horizontal"
                Width="100%">

                <ItemTemplate>

                    <div class="noire-product-card">

                        <asp:ImageButton ID="imgProduct"
                            runat="server"
                            CssClass="noire-product-image"
                            ImageUrl='<%# Eval("prod_img") %>'
                            CommandArgument='<%# Eval("prod_id") %>'
                            OnCommand="imgProduct_Command" />

                        <asp:Label ID="Label1"
                            runat="server"
                            CssClass="noire-product-name"
                            Text='<%# Eval("prod_name") %>' />

                        <asp:Label ID="Label2"
                            runat="server"
                            CssClass="noire-product-price"
                            Text='<%# "₹ " + Eval("prod_price").ToString() %>' />

                        <div class="noire-product-note">
                            <asp:Label ID="Label3"
                                runat="server"
                                Text='<%# Eval("prod_description") %>' />
                        </div>

                    </div>

                </ItemTemplate>

            </asp:DataList>

        </div>

    </div>

</asp:Content>
