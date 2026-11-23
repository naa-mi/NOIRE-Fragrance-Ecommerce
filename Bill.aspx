
<%@ Page Title="" Language="C#" MasterPageFile="~/Designpage.Master"
    AutoEventWireup="true" CodeBehind="Bill.aspx.cs"
    Inherits="Project1.Bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .bill-page {
            background: #171717;
            color: #f5eeee;
            padding: 40px 20px;
            min-height: 650px;
            font-family: Arial, sans-serif;
        }

        .bill-container {
            max-width: 950px;
            margin: auto;
            padding: 35px;
            background: #211a1c;
            border: 1px solid #70283a;
            border-radius: 8px;
        }

        .brand {
            text-align: center;
            color: #d3a0a7;
            font-size: 34px;
            font-weight: bold;
            letter-spacing: 7px;
            margin-bottom: 5px;
        }

        .tagline {
            text-align: center;
            color: #c5b8ba;
            font-size: 13px;
            letter-spacing: 2px;
        }

        .bill-title {
            text-align: center;
            font-size: 25px;
            color: #ffffff;
            margin-top: 30px;
            margin-bottom: 8px;
            letter-spacing: 3px;
        }

        .thank-you {
            display: block;
            text-align: center;
            color: #d3a0a7;
            margin-bottom: 30px;
        }

        .bill-info {
            width: 100%;
            background: #171717;
            border: 1px solid #493036;
            border-collapse: collapse;
            margin-bottom: 30px;
        }

        .bill-info td {
            padding: 13px 18px;
            border-bottom: 1px solid #35272b;
            width: 50%;
            vertical-align: top;
        }

        .info-label {
            color: #d3a0a7;
            font-weight: bold;
        }

        .info-value {
            color: #ffffff;
        }

        .section-title {
            display: block;
            color: #d3a0a7;
            font-size: 18px;
            letter-spacing: 2px;
            margin-bottom: 15px;
        }

        .order-grid {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 25px;
            color: #f5eeee;
        }

        .order-grid th {
            background: #70283a;
            color: #ffffff;
            padding: 14px 10px;
            text-align: left;
        }

        .order-grid td {
            background: #171717;
            color: #f5eeee;
            padding: 13px 10px;
            border-bottom: 1px solid #493036;
        }

        .footer-text {
            display: block;
            text-align: center;
            color: #bdaeb1;
            margin: 25px 0;
        }

        .bill-button {
            background: #70283a;
            color: white;
            border: 1px solid #70283a;
            padding: 12px 22px;
            cursor: pointer;
            font-size: 13px;
            letter-spacing: 1px;
            margin: 5px;
        }

        .bill-button:hover {
            background: #8b354a;
        }

        .button-area {
            text-align: center;
            margin-top: 15px;
        }

        @media (max-width: 600px) {
            .bill-page {
                padding: 20px 10px;
            }

            .bill-container {
                padding: 18px 12px;
            }

            .bill-info td {
                padding: 10px 8px;
                overflow-wrap: anywhere;
            }

            .order-grid th,
            .order-grid td {
                padding: 9px 5px;
                font-size: 12px;
            }
        }

        @media print {
            .bill-page {
                background: white;
                color: black;
                padding: 10px;
                min-height: 0;
            }

            .bill-container {
                background: white;
                color: black;
                border: 1px solid #999;
                max-width: 100%;
                padding: 20px;
            }

            .bill-button {
                display: none;
            }

            .brand, .tagline, .bill-title, .thank-you,
            .info-label, .info-value, .section-title,
            .order-grid th, .order-grid td, .footer-text {
                color: black;
            }

            .bill-info, .order-grid td {
                background: white;
            }

            .bill-info, .order-grid td {
                border-color: #ccc;
            }

            .order-grid th {
                background: #eee;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="bill-page">
        <div class="bill-container">

            <div class="brand">NOIRÉ</div>
            <div class="tagline">THE ART OF FRAGRANCE</div>

            <div class="bill-title">ORDER BILL</div>

            <asp:Label ID="Label4" runat="server"
                Text="Thank you for your purchase"
                CssClass="thank-you">
            </asp:Label>

            <asp:Label ID="Label11" runat="server"
                Text="ORDER & CUSTOMER INFORMATION"
                CssClass="section-title">
            </asp:Label>

            <table class="bill-info">
                <tr>
                    <td class="info-label">Order ID</td>
                    <td class="info-value">
                        <asp:Label ID="Label8" runat="server" Text="-"></asp:Label>
                        <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td class="info-label">Order Date</td>
                    <td class="info-value">
                        <asp:Label ID="Label9" runat="server" Text="-"></asp:Label>
                        <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td class="info-label">Customer Name</td>
                    <td class="info-value">
                        <asp:Label ID="Label10" runat="server" Text="-"></asp:Label>
                        <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td class="info-label">Customer Address</td>
                    <td class="info-value">
                        <asp:Label ID="Label15" runat="server" Text="-"></asp:Label>
                        <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td class="info-label">Phone Number</td>
                    <td class="info-value">
                        <asp:Label ID="Label16" runat="server" Text="-"></asp:Label>
                        <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>

            <asp:Label ID="Label17" runat="server"
                Text="ORDER DETAILS"
                CssClass="section-title">
            </asp:Label>

            <asp:GridView ID="GridView1" runat="server"
                AutoGenerateColumns="False"
                CssClass="order-grid"
                GridLines="None"
                Width="100%">

                <Columns>
                    <asp:BoundField DataField="prod_name"
                        HeaderText="Product" />

                    <asp:BoundField DataField="quantity"
                        HeaderText="Quantity" />

                    <asp:BoundField DataField="price"
                        HeaderText="Price (₹)"
                        DataFormatString="{0:N2}" />

                    <asp:BoundField DataField="subtotal"
                        HeaderText="Subtotal (₹)"
                        DataFormatString="{0:N2}" />
                </Columns>
            </asp:GridView>

            <asp:Label ID="Label14" runat="server"
                Text="Thank you for choosing NOIRÉ"
                CssClass="footer-text">
            </asp:Label>

            <div class="button-area">
                <asp:Button ID="Button2" runat="server"
                    Text="PLACE ORDER"
                    CssClass="bill-button"
                    CausesValidation="False"
                    OnClick="Button2_Click" />
            </div>

        </div>
    </div>

</asp:Content>
