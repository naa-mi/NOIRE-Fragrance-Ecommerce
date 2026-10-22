
<%@ Page Title="" Language="C#" MasterPageFile="~/Designpage.Master" AutoEventWireup="true" CodeBehind="Editproducts.aspx.cs" Inherits="Project1.Editproducts" MaintainScrollPositionOnPostBack="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        /* PAGE BACKGROUND */
        .products-page {
            min-height: 650px;
            background: #49383B;
            padding: 65px 25px;
            box-sizing: border-box;
            font-family: "Montserrat", sans-serif;
        }

        /* HEADING */
        .products-heading {
            color: #bd777e;
            font-family: Georgia, serif;
            font-size: 30px;
            font-weight: normal;
            letter-spacing: 5px;
            text-align: center;
            margin: 0 0 10px;
        }

        .products-line {
            width: 45px;
            height: 2px;
            background: #783b45;
            margin: 0 auto 35px;
        }

        /* GRIDVIEW CARD */
        .products-card {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 25px;
            box-sizing: border-box;
            background: #191516;
            border: 1px solid #443538;
            box-shadow: 0 15px 45px rgba(0, 0, 0, 0.35);
            overflow-x: auto;
        }

        /* GRIDVIEW */
        .products-grid {
            width: 100%;
            border-collapse: collapse;
            color: #e8dfe0;
            font-family: "Montserrat", sans-serif;
            font-size: 12px;
        }

        .products-grid th {
            background: #783b45;
            color: #ffffff;
            padding: 16px 12px;
            text-align: left;
            font-size: 11px;
            font-weight: 600;
            letter-spacing: 1px;
            text-transform: uppercase;
            border: 1px solid #514044;
        }

        .products-grid td {
            background: #221c1e;
            color: #e8dfe0 !important;
            padding: 14px 12px;
            border: 1px solid #443538;
            vertical-align: middle;
        }

        .products-grid tr:nth-child(even) td {
            background: #272123;
        }

        /* EDIT AND DELETE LINKS */
        .products-grid a {
            color: #bd777e !important;
            text-decoration: none;
            font-weight: 600;
            margin-right: 8px;
        }

        .products-grid a:hover {
            color: #ffffff !important;
        }

        /* PRODUCT IMAGES */
        .products-grid img {
            object-fit: cover;
            border: 1px solid #514044;
        }

        /* EDIT MODE INPUTS */
        .products-grid input[type="text"],
        .products-grid textarea {
            max-width: 100%;
            box-sizing: border-box;
            background: #272123;
            color: #ffffff !important;
            border: 1px solid #514044;
            padding: 8px;
            font-family: "Montserrat", sans-serif;
            font-size: 12px;
        }

        .products-grid input[type="text"]:focus,
        .products-grid textarea:focus {
            border-color: #bd777e;
            outline: none;
        }

        .products-grid input[type="file"] {
            max-width: 180px;
            color: #e8dfe0;
            font-family: "Montserrat", sans-serif;
            font-size: 11px;
        }

        /* MOBILE */
        @media screen and (max-width: 760px) {
            .products-page {
                padding: 40px 12px;
            }

            .products-card {
                padding: 10px;
                overflow-x: auto;
            }

            .products-grid {
                min-width: 950px;
            }

            .products-heading {
                font-size: 25px;
            }
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="products-page">

        <h2 class="products-heading">NOIRÉ</h2>
        <div class="products-line"></div>

        <div class="products-card">

            <asp:GridView
                ID="GridView1"
                runat="server"
                CssClass="products-grid"
                AutoGenerateColumns="False"
                DataKeyNames="prod_id,prod_img"
                OnRowCancelingEdit="GridView1_RowCancelingEdit"
                OnRowDeleting="GridView1_RowDeleting"
                OnRowEditing="GridView1_RowEditing"
                OnRowUpdating="GridView1_RowUpdating">

                <Columns>

                    <asp:CommandField
                        ShowDeleteButton="True" />

                    <asp:CommandField
                        ShowEditButton="True" />

                    <asp:BoundField
                        DataField="cat_id"
                        HeaderText="Product Category" />

                    <asp:BoundField
                        DataField="prod_name"
                        HeaderText="Product Name" />

                    <asp:TemplateField HeaderText="Product Image">

                        <EditItemTemplate>
                            <asp:FileUpload
                                ID="FileUpload1"
                                runat="server" />
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Image
                                ID="Image1"
                                runat="server"
                                Height="146px"
                                ImageUrl='<%# Eval("prod_img") %>'
                                Width="172px" />
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:BoundField
                        DataField="prod_description"
                        HeaderText="Product Description" />

                    <asp:BoundField
                        DataField="prod_price"
                        HeaderText="Product Price" />

                    <asp:BoundField
                        DataField="prod_stock"
                        HeaderText="Product Stock" />

                </Columns>

            </asp:GridView>

        </div>

    </div>

</asp:Content>

