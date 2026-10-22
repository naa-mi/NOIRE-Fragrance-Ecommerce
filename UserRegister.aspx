
<%@ Page Title="" Language="C#" MasterPageFile="~/Designpage.Master" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="Project1.UserRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .register-page {
            min-height: 650px;
            background: #49383B;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 55px 20px;
            box-sizing: border-box;
            font-family: "Montserrat", sans-serif;
        }

        .register-box {
            width: 100%;
            max-width: 500px;
            background: #191516;
            padding: 45px 50px;
            box-shadow: 0 15px 45px rgba(0,0,0,0.35);
            box-sizing: border-box;
        }

        .register-brand {
            color: #bd777e;
            font-family: Georgia, serif;
            font-size: 34px;
            letter-spacing: 6px;
            text-align: center;
            margin-bottom: 8px;
        }

        .register-subtitle {
            color: #c9bfc0;
            font-size: 12px;
            letter-spacing: 2px;
            text-align: center;
            margin-bottom: 30px;
        }

        .register-form {
            width: 100%;
        }

        .register-form td {
            padding: 7px 0;
            color: #e8dfe0;
            font-size: 12px;
        }

        .register-form input[type="text"],
        .register-form input[type="password"] {
            width: 100%;
            height: 42px;
            box-sizing: border-box;
            background: #272123;
            border: 1px solid #514044;
            padding: 0 12px;
            color: #fff;
            outline: none;
            font-family: "Montserrat", sans-serif;
        }

        .register-form input[type="text"]:focus,
        .register-form input[type="password"]:focus {
            border-color: #a85c66;
        }

        .register-form input[type="submit"] {
            width: 100%;
            height: 44px;
            margin-top: 15px;
            border: none;
            background: #783b45;
            color: #fff;
            font-family: "Montserrat", sans-serif;
            font-size: 11px;
            font-weight: 600;
            letter-spacing: 2px;
            cursor: pointer;
        }

        .register-form input[type="submit"]:hover {
            background: #984e59;
        }

        .register-message {
            display: block;
            color: #d69aa1;
            font-size: 12px;
            text-align: center;
            margin-top: 15px;
        }

        @media screen and (max-width: 500px) {
            .register-box {
                padding: 35px 25px;
            }

            .register-brand {
                font-size: 30px;
            }
        }

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="register-page">

        <div class="register-box">

            <div class="register-brand">NOIRÉ</div>

            <div class="register-subtitle">
                BEGIN YOUR FRAGRANCE JOURNEY
            </div>

            <table class="register-form">

                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="tbname" runat="server" placeholder="Enter your name"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="tbage" runat="server" placeholder="Enter your age"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="tbuser" runat="server" placeholder="Choose a username" AutoPostBack="True" OnTextChanged="tbuser_TextChanged"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="tbpass" runat="server" TextMode="Password" placeholder="Create a password"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CREATE ACCOUNT" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Registered Successfully" Visible="False" CssClass="register-message"></asp:Label>
                    </td>
                </tr>

            </table>

        </div>

    </div>

</asp:Content>

