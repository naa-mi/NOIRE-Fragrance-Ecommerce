
<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/Designpage.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Project1.Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

    .feedback-section {
        background: #49383B;
        min-height: 680px;
        padding: 65px 6%;
        display: flex;
        align-items: center;
        box-sizing: border-box;
        font-family: 'Montserrat', sans-serif;
        color: #F8ECEE;
    }

    .feedback-layout {
        width: 100%;
        max-width: 1250px;
        margin: auto;
        display: grid;
        grid-template-columns: 40% 60%;
        align-items: center;
        gap: 35px;
    }

    /* LEFT SECTION */

    .feedback-info {
        padding: 20px 30px 20px 10px;
    }

   

    .feedback-info h1 {
        font-family: Georgia, serif;
        font-size: 43px;
        font-weight: normal;
        line-height: 1.25;
        letter-spacing: 2px;
        color: #F8ECEE;
        margin: 0 0 25px;
    }

    .heading-line {
        width: 65px;
        height: 2px;
        background: #D69AA1;
        margin-bottom: 25px;
    }

    .feedback-description {
        color: #DDC9CC;
        font-size: 14px;
        line-height: 2;
        max-width: 370px;
    }

    .feedback-quote {
        margin-top: 65px;
        font-family: Georgia, serif;
        font-size: 19px;
        font-style: italic;
        line-height: 1.7;
        color: #D69AA1;
        max-width: 350px;
    }

    .feedback-tagline {
        margin-top: 15px;
        font-size: 10px;
        letter-spacing: 3px;
        color: #C7AEB3;
    }

    /* RIGHT SECTION */

    .feedback-form {
        background: #211A1C;
        padding: 42px 45px;
        border-radius: 4px;
        border: 1px solid #68444A;
        box-shadow: 0 15px 35px rgba(0,0,0,0.15);
    }

    .form-heading {
        font-family: Georgia, serif;
        font-size: 27px;
        font-weight: normal;
        color: #D69AA1;
        margin: 0 0 10px;
    }

    .form-subheading {
        font-size: 12px;
        color: #CBB9BC;
        margin-bottom: 30px;
        line-height: 1.7;
    }

    .feedback-row {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 18px;
    }

    .feedback-group {
        margin-bottom: 22px;
    }

    .feedback-group label {
        display: block;
        color: #E6C8CD;
        font-size: 11px;
        letter-spacing: 1.5px;
        margin-bottom: 10px;
        text-transform: uppercase;
    }

    .feedback-input {
        width: 100%;
        box-sizing: border-box;
        background: #302629;
        border: 1px solid #68444A;
        border-radius: 3px;
        padding: 14px;
        color: #F8ECEE;
        font-family: 'Montserrat', sans-serif;
        font-size: 13px;
        outline: none;
        transition: 0.3s;
    }

    .feedback-input:focus {
        border-color: #D69AA1;
    }

    .feedback-input::placeholder {
        color: #A99599;
    }

    .feedback-textarea {
        min-height: 130px;
        resize: vertical;
    }

    .feedback-submit {
        background: #783B45;
        border: 1px solid #A76570;
        border-radius: 3px;
        padding: 14px 35px;
        color: #FFF1F3;
        font-size: 11px;
        letter-spacing: 2px;
        cursor: pointer;
        transition: 0.3s;
        margin-top: 5px;
    }

    .feedback-submit:hover {
        background: #98545F;
        border-color: #D69AA1;
    }

    .feedback-message {
        display: block;
        color: #D69AA1;
        font-size: 13px;
        margin-top: 15px;
    }

    .feedback-footer {
        margin-top: 30px;
        color: #C5AEB2;
        font-size: 10px;
        letter-spacing: 2px;
    }

    @media(max-width: 850px) {

        .feedback-section {
            padding: 45px 25px;
        }

        .feedback-layout {
            grid-template-columns: 1fr;
            gap: 35px;
        }

        .feedback-info {
            padding: 10px;
        }

        .brand-name {
            margin-bottom: 25px;
        }

        .feedback-info h1 {
            font-size: 34px;
        }

        .feedback-quote {
            margin-top: 25px;
        }
    }

    @media(max-width: 520px) {

        .feedback-form {
            padding: 28px 20px;
        }

        .feedback-row {
            grid-template-columns: 1fr;
            gap: 0;
        }

        .feedback-info h1 {
            font-size: 30px;
        }
    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="feedback-section">

    <div class="feedback-layout">

        <!-- LEFT SIDE -->

        <div class="feedback-info">

            
            <h1>YOUR VOICE<br />MATTERS TO US.</h1>

            <div class="heading-line"></div>

            <p class="feedback-description">
                Every fragrance tells a story, and every experience
                matters to us. We would love to know what you think
                about NOIRÉ and your experience with us.
            </p>

            <div class="feedback-quote">
                "A little feedback can make every experience more memorable."
            </div>

            <div class="feedback-tagline">
                THE ART OF FRAGRANCE
            </div>

        </div>


        <!-- RIGHT SIDE -->

        <div class="feedback-form">

            <h2 class="form-heading">Share Your Experience</h2>

            <p class="form-subheading">
                Tell us what's on your mind. Your thoughts help us grow.
            </p>

            <div class="feedback-row">

                <div class="feedback-group">
                    <label>Your Name</label>

                    <asp:TextBox ID="TextBox1" runat="server"
                        CssClass="feedback-input"
                        placeholder="Enter your name">
                    </asp:TextBox>
                </div>

                <div class="feedback-group">
                    <label>Email Address</label>

                    <asp:TextBox ID="TextBox2" runat="server"
                        TextMode="Email"
                        CssClass="feedback-input"
                        placeholder="Enter your email">
                    </asp:TextBox>
                </div>

            </div>

            <div class="feedback-group">
                <label>Subject</label>

                <asp:TextBox ID="TextBox3" runat="server"
                    CssClass="feedback-input"
                    placeholder="What is your feedback about?">
                </asp:TextBox>
            </div>

            <div class="feedback-group">
                <label>Your Feedback</label>

                <asp:TextBox ID="TextBox4" runat="server"
                    TextMode="MultiLine"
                    CssClass="feedback-input feedback-textarea"
                    placeholder="Write your thoughts here...">
                </asp:TextBox>
            </div>

            <asp:Button ID="Button1" runat="server"
                Text="SUBMIT FEEDBACK"
                CssClass="feedback-submit"
                OnClick="Button1_Click" />

            <asp:Label ID="Label1" runat="server"
                CssClass="feedback-message">
            </asp:Label>

            <div class="feedback-footer">
                THANK YOU FOR CHOOSING NOIRÉ
            </div>

        </div>

    </div>

</section>

</asp:Content>
