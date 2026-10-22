
<%@ Page Title="" Language="C#" MasterPageFile="~/Designpage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Project1.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .noire-home {
            font-family: "Montserrat", sans-serif;
            color: #ffffff;
            background: #211a1c;
        }

        .noire-hero {
            min-height: 480px;
            background:
                linear-gradient(90deg, rgba(20,13,15,0.95), rgba(20,13,15,0.3)),
                url('Photos/bannerimg.png');
            background-size: cover;
            background-position: center 42%;
            display: flex;
            align-items: center;
            padding: 60px 9%;
            box-sizing: border-box;
        }

        .noire-hero-content {
            max-width: 520px;
        }

        .noire-eyebrow {
            color: #d3a0a7;
            font-size: 11px;
            letter-spacing: 4px;
            margin-bottom: 20px;
        }

        .noire-hero h1 {
            color: #ffffff;
            font-family: Georgia, serif;
            font-size: 58px;
            font-weight: normal;
            line-height: 1.15;
            margin: 0 0 20px;
        }

        .noire-hero p {
            color: #e0d2d4;
            font-size: 13px;
            line-height: 2;
            margin-bottom: 30px;
        }

        .noire-button {
            display: inline-block;
            background: #70283a;
            color: #ffffff !important;
            padding: 15px 28px;
            text-decoration: none !important;
            font-size: 10px;
            letter-spacing: 2px;
            font-weight: 600;
        }

        .noire-button:hover {
            background: #934653;
        }

        .noire-section {
            padding: 65px 25px;
            text-align: center;
        }

        .noire-section-heading {
            margin-bottom: 35px;
        }

        .noire-section-heading span {
            color: #bd7e88;
            font-size: 10px;
            letter-spacing: 4px;
        }

        .noire-section-heading h2 {
            color: #ffffff;
            font-family: Georgia, serif;
            font-size: 34px;
            font-weight: normal;
            margin: 12px 0;
        }

        .noire-section-heading p {
            color: #bcaeb1;
            font-size: 12px;
        }

        /* Category layout */
        
/* Category layout */
.noire-categories {
    width: 100%;
    max-width: 1400px;
    margin: 0 auto;
    padding: 0;
    box-sizing: border-box;
}

.noire-categories table {
    width: 100% !important;
    table-layout: fixed;
    border-collapse: separate;
    border-spacing: 12px;
}

.noire-categories td {
    width: 20%;
    padding: 0;
    vertical-align: top;
    box-sizing: border-box;
}

.noire-category-card {
    position: relative;
    width: 100%;
    height: 300px;
    overflow: hidden;
    background:  #49383B;
    border: 1px solid #493338;
    box-sizing: border-box;
}

.noire-category-card input[type="image"] {
    width: 100% !important;
    height: 300px !important;
    object-fit: cover;
    display: block;
    border: none;
    box-sizing: border-box;
    transition: transform 0.4s ease;
}

.noire-category-card:hover input[type="image"] {
    transform: scale(1.05);
}

