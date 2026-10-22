
<%@ Page Title="" Language="C#" MasterPageFile="~/Designpage.Master" AutoEventWireup="true" CodeBehind="Editcategory.aspx.cs" Inherits="Project1.Editcategory" MaintainScrollPositionOnPostBack="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        /* PAGE BACKGROUND */
        .category-page {
            min-height: 650px;
            background:#49383B;
            padding: 65px 25px;
            box-sizing: border-box;
            font-family: "Montserrat", sans-serif;
        }

        /* HEADING */
        .category-heading {
            color: #bd777e;
            font-family: Georgia, serif;
            font-size: 30px;
            font-weight: normal;
            letter-spacing: 5px;
            text-align: center;
            margin: 0 0 10px;
        }

        .category-line {
            width: 45px;
            height: 2px;
            background: #783b45;
            margin: 0 auto 35px;
        }

        /* GRIDVIEW CONTAINER */
        .category-table {
            width: 100%;
            max-width: 1100px;
            margin: 0 auto;
            padding: 25px;
            box-sizing: border-box;
            background: #191516;
            border: 1px solid #443538;
            box-shadow: 0 15px 45px rgba(0, 0, 0, 0.35);
            overflow-x: auto;
        }

        /* GRIDVIEW */
        .category-grid {
            width: 100%;
            border-collapse: collapse;
            color: #e8dfe0;
            font-family: "Montserrat", sans-serif;
            font-size: 12px;
        }

        .category-grid th {
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

        .category-grid td {
            background: #221c1e;
            color: #e8dfe0 !important;
            padding: 14px 12px;
            border: 1px solid #443538;
            vertical-align: middle;
        }

        .category-grid tr:nth-child(even) td {
            background: #272123;
        }

        /* EDIT AND DELETE LINKS */
        .category-grid a {
            color: #bd777e !important;
            text-decoration: none;
            font-weight: 600;
            margin-right: 8px;
        }

        .category-grid a:hover {
            color: #ffffff !important;
        }

        /* CATEGORY IMAGES */
        .category-grid img {
            object-fit: cover;
            border: 1px solid #514044;
        }

        /* EDIT MODE INPUTS */
        .category-grid input[type="text"],
        .category-grid textarea {
            max-width: 100%;
            box-sizing: border-box;
            background: #272123;
            color: #ffffff;
            border: 1px solid #514044;
            padding: 8px;
            font-family: "Montserrat", sans-serif;
            font-size: 12px;
        }

        .category-grid input[type="file"] {
            max-width: 180px;
            color: #e8dfe0;
            font-family: "Montserrat", sans-serif;
            font-size: 11px;
        }

        /* RESPONSIVE */
        @media screen and (max-width: 760px) {
            .category-page {
                padding: 40px 12px;
            }

            .category-table {
                padding: 10px;
                overflow-x: auto;
            }

            .category-grid {
                min-width: 700px;
            }

            .category-heading {
                font-size: 25px;
            }
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="category-page">

        <h2 class="category-heading">NOIRÉ</h2>
        <div class="category-line"></div>

        <div class="category-table">

            <asp:GridView
                ID="GridView1"
                runat="server"
                CssClass="category-grid"
                DataKeyNames="cat_id,cat_image"
                AutoGenerateColumns="False"
                OnRowDeleting="GridView1_RowDeleting"
                OnRowEditing="GridView1_RowEditing"
                OnRowUpdating="GridView1_RowUpdating"
                OnRowCancelingEdit="GridView1_RowCancelingEdit">

                <Columns>

                    <asp:CommandField
                        HeaderText="Delete"
                        ShowDeleteButton="True" />

                    <asp:CommandField
                        HeaderText="Edit"
                        ShowEditButton="True" />

                    <asp:BoundField
                        DataField="Cat_id"
                        HeaderText="Category ID" />

                    <asp:BoundField
                        DataField="Cat_name"
                        HeaderText="Category Name" />

                    <asp:TemplateField HeaderText="Category Image">

                        <EditItemTemplate>
                            <asp:FileUpload
                                ID="FileUpload1"
                                runat="server" />
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Image
                                ID="Image1"
                                runat="server"
                                Height="121px"
                                ImageUrl='<%# Eval("cat_image") %>'
                                Width="125px" />
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:BoundField
                        DataField="cat_description"
                        HeaderText="Category Description" />

                </Columns>

            </asp:GridView>

        </div>

    </div>

</asp:Content>
