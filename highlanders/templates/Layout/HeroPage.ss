<% include OrbitPanel %>
<div id="HeroPage">

    <!-- Main hero unit for a primary marketing message or call to action -->
    <% if $Content %>
        <div class="row full-width diff herocontent">
            <div class="columns">
                <div class="row">
                    <div class="large-12 hero-unit">
                        <div class="herotext">
                            $Content
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <% end_if %>
    <!-- Mobile Header -->

    <!--          <div class="row">
                <div class="large-12 columns show-for-small ">


                </div>
              </div><br>-->
    <!-- End Mobile Header -->
    <!-- Example row of columns -->


    <%--<% if $askNicelyHome %>
    <div class="row">
        <div class="small-12">
            <div class="an_wrapper">
                $askNicelyHome
                </div>
        </div>
    </div>
    <style>
        .an_wrapper {
            display: flex;
            justify-content: center;
        }
        .an_bubble{
            background-color: #808080;
            padding:20px 10px;
            height: 170px;
            width:180px;
            margin-bottom: 10px;
            border-radius: 27px;
            -moz-border-radius: 27px;
            -webkit-border-radius: 27px;
            border-bottom-left-radius: 0px;
            -webkit-border-bottom-left-radius: 0px;
            -moz-border-bottom-left-radius: 0px;
            position: relative;
            color:white;
            box-sizing: content-box;
        }
        .an_bubble:before{
            content: " ";
            position: absolute;
            width: 0;
            height: 0;
            left: 0px;
            top: 210px;
            border: 25px solid;
            border-color: #808080 transparent transparent #808080;
        }

        .an_comment{
            float:left;
            width:210px;
            margin: 10px 10px 0 10px;
            font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
            font-weight: 300;
            font-size: 13px;
        }
        .an_text{
           padding:0;
           margin: 5px;
           height: 160px;
           overflow: hidden;
        }
        .an_photo{
            float:left;
            margin-right: 20px
        }
        .an_photo img, .an_avatar{
            width:50px;
            height:50px;
            border-radius: 25px;
            -moz-border-radius: 25px;
            -webkit-border-radius: 25px;
        }
        .an_avatar_name{
            position: relative;
            left:15px;
            top:12px;
            font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
            font-weight: 300;
            font-size: 18px;
            color: white;
        }
        .an_name{
            padding-top: 9px;
        }
        .an_logo{
            display:none;
            margin-top: -10px;
            margin-right: 5px;
            font-size: 11px;
            float: right;
            color: #7f7f7f;
            padding-right: 10px;
            font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
            font-weight: 300;
        }
        .an_logo a{
            color: #7f7f7f;
        }

        a.tooltip { outline:none;  color:white;}
        a.tooltip strong { line-height:30px;}
        a.tooltip:hover { text-decoration:none;}
        a.tooltip span {
            z-index:10;display:none; padding:14px 20px;
            margin-top:-30px; margin-left:28px;
            width:220; line-height:16px;
        }
        a.tooltip:hover span{
            display:inline; position:absolute; color:#111;
            border:1px solid #cccccc; background:#ffffff;
        }

        .callout { z-index:20;position:absolute; top:-30px; border:0; left:-12px;}

        /*CSS3 extras*/
        a.tooltip span
        {
            border-radius:4px;
            box-shadow: 0px 0px 2px #CCC;
            left:-20px;
        }

/*            .c29{
                background-color:#959595
            }
            .c29:before{
                border-color: #959595 transparent transparent #959595;
            }
            .c26{
                background-color:#ED1617
            }
            .c26:before{
                border-color: #ED1617 transparent transparent #ED1617;
            }*/

    </style>
<% end_if %>--%>

    <% include MetroPanelUpper %>

    <%--<% include GreenCTA %>--%>
    <% include GreenCTAContent %>

    <% if $askNicelyJSON %>
        <div style="font-size:0.9em">
            <div class="row one asknicely" style="clear:both">
                <h2>The Power of Testimonials</h2>
                <ul class="small-block-grid-2 large-block-grid-4">
                    $askNicelyJSON
                </ul>
            </div>
        </div>
<%--        <style>

            .an_wrapper {
                display: flex;
                justify-content: center;
                }
            .an_bubble {
                background-color: #dde2e0;
                padding: 20px 10px;
                height: 210px;
                width: 100%;
                margin-bottom: 10px;
                border-radius: 27px;
                -moz-border-radius: 27px;
                -webkit-border-radius: 27px;
                border-bottom-left-radius: 0px;
                -webkit-border-bottom-left-radius: 0px;
                -moz-border-bottom-left-radius: 0px;
                position: relative;
                color: #404040;
                box-sizing: border-box;
                }
            .asknicely li:nth-of-type(even) .an_bubble {
                background-color: #cbddbd;
                }
            .an_bubble:before {
                content: " ";
                position: absolute;
                width: 0;
                height: 0;
                left: 0px;
                top: 210px;
                border: 25px solid;
                border-color: #dde2e0 transparent transparent #dde2e0;
                }
            .asknicely li:nth-of-type(even) .an_bubble:before {
                border-color: #cbddbd transparent transparent #cbddbd;
                }
            .an_comment {
                width: 100%;
                margin: 0px;
                font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
                font-weight: 300;
                font-size: 13px;
                }
            .an_who {
                margin-left: 40px;
                margin-right: 10px;
                position: relative;
                }
            .an_who:before {
                content: " ";
                position: absolute;
                width: 0;
                height: 0;
                right: 0px;
                top: 0px;
                border-width: 15px 26px 15px 0px;
                border-style: solid;
                border-color: transparent #57a946 transparent transparent;
                }
            .an_text {
                padding: 0;
                margin: 5px 10px 5px 10px;
                height: 160px;
                overflow: hidden;
                }
            .an_name {
                padding-top: 9px;
                font-family: Roboto;
                }
            .an_time {
                font-size: 0.8em;
                font-style: italic;
                }
        </style>--%>
    <% end_if %>

    <% include MetroPanelLower %>
    <% include FooterMegaMenu %>
</div>