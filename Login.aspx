
<%@ Page Title="Login" Language="C#" MasterPageFile="~/Designpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project1.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .login-page {
            min-height: 650px;
            background:#49383B;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 55px 20px;
            box-sizing: border-box;
            font-family: "Montserrat", sans-serif;
        }

        .login-box {
            width: 100%;
            max-width: 1000px;
            min-height: 540px;
            display: grid;
            grid-template-columns: 45% 55%;
            background: #191516;
            box-shadow: 0 15px 45px rgba(0,0,0,0.35);
        }

        /* IMAGE SECTION */

        .fashion-image {
            position: relative;
            min-height: 540px;
            background:
                linear-gradient(to top, rgba(25,15,17,0.85), rgba(25,15,17,0.05)),
                url('Photos/loginlogin.jpg');
            background-size: cover;
            background-position: center;
            display: flex;
            align-items: flex-end;
            padding: 35px;
            box-sizing: border-box;
        }

        .image-text {
            position: relative;
            z-index: 2;
            color: #fff;
            font-family: Georgia, serif;
            font-size: 34px;
            font-weight: normal;
            line-height: 1.3;
            margin: 0;
        }

        /* LOGIN CONTENT */

        .login-content {
            padding: 45px 55px;
            color: #fff;
            display: flex;
            flex-direction: column;
            justify-content: center;
            box-sizing: border-box;
        }

        .brand-name {
            color: #bd777e;
            font-family: Georgia, serif;
            font-size: 30px;
            letter-spacing: 6px;
            text-align: center;
            margin-bottom: 8px;
        }

        .brand-line {
            width: 45px;
            height: 2px;
            background: #783b45;
            margin: 0 auto 15px;
        }

        .login-subtitle {
            color: #c9bfc0;
            font-size: 12px;
            letter-spacing: 2px;
            text-align: center;
            line-height: 1.8;
            margin-bottom: 35px;
        }

        /* LABELS */

        .login-label {
            display: block;
            color: #e8dfe0;
            font-size: 12px;
            margin-bottom: 8px;
        }

        /* INPUT FIELDS */

        .login-input {
            display: block;
            width: 100%;
            height: 42px;
            box-sizing: border-box;
            background: #272123;
            border: 1px solid #514044;
            padding: 0 12px;
            color: #fff;
            outline: none;
            font-family: "Montserrat", sans-serif;
            font-size: 13px;
            margin-bottom: 22px;
        }

        .login-input:focus {
            border-color: #a85c66;
        }

        /* SIGN IN BUTTON */

        .login-button {
            width: 100%;
            height: 44px;
            margin-top: 5px;
            border: none;
            background: #783b45;
            color: #fff;
            font-family: "Montserrat", sans-serif;
            font-size: 11px;
            font-weight: 600;
            letter-spacing: 2px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .login-button:hover {
            background: #984e59;
        }

        /* REGISTER LINK */

        .register-area {
            margin-top: 25px;
            color: #c9bfc0;
            font-size: 12px;
            text-align: center;
        }

        .register-link {
            color: #bd777e !important;
            text-decoration: none;
            margin-left: 5px;
        }

        .register-link:hover {
            color: #fff !important;
        }

        /* ERROR MESSAGE */

        .error-message {
            display: block;
            color: #d69aa1;
            font-size: 12px;
            margin-top: 12px;
        }

        /* MOBILE */

        @media screen and (max-width: 700px) {

            .login-box {
                grid-template-columns: 1fr;
            }

            .fashion-image {
                min-height: 220px;
                padding: 25px;
            }

            .image-text {
                font-size: 27px;
            }

            .login-content {
                padding: 35px 25px;
            }
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="login-page">

        <div class="login-box">

            <!-- IMAGE SECTION -->

            <div class="fashion-image">
                <h2 class="image-text">
                    Find Your<br />
                    Signature Scent.
                </h2>
            </div>

            <!-- LOGIN SECTION -->

            <div class="login-content">

                <div class="brand-name">NOIRÉ</div>

                <div class="brand-line"></div>

                <div class="login-subtitle">
                    WELCOME BACK TO YOUR FRAGRANCE JOURNEY
                </div>

                <asp:Label
                    ID="Label1"
                    runat="server"
                    Text="Username"
                    CssClass="login-label">
                </asp:Label>

                <asp:TextBox
                    ID="tbuser"
                    runat="server"
                    CssClass="login-input">
                </asp:TextBox>

                <asp:Label
                    ID="Label2"
                    runat="server"
                    Text="Password"
                    CssClass="login-label">
                </asp:Label>

                <asp:TextBox
                    ID="tbpass"
                    runat="server"
                    TextMode="Password"
                    CssClass="login-input">
                </asp:TextBox>

                <asp:Button
                    ID="Button1"
                    runat="server"
                    OnClick="Button1_Click"
                    Text="SIGN IN"
                    CssClass="login-button" />

                <asp:Label
                    ID="Label3"
                    runat="server"
                    Text=""
                    Visible="False"
                    CssClass="error-message">
                </asp:Label>

                <div class="register-area">

                    New to NOIRÉ?

                    <asp:LinkButton
                        ID="LinkButton1"
                        runat="server"
                        PostBackUrl="~/UserRegister.aspx"
                        Visible="True"
                        CssClass="register-link">
                        Create an account
                    </asp:LinkButton>

                </div>

            </div>

        </div>

    </div>

</asp:Content>
