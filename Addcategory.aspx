
<%@ Page Title="" Language="C#" MasterPageFile="~/Designpage.Master" AutoEventWireup="true" CodeBehind="Addcategory.aspx.cs" Inherits="Project1.Addcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style type="text/css">

/* NOIRÉ — Add Category */

.category-page {
    min-height: 650px;
    padding: 70px 20px 85px;
    box-sizing: border-box;
    background: #49383B;
    font-family: "Montserrat", sans-serif;
}

/* Heading */

.category-heading {
    text-align: center;
    margin: 0 auto 38px;
}

.category-heading h2 {
    margin: 0;
    color: #F5F0E8;
    font-family: Georgia, "Times New Roman", serif;
    font-size: 40px;
    font-weight: normal;
    letter-spacing: 2px;
}

.category-heading p {
    margin: 12px 0 0;
    color: #D8C9C9;
    font-family: "Montserrat", sans-serif;
    font-size: 13px;
    letter-spacing: 2px;
    line-height: 1.8;
    text-transform: uppercase;
}

.category-line {
    width: 45px;
    height: 2px;
    background: #783B45;
    margin: 22px auto 0;
}

/* Form card */

.category-form {
    width: 720px !important;
    max-width: 100%;
    margin: 0 auto;
    padding: 38px 45px;
    box-sizing: border-box;

    background: #191516;
    border: 1px solid #514044;
    border-radius: 2px;
    box-shadow: 0 15px 45px rgba(0, 0, 0, 0.35);

    border-collapse: separate;
    border-spacing: 0;
}

/* Table layout */

.category-form tr td {
    padding: 15px 10px;
    vertical-align: middle;
}

.category-form td:first-child {
    width: 220px;
}

/* Labels */

.category-label {
    display: block;
    color: #F5F0E8 !important;
    font-family: "Montserrat", sans-serif;
    font-size: 14px;
    font-weight: 500;
    letter-spacing: 0.3px;
    line-height: 1.6;
}

/* Text fields */

.category-form input[type="text"],
.category-form textarea {
    display: block;
    width: 100% !important;
    box-sizing: border-box;
    padding: 12px 14px;

    background: #272123;
    color: #F5F0E8;
    border: 1px solid #514044;
    border-radius: 0;

    font-family: "Montserrat", sans-serif;
    font-size: 14px;
    font-weight: 400;
    outline: none;

    transition: border-color 0.3s ease,
                background 0.3s ease;
}

.category-form input[type="text"] {
    height: 48px;
}

.category-form textarea {
    height: 125px !important;
    resize: vertical;
    line-height: 1.7;
}

/* Focus */

.category-form input[type="text"]:focus,
.category-form textarea:focus {
    background: #302629;
    border-color: #BD777E;
    box-shadow: 0 0 0 2px rgba(189, 119, 126, 0.08);
}

/* File upload */

.category-form input[type="file"] {
    max-width: 100%;
    color: #F5F0E8;
    font-family: "Montserrat", sans-serif;
    font-size: 13px;
}

.category-form input[type="file"]::file-selector-button {
    padding: 10px 13px;
    margin-right: 10px;
    background: #34282B;
    color: #F5F0E8;
    border: 1px solid #64464C;
    font-family: "Montserrat", sans-serif;
    font-size: 12px;
    cursor: pointer;
}

/* Add Category button */

.category-form input[type="submit"] {
    width: 100%;
    height: 50px;
    margin-top: 10px;

    background: #783B45;
    color: #FFF8F0;
    border: 1px solid #783B45;
    border-radius: 0;

    font-family: "Montserrat", sans-serif;
    font-size: 13px;
    font-weight: 600;
    letter-spacing: 2px;
    text-transform: uppercase;

    cursor: pointer;
    transition: all 0.3s ease;
}

.category-form input[type="submit"]:hover {
    background: #984E59;
    border-color: #BD777E;
}

/* Status message */

.category-form span[id*="Label4"] {
    display: block;
    padding-top: 12px;
    color: #DCA0A5;
    font-family: "Montserrat", sans-serif;
    font-size: 14px;
    text-align: center;
}

/* Responsive */

@media screen and (max-width: 700px) {

    .category-page {
        padding: 45px 15px;
    }

    .category-heading h2 {
        font-size: 32px;
    }

    .category-heading p {
        font-size: 11px;
        letter-spacing: 1.5px;
    }

    .category-form {
        width: 100% !important;
        padding: 25px 18px;
    }

    .category-form td:first-child {
        width: 38%;
    }

    .category-form tr td {
        padding: 11px 5px;
    }
}

@media screen and (max-width: 420px) {

    .category-form tr td {
        display: block;
        width: 100%;
        box-sizing: border-box;
    }

    .category-form td:first-child {
        padding-bottom: 3px;
    }
}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="category-page">

    <div class="category-heading">
        <h2>Create a Category</h2>
        <p>NOIRÉ &nbsp; | &nbsp; Collection Management</p>
        <div class="category-line"></div>
    </div>

    <table class="category-form">

        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"
                    Text="Category Name"
                    CssClass="category-label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label2" runat="server"
                    Text="Category Image"
                    CssClass="category-label"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label3" runat="server"
                    Text="Category Description"
                    CssClass="category-label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"
                    TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server"
                    OnClick="Button1_Click"
                    Text="Add Category" />
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <asp:Label ID="Label4" runat="server"
                    Text="Label"
                    Visible="False"></asp:Label>
            </td>
        </tr>

    </table>

</div>

</asp:Content>

