
<%@ Page Title="" Language="C#" MasterPageFile="~/Designpage.Master" AutoEventWireup="true" CodeBehind="Addproduct.aspx.cs" Inherits="Project1.Addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style type="text/css">

/* NOIRÉ — Add Product */

.noire-add-product {
    background: #49383B;
    color: #F5F0E8;
    font-family: "Montserrat", sans-serif;
    padding: 70px 20px 85px;
    min-height: 650px;
    box-sizing: border-box;
}

/* Page heading */

.product-heading {
    max-width: 720px;
    margin: 0 auto 38px;
    text-align: center;
}

.product-heading h2 {
    margin: 0;
    color: #F5F0E8;
    font-family: Georgia, "Times New Roman", serif;
    font-size: 40px;
    font-weight: normal;
    letter-spacing: 2px;
}

.product-heading p {
    margin: 12px 0 0;
    color: #D8C9C9;
    font-family: "Montserrat", sans-serif;
    font-size: 13px;
    letter-spacing: 2px;
    line-height: 1.8;
    text-transform: uppercase;
}

.product-line {
    width: 45px;
    height: 2px;
    background: #783B45;
    margin: 22px auto 0;
}

/* Main form card */

.product-form {
    width: 720px !important;
    max-width: 100%;
    margin: 0 auto;
    padding: 38px 45px;

    background: #191516;
    border: 1px solid #514044;
    border-radius: 2px;
    box-shadow: 0 15px 45px rgba(0, 0, 0, 0.35);

    border-collapse: separate;
    border-spacing: 0;
    box-sizing: border-box;
}

/* Table layout */

.product-form tr td {
    padding: 15px 10px;
    vertical-align: middle;
}

.product-form td:first-child {
    width: 220px;
}

/* Labels */

.product-label {
    display: block;
    color: #F5F0E8 !important;
    font-family: "Montserrat", sans-serif;
    font-size: 14px;
    font-weight: 500;
    letter-spacing: 0.3px;
    line-height: 1.6;
}

/* Textboxes, dropdown and description */

.product-form input[type="text"],
.product-form select,
.product-form textarea {
    display: block;
    width: 100% !important;
    box-sizing: border-box;

    border: 1px solid #514044;
    border-radius: 0;
    background: #272123;
    color: #F5F0E8;

    font-family: "Montserrat", sans-serif;
    font-size: 14px;
    font-weight: normal;
    padding: 12px 14px;
    outline: none;

    transition: border-color 0.3s ease,
                background 0.3s ease;
}

.product-form input[type="text"],
.product-form select {
    height: 48px;
}

.product-form textarea {
    height: 125px !important;
    line-height: 1.7;
    resize: vertical;
}

/* Dropdown */

.product-form select {
    cursor: pointer;
}

/* Focus effect */

.product-form input[type="text"]:focus,
.product-form select:focus,
.product-form textarea:focus {
    background: #302629;
    border-color: #BD777E;
    box-shadow: 0 0 0 2px rgba(189, 119, 126, 0.08);
}

/* Image upload */

.product-form input[type="file"] {
    max-width: 100%;
    color: #F5F0E8;
    font-family: "Montserrat", sans-serif;
    font-size: 13px;
}

.product-form input[type="file"]::file-selector-button {
    padding: 10px 13px;
    margin-right: 10px;

    background: #34282B;
    color: #F5F0E8;
    border: 1px solid #64464C;

    font-family: "Montserrat", sans-serif;
    font-size: 12px;
    cursor: pointer;
}

/* Enter button */

.product-form input[type="submit"] {
    width: 100%;
    height: 50px;
    margin-top: 10px;

    border: 1px solid #783B45;
    border-radius: 0;
    background: #783B45;
    color: #FFF8F0;

    font-family: "Montserrat", sans-serif;
    font-size: 13px;
    font-weight: 600;
    letter-spacing: 2px;
    text-transform: uppercase;

    cursor: pointer;
    transition: all 0.3s ease;
}

.product-form input[type="submit"]:hover {
    background: #984E59;
    border-color: #BD777E;
}

/* Status message */

.product-form span[id*="Label6"] {
    display: block;
    padding-top: 12px;
    text-align: center;

    color: #DCA0A5;
    font-family: "Montserrat", sans-serif;
    font-size: 14px;
}

/* Responsive layout */

@media screen and (max-width: 760px) {

    .noire-add-product {
        padding: 45px 15px 55px;
    }

    .product-heading h2 {
        font-size: 32px;
    }

    .product-heading p {
        font-size: 11px;
        letter-spacing: 1.5px;
    }

    .product-form {
        width: 100% !important;
        padding: 25px 18px;
    }

    .product-form td:first-child {
        width: 38%;
    }

    .product-form tr td {
        padding: 11px 5px;
    }
}

@media screen and (max-width: 420px) {

    .product-form tr td {
        display: block;
        width: 100%;
        box-sizing: border-box;
    }

    .product-form td:first-child {
        padding-bottom: 3px;
    }
}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="noire-add-product">

    <div class="product-heading">
        <h2>Add a Fragrance</h2>
        <p>The NOIRÉ Collection</p>
        <div class="product-line"></div>
    </div>

    <table class="product-form">

        <tr>
            <td>
                <asp:Label ID="Label7" runat="server"
                    Text="Product Category"
                    CssClass="product-label"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"
                    Text="Product Name"
                    CssClass="product-label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label2" runat="server"
                    Text="Product Image"
                    CssClass="product-label"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label3" runat="server"
                    Text="Product Description"
                    CssClass="product-label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"
                    TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label4" runat="server"
                    Text="Product Price"
                    CssClass="product-label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label5" runat="server"
                    Text="Product Stock"
                    CssClass="product-label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server"
                    OnClick="Button1_Click"
                    Text="Add Product" />
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <asp:Label ID="Label6" runat="server"
                    Text="Label"
                    Visible="False"></asp:Label>
            </td>
        </tr>

    </table>

</div>

</asp:Content>