.noire-category-name {
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    padding: 35px 6px 18px;
    background: linear-gradient(
        transparent,
        rgba(20, 13, 15, 0.96)
    );
    color: #ffffff;
    font-family: Georgia, serif;
    font-size: 14px;
    letter-spacing: 0.5px;
    text-align: center;
    pointer-events: none;
    box-sizing: border-box;
}
        .noire-promo {
            margin: 0 25px;
            background: #302326;
            display: grid;
            grid-template-columns: 1fr 1fr;
            align-items: center;
            text-align: left;
        }

        .noire-promo-image {
            min-height: 340px;
            background:
                linear-gradient(rgba(25,15,17,0.1), rgba(25,15,17,0.1)),
                url('Photos/loginimg.png');
            background-size: cover;
            background-position: center;
        }

        .noire-promo-content {
            padding: 45px;
        }

        .noire-promo-content span {
            color: #c18a91;
            font-size: 10px;
            letter-spacing: 3px;
        }

        .noire-promo-content h2 {
            color: #ffffff;
            font-family: Georgia, serif;
            font-size: 36px;
            font-weight: normal;
            line-height: 1.3;
            margin: 18px 0;
        }

        .noire-promo-content p {
            color: #cbbdc0;
            font-size: 12px;
            line-height: 2;
            margin-bottom: 25px;
        }

        .noire-services {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 1px;
            background: #493338;
            margin-top: 60px;
        }

        .noire-service {
            background: #211a1c;
            padding: 30px 15px;
            text-align: center;
        }

        .noire-service h3 {
            color: #ffffff;
            font-family: Georgia, serif;
            font-size: 17px;
            font-weight: normal;
            margin: 0 0 10px;
        }

        .noire-service p {
            color: #bcaeb1;
            font-size: 11px;
            line-height: 1.8;
            margin: 0;
        }

        .noire-gallery {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
        }

        .noire-gallery-item {
            min-height: 170px;
            background: #302326;
            border: 1px solid #211a1c;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #d3a0a7;
            font-family: Georgia, serif;
            font-size: 15px;
            letter-spacing: 1px;
        }

        /* Responsive layout */
        @media screen and (max-width: 750px) {

            .noire-hero {
                min-height: 400px;
                padding: 45px 25px;
            }

            .noire-hero h1 {
                font-size: 42px;
            }

            .noire-categories {
                overflow-x: auto;
                overflow-y: hidden;
            }

            .noire-categories table {
                width: 850px !important;
            }

            .noire-categories td {
                width: 170px;
                padding: 0 8px;
            }
            .noire-category-card {
    height: 260px;
}

.noire-category-card input[type="image"] {
    height: 260px !important;
}

            .noire-promo {
                grid-template-columns: 1fr;
            }

            .noire-promo-image {
                min-height: 250px;
            }

            .noire-promo-content {
                padding: 30px 25px;
            }

            .noire-services {
                grid-template-columns: repeat(2, 1fr);
            }

            .noire-gallery {
                grid-template-columns: repeat(3, 1fr);
            }
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="noire-home">

    <!-- Hero Banner -->
    <section class="noire-hero">
        <div class="noire-hero-content">

            <div class="noire-eyebrow">THE ART OF FRAGRANCE</div>

            <h1>Discover Your<br />Signature Scent.</h1>

            <p>
                Explore captivating fragrances crafted for those
                who leave a lasting impression.
            </p>

            <a href="#categories" class="noire-button">EXPLORE COLLECTION</a>

        </div>
    </section>


    <!-- Categories -->
    <section class="noire-section" id="categories">

        <div class="noire-section-heading">
            <span>CURATED FOR YOU</span>
            <h2>Explore Our Collections</h2>
            <p>Find the fragrance that feels uniquely yours.</p>
        </div>

        <div class="noire-categories">

            <asp:DataList ID="DataList1" runat="server"
                RepeatColumns="5"
                RepeatDirection="Horizontal"
                CellPadding="0"
                CellSpacing="8"
                HorizontalAlign="Center"
                Width="100%">

                <ItemTemplate>

                    <div class="noire-category-card">

                        <asp:ImageButton ID="ImageButton1"
                            runat="server"
                            CommandArgument='<%# Eval("cat_id") %>'
                            ImageUrl='<%# Eval("cat_image") %>'
                            OnCommand="ImageButton1_Command"
                            AlternateText='<%# Eval("cat_name") %>' />

                        <div class="noire-category-name">
                            <%# Eval("cat_name") %>
                        </div>

                    </div>

                </ItemTemplate>

            </asp:DataList>

        </div>

    </section>


    <!-- Promotional Section -->
    <section class="noire-promo">

        <div class="noire-promo-image"></div>

        <div class="noire-promo-content">

            <span>YOUR NEXT OBSESSION</span>

            <h2>A Fragrance<br />That Stays With You.</h2>

            <p>
                From deep, mysterious notes to warm and delicate accords,
                discover scents that become part of your identity.
            </p>

            <a href="#categories" class="noire-button">DISCOVER MORE</a>

        </div>

    </section>


    <!-- Services -->
    <section class="noire-section">

        <div class="noire-section-heading">
            <span>THE NOIRÉ EXPERIENCE</span>
            <h2>Luxury in Every Detail</h2>
        </div>

        <div class="noire-services">

            <div class="noire-service">
                <h3>Curated Fragrances</h3>
                <p>Explore scents selected for every mood.</p>
            </div>

            <div class="noire-service">
                <h3>Thoughtful Gifting</h3>
                <p>Discover fragrances made for special moments.</p>
            </div>

            <div class="noire-service">
                <h3>Secure Shopping</h3>
                <p>A shopping experience designed with care.</p>
            </div>

            <div class="noire-service">
                <h3>Find Your Scent</h3>
                <p>Explore notes that express your personality.</p>
            </div>

        </div>

    </section>


    <!-- Brand Gallery -->
    <div class="noire-gallery">

        <div class="noire-gallery-item">THE DARK</div>
        <div class="noire-gallery-item">THE BOLD</div>
        <div class="noire-gallery-item">THE WARM</div>
        <div class="noire-gallery-item">THE RARE</div>
        <div class="noire-gallery-item">THE DEEP</div>
        <div class="noire-gallery-item">THE ICONIC</div>

    </div>

</div>

</asp:Content>