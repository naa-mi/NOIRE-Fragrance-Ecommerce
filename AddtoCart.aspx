
<%@ Page Title="" Language="C#" MasterPageFile="~/Designpage.Master" AutoEventWireup="true" CodeBehind="AddtoCart.aspx.cs" Inherits="Project1.AddtoCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        /* Main cart page */
        .cart-page {
            background: #171717;
            color: #f5eeee;
            padding: 55px 6%;
            min-height: 500px;
        }

        /* Page heading */
        .cart-heading {
            text-align: center;
            margin-bottom: 45px;
        }

        .cart-heading p {
            color: #d3a0a7;
            font-size: 12px;
            letter-spacing: 4px;
            margin-bottom: 12px;
        }

        .cart-heading h1 {
            color: #ffffff;
            font-size: 38px;
            font-weight: 400;
            letter-spacing: 2px;
            margin-bottom: 18px;
        }

        .cart-heading span {
            display: block;
            width: 65px;
            height: 2px;
            background: #70283a;
            margin: 0 auto;
        }

        /* Two-column cart layout */
        .cart-content {
            display: grid;
            grid-template-columns: minmax(0, 1fr) 300px;
            gap: 25px;
            align-items: start;
        }

        .cart-left {
            min-width: 0;
        }

        /* Shopping cart table wrapper */
        .cart-table-wrap {
            width: 100%;
            overflow-x: auto;
            border: 1px solid #393233;
            background: #1d1a1b;
        }

        /* GridView */
        .cart-grid {
            width: 100%;
            min-width: 750px;
            border-collapse: collapse;
            color: #f5eeee;
            background: #1d1a1b;
            font-size: 15px;
        }

        .cart-grid th {
            background: #302629;
            color: #d3a0a7;
            padding: 20px 15px;
            text-align: center;
            text-transform: uppercase;
            letter-spacing: 1.3px;
            font-size: 12px;
            font-weight: 600;
            border-bottom: 2px solid #70283a;
            white-space: nowrap;
        }

        .cart-grid td {
            padding: 22px 15px;
            text-align: center;
            vertical-align: middle;
            border-bottom: 1px solid #40383a;
            font-size: 15px;
            line-height: 1.6;
        }

        .cart-grid tr:hover td {
            background: #292224;
        }

        /* Product name */
        .cart-grid td:nth-child(2) {
            text-align: left;
            min-width: 170px;
            color: #ffffff;
            font-size: 16px;
            font-weight: 600;
        }

        /* Price and subtotal */
        .cart-grid td:nth-child(3),
        .cart-grid td:nth-child(5) {
            white-space: nowrap;
            color: #f3dce0;
            font-size: 15px;
        }

        /* Product image */
        .cart-grid img {
            width: 75px !important;
            height: 90px !important;
            object-fit: cover;
            border: 1px solid #5a4449;
        }

        /* Quantity textbox */
        .cart-grid td:nth-child(4) input[type="text"] {
            width: 60px;
            padding: 9px 5px;
            text-align: center;
            background: #252122;
            color: #ffffff;
            border: 1px solid #70283a;
            border-radius: 2px;
            font-size: 15px;
        }

        /* Edit and Remove links */
        .cart-grid a {
            display: inline-block;
            color: #e0afb7;
            text-decoration: none;
            padding: 7px 9px;
            margin: 3px;
            font-size: 11px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.7px;
            border: 1px solid #70283a;
            border-radius: 2px;
            transition: 0.2s ease;
            white-space: nowrap;
        }

        .cart-grid a:hover {
            color: #ffffff;
            background: #70283a;
            border-color: #d3a0a7;
        }

        /* Empty cart message */
        .cart-grid td[colspan] {
            padding: 45px 20px;
            color: #d3a0a7;
            text-align: center;
            font-size: 16px;
        }

        /* Cart note */
        .cart-note {
            color: #a99da0;
            font-size: 13px;
            line-height: 1.8;
            margin: 22px 0 0;
        }

        /* Order summary on the right */
        .order-summary {
            display: block;
            width: 100%;
            margin: 0;
            padding: 22px 20px;
            box-sizing: border-box;
            background: #201c1d;
            border: 1px solid #49383d;
            border-top: 3px solid #70283a;
        }

        /* Summary table */
        .summary-table {
            width: 100%;
            border-collapse: collapse;
        }

        .summary-table td {
            padding: 10px 0;
            color: #c2b5b8;
            font-size: 14px;
            vertical-align: middle;
        }

        /* Summary heading */
        .summary-heading {
            color: #d3a0a7;
            font-size: 15px;
            font-weight: 600;
            letter-spacing: 2px;
        }

        .summary-heading-cell {
            padding-bottom: 14px !important;
            border-bottom: 1px solid #49383d;
        }

        /* Amounts */
        .summary-amount {
            color: #ffffff;
            font-size: 14px;
            font-weight: 600;
            text-align: right;
            white-space: nowrap;
        }

        /* Total row */
        .summary-total td {
            padding-top: 14px;
            border-top: 1px solid #49383d;
        }

        .summary-total .summary-amount {
            color: #e5b8c0;
            font-size: 17px;
        }

        /* Checkout button */
        .checkout-button {
            width: 100%;
            max-width: 100%;
            display: block;
            box-sizing: border-box;
            margin: 8px auto 0;
            padding: 14px 8px;
            background: #70283a;
            color: #ffffff;
            border: 1px solid #70283a;
            font-size: 10px;
            font-weight: 600;
            letter-spacing: 1px;
            cursor: pointer;
            transition: 0.2s ease;
        }

        .checkout-button:hover {
            background: #8a354a;
            border-color: #d3a0a7;
        }

        /* Medium screens */
        @media (max-width: 1100px) {
            .cart-page {
                padding-left: 4%;
                padding-right: 4%;
            }

            .cart-content {
                grid-template-columns: minmax(0, 1fr) 270px;
                gap: 18px;
            }

            .cart-grid {
                min-width: 750px;
            }
        }

        /* Small screens */
        @media (max-width: 900px) {
            .cart-content {
                grid-template-columns: 1fr;
            }

            .order-summary {
                margin-top: 25px;
                padding: 20px;
            }

            .checkout-button {
                width: 100%;
            }
        }

        /* Mobile adjustments */
        @media (max-width: 600px) {
            .cart-page {
                padding: 35px 4%;
            }

            .cart-heading {
                margin-bottom: 30px;
            }

            .cart-heading h1 {
                font-size: 29px;
            }

            .cart-grid th {
                font-size: 11px;
                padding: 16px 12px;
            }

            .cart-grid td {
                padding: 17px 12px;
            }
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="cart-page">

        <!-- Page heading -->
        <div class="cart-heading">
            <p>YOUR NOIRÉ SELECTION</p>
            <h1>Shopping Bag</h1>
            <span></span>
        </div>

        <!-- Two-column cart content -->
        <div class="cart-content">

            <!-- Left side: Shopping cart -->
            <div class="cart-left">

                <div class="cart-table-wrap">

                    <asp:GridView ID="GridView1" runat="server"
                        CssClass="cart-grid"
                        GridLines="None"
                        AutoGenerateColumns="False"
                        DataKeyNames="cart_id"
                        OnRowCancelingEdit="GridView1_RowCancelingEdit"
                        OnRowDeleting="GridView1_RowDeleting"
                        OnRowUpdating="GridView1_RowUpdating"
                        OnRowEditing="GridView1_RowEditing"
                        EmptyDataText="Your shopping bag is empty.">

                        <Columns>

                            <asp:ImageField DataImageUrlField="prod_img"
                                HeaderText="Product"
                                ReadOnly="True">
                                <ControlStyle Height="90px" Width="75px" />
                            </asp:ImageField>

                            <asp:BoundField DataField="prod_name"
                                HeaderText="Fragrance"
                                ReadOnly="True" />

                            <asp:BoundField DataField="price"
                                HeaderText="Price"
                                ReadOnly="True"
                                DataFormatString="₹ {0:N2}" />

                            <asp:BoundField DataField="quantity"
                                HeaderText="Quantity" />

                            <asp:BoundField DataField="subtotal"
                                HeaderText="Subtotal"
                                ReadOnly="True"
                                DataFormatString="₹ {0:N2}" />

                            <asp:CommandField HeaderText="Edit"
                                ShowEditButton="True"
                                UpdateText="Save"
                                CancelText="Cancel" />

                            <asp:CommandField HeaderText="Remove"
                                ShowDeleteButton="True"
                                DeleteText="Remove" />

                        </Columns>

                    </asp:GridView>

                </div>

                <!-- Cart note -->
                <p class="cart-note">
                    Please review your selected fragrances before proceeding to checkout.
                </p>

            </div>

            <!-- Right side: Order summary -->
            <asp:Panel ID="Panel1" runat="server" CssClass="order-summary">

                <table class="summary-table">

                    <tr>
                        <td colspan="2" class="summary-heading-cell">
                            <asp:Label ID="lblheading" runat="server"
                                Text="ORDER SUMMARY"
                                CssClass="summary-heading">
                            </asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lblsubtotaltext" runat="server"
                                Text="Subtotal">
                            </asp:Label>
                        </td>

                        <td class="summary-amount">
                            <asp:Label ID="lblsubtotal" runat="server"
                                Text="₹ 0.00">
                            </asp:Label>
                        </td>
                    </tr>

                    <tr class="summary-total">
                        <td>
                            <asp:Label ID="lbltotaltext" runat="server"
                                Text="Total">
                            </asp:Label>
                        </td>

                        <td class="summary-amount">
                            <asp:Label ID="lbltotal" runat="server"
                                Text="₹ 0.00">
                            </asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Button1" runat="server"
                                Text="PROCEED TO CHECKOUT"
                                CssClass="checkout-button"
                                CausesValidation="false" />
                        </td>
                    </tr>

                </table>

            </asp:Panel>

        </div>

    </div>

</asp:Content>