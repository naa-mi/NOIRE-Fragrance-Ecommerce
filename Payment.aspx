
<%@ Page Title="" Language="C#" MasterPageFile="~/Designpage.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Project1.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>
    .payment-page {
        background: #171717;
        color: #f5eeee;
        padding: 40px 20px;
        min-height: 650px;
        font-family: Arial, sans-serif;
    }

    .payment-container {
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
    }

    .tagline {
        text-align: center;
        color: #c5b8ba;
        font-size: 13px;
        letter-spacing: 2px;
        margin-bottom: 30px;
    }

    .page-title {
        display: block;
        text-align: center;
        color: white;
        font-size: 25px;
        letter-spacing: 3px;
        margin-bottom: 30px;
    }

    .payment-layout {
        display: grid;
        grid-template-columns: 1.3fr 1fr;
        gap: 25px;
    }

    .payment-panel {
        background: #171717;
        border: 1px solid #493036;
        padding: 25px;
        border-radius: 6px;
    }

    .section-title {
        display: block;
        color: #d3a0a7;
        font-size: 18px;
        letter-spacing: 2px;
        margin-bottom: 25px;
        font-weight: bold;
    }

    .field-label {
        display: block;
        color: #d3a0a7;
        margin-bottom: 9px;
        font-size: 14px;
    }

    .payment-input {
        width: 100%;
        box-sizing: border-box;
        background: #302427;
        color: white;
        border: 1px solid #493036;
        padding: 12px;
        margin-bottom: 22px;
        outline: none;
    }

    .payment-input:focus {
        border-color: #d3a0a7;
    }

    .summary-row {
        display: flex;
        justify-content: space-between;
        gap: 10px;
        padding: 14px 0;
        color: #f5eeee;
        border-bottom: 1px solid #35272b;
    }

    .summary-label {
        color: #c5b8ba;
    }

    .summary-value {
        color: white;
    }

    .total-row {
        display: flex;
        justify-content: space-between;
        padding-top: 20px;
        margin-top: 10px;
        color: #d3a0a7;
        font-size: 21px;
        font-weight: bold;
        border-top: 1px solid #70283a;
    }

    .confirmation-panel {
        margin-top: 25px;
        padding: 25px;
        background: #171717;
        border: 1px solid #493036;
        border-radius: 6px;
    }

    .payment-method {
        background: #302427;
        padding: 15px;
        color: #f5eeee;
        margin-bottom: 20px;
    }

    .bill-button {
        background: #70283a;
        color: white;
        border: 1px solid #70283a;
        padding: 13px 25px;
        cursor: pointer;
        font-size: 13px;
        letter-spacing: 1px;
        margin-top: 10px;
    }

    .bill-button:hover {
        background: #8b354a;
    }

    .button-area {
        text-align: center;
    }

    .footer-text {
        display: block;
        text-align: center;
        color: #bdaeb1;
        margin-top: 25px;
    }

    @media(max-width:700px) {
        .payment-layout {
            grid-template-columns: 1fr;
        }

        .payment-container {
            padding: 20px 12px;
        }
    }
</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="payment-page">

    <div class="payment-container">

        <div class="brand">NOIRÉ</div>

        <div class="tagline">THE ART OF FRAGRANCE</div>

        <asp:Label ID="Label16" runat="server"
            Text="SECURE PAYMENT"
            CssClass="page-title">
        </asp:Label>


        <div class="payment-layout">

            <!-- BANK ACCOUNT DETAILS -->

            <asp:Panel ID="Panel1" runat="server"
                CssClass="payment-panel">

                <asp:Label ID="Label1" runat="server"
                    Text="BANK ACCOUNT DETAILS"
                    CssClass="section-title">
                </asp:Label>

                <asp:Label ID="Label2" runat="server"
                    Text="Account Number"
                    CssClass="field-label">
                </asp:Label>

                <asp:TextBox ID="TextBox1" runat="server"
                    CssClass="payment-input">
                </asp:TextBox>

                <asp:Label ID="Label3" runat="server"
                    Text="IFSC Code"
                    CssClass="field-label">
                </asp:Label>

                <asp:TextBox ID="TextBox2" runat="server"
                    CssClass="payment-input">
                </asp:TextBox>

            </asp:Panel>


            <!-- ORDER SUMMARY -->

            <asp:Panel ID="Panel2" runat="server"
                CssClass="payment-panel">

                <asp:Label ID="Label4" runat="server"
                    Text="ORDER SUMMARY"
                    CssClass="section-title">
                </asp:Label>

                <div class="summary-row">
                    <asp:Label ID="Label5" runat="server"
                        Text="Order ID"
                        CssClass="summary-label">
                    </asp:Label>

                    <asp:Label ID="Label8" runat="server"
                        Text="-"
                        CssClass="summary-value">
                    </asp:Label>
                </div>

                <div class="summary-row">
                    <asp:Label ID="Label6" runat="server"
                        Text="Bill Amount"
                        CssClass="summary-label">
                    </asp:Label>

                    <asp:Label ID="Label9" runat="server"
                        Text="₹0.00"
                        CssClass="summary-value">
                    </asp:Label>
                </div>

                <div class="summary-row">
                    <asp:Label ID="Label7" runat="server"
                        Text="Delivery"
                        CssClass="summary-label">
                    </asp:Label>

                    <asp:Label ID="Label10" runat="server"
                        Text="₹50.00"
                        CssClass="summary-value">
                    </asp:Label>
                </div>

                <div class="total-row">
                    <asp:Label ID="Label11" runat="server"
                        Text="TOTAL">
                    </asp:Label>

                    <asp:Label ID="Label12" runat="server"
                        Text="₹0.00">
                    </asp:Label>
                </div>

            </asp:Panel>

        </div>


        <!-- PAYMENT CONFIRMATION -->

        <asp:Panel ID="Panel3" runat="server"
            CssClass="confirmation-panel">

            <asp:Label ID="Label13" runat="server"
                Text="PAYMENT CONFIRMATION"
                CssClass="section-title">
            </asp:Label>

            <asp:Label ID="Label14" runat="server"
                Text="Payment Method"
                CssClass="field-label">
            </asp:Label>

            <div class="payment-method">
                <asp:Label ID="Label15" runat="server"
                    Text="Bank Account">
                </asp:Label>
            </div>

            <div class="button-area">

                <asp:Button ID="Button1" runat="server"
                    Text="CONFIRM & PAY"
                    CssClass="bill-button"
                    CausesValidation="False" OnClick="Button1_Click" />

                <br />
                <asp:Label ID="Label18" runat="server" Text="Label" Visible="False"></asp:Label>

            </div>

        </asp:Panel>

        <asp:Label ID="Label17" runat="server"
            Text="Secure Payment | Thank you for choosing NOIRÉ"
            CssClass="footer-text">
        </asp:Label>

    </div>

</div>

</asp:Content>
