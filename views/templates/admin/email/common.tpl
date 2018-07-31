{*
    * DISCLAIMER
    *
    * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
    * versions in the future. If you wish to customize PrestaShop for your
    * needs please refer tohttp://www.prestashop.com for more information.
    * We offer the best and most useful modules PrestaShop and modifications for your online store.
    *
    * @category  PrestaShop Module
    * @author    knowband.com <support@knowband.com>
    * @copyright 2017 Knowband
    * @license   see file: LICENSE.txt
    *
    * Description
    *
    * Admin tpl file
    *}
    
{literal}

<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width" initial-scale="1.0" user-scalable="yes"/>
        <meta name="format-detection" content="telephone=no"/>
        <meta name="format-detection" content="date=no"/>
        <meta name="format-detection" content="address=no"/>
        <meta name="format-detection" content="email=no"/>
        <meta name="robots" content="noindex,nofollow"/>
        <style type="text/css">
            .ReadMsgBody{ width: 100%; }
            .ExternalClass{ width: 100%; }
            .ExternalClass *{ line-height: 100%; }
            .ExternalClass,.ExternalClass p,.ExternalClass td,.ExternalClass div,.ExternalClass span,.ExternalClass font{
                line-height:100%;
            }
            body{
                margin: 0;
                padding: 0;
            }
            body,table,td,p,a,li{
                -webkit-text-size-adjust: 100%;
                -ms-text-size-adjust: 100%;
            }
            table td{ border-collapse: collapse; }
            table{
                border-spacing: 0;
                border-collapse: collapse;
            }
            p,a,li,td,blockquote{
                mso-line-height-rule: exactly;
            }
            p,a,li,td,body,table,blockquote{
                -ms-text-size-adjust: 100%;
                -webkit-text-size-adjust: 100%;
            }
            img,a img{
                border: 0;
                outline: none;
                text-decoration: none;
            }
            img{
                -ms-interpolation-mode: bicubic;
            }
            a[href^=tel],a[href^=sms]{
                color: inherit;
                cursor: default;
                text-decoration: none;
            }
            a[x-apple-data-detectors]{
                color: inherit!important;
                text-decoration: none!important;
                font-size: inherit!important;
                font-family: inherit!important;
                font-weight: inherit!important;
                line-height: inherit!important;
            }
            .mlEmailContainer{
                max-width: 640px!important;
            }
            @media only screen and (min-width:768px){
                .mlEmailContainer{
                    width: 640px!important;
                }
            }
            @media only screen and (max-width: 640px) {
                .mlTemplateContainer{
                    padding: 10px 10px 0 10px;
                }
                .mlContentTable{
                    width: 100%!important;
                    min-width: 200px!important;
                }
                /* -- */
                .mlContentBlock{
                    float: none!important;
                    width: 100%!important;
                }
                /* -- */
                .mlContentOuter{
                    padding-bottom: 0px!important;
                    padding-left: 25px!important;
                    padding-right: 25px!important;
                    padding-top: 25px!important;
                }
                /* -- */
                .mlBottomContentOuter{
                    padding-bottom: 25px !important;
                }
                .mlLeftRightContentOuter {
                    padding-left: 5px!important;
                    padding-right: 5px!important;
                }
                .mlContentContainerOuter{
                    padding-left: 0px!important;
                    padding-right: 0px!important;
                }
                /* -- */
                .mlContentContainer{
                    padding-left: 25px!important;
                    padding-right: 25px!important;
                }
                /* -- */
                .mlContentButton a,
                .mlContentButton span{
                    width: auto!important;
                }
                /* -- */
                .mlContentImage img,
                .mlContentRSS img{
                    height: auto!important;
                    width: 100%!important;
                }
                .mlContentImage{
                    height: 100%!important;
                    width: auto!important;
                }
                .mlContentLogo img{
                    height: auto!important;
                    width: 100%!important;
                }
                /* -- */
                .mlContentContainer h1{
                    font-size: 24px!important;
                    line-height:125%!important;
                    margin-bottom: 0px!important;
                }
                /* -- */
                .mlContentContainer h2{
                    font-size: 18px!important;
                    line-height:125%!important;
                    margin-bottom: 0px!important;
                }
                /* -- */
                .mlContentContainer h3{
                    font-size: 16px!important;
                    line-height:125%!important;
                    margin-bottom: 0px!important;
                }
                /* -- */
                .mlContentContainer p,
                .mlContentContainer .mlContentRSS{
                    font-size: 16px!important;
                    line-height:150%!important;
                }
                /* -- */
                .mobileHide{
                    display: none!important;
                }
                /* -- */
                .alignCenter{
                    height: auto!important;
                    text-align: center!important
                }
                /* -- */
                .marginBottom{
                    margin-bottom: 25px!important;
                }
                /* -- */
                .mlContentHeight{
                    height: auto!important;
                }
                .mlContentGap{
                    height: 25px!important;
                }
                .mlDisplayInline {
                    display: inline-block!important;
                    float: none!important;
                }
                body{
                    margin: 0px!important;
                    padding: 0px!important;
                }
                body,table,td,p,a,li,blockquote{
                    -webkit-text-size-adjust: none!important;
                }
            }
        </style>

    </head>

    <body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" dir="ltr" style="padding: 0; margin: 0; -webkit-font-smoothing:antialiased; -webkit-text-size-adjust:none; background: #ECF0F1;" data-gr-c-s-loaded="true">


        <table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#ECF0F1" background="{minimal_img_path}" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%">
            <tbody>
                <tr>
                    <td class="mlTemplateContainer" align="center">
                        <table align="center" border="0" class="mlEmailContainer" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%">
                            <tbody>
                                <tr>
                                    <td align="center">
                                        <!--<![endif]-->

                                        <!-- Content starts here -->

                                        <table width="640" class="mlContentTable" cellspacing="0" cellpadding="0" border="0" align="center">
                                            <tbody>
                                                <tr>
                                                    <td height="30"></td>
                                                </tr>
                                            </tbody>
                                        </table>




                                        <table align="center" width="640" class="mlContentTable" cellpadding="0" cellspacing="0" border="0" style="min-width: 640px; width: 640px;">
                                            <tbody>
                                                <tr>
                                                    <td class="mlContentTable">

                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>





                                        <table align="center" border="0" bgcolor="#000000" class="mlContentTable" cellspacing="0" cellpadding="0" style="background: #000000; min-width: 640px; width: 640px;" width="640" id="ml-block-55149655">     
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table width="640" class="mlContentTable" bgcolor="#000000" cellspacing="0" cellpadding="0" border="0" align="center" style="background: #000000; width: 640px;">  
                                                            <tbody>
                                                                <tr>
                                                                    <td align="left" class="mlContentContainer" style="padding: 0px 50px 0px 50px; font-family: Helvetica; font-size: 14px; color: #7F8C8D; line-height: 23px;">  
                                                                        <p style="margin: 0px 0px 10px 0px; line-height: 23px;text-align: center;"></p>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table> 




                                        <table align="center" border="0" bgcolor="#000000" class="mlContentTable" cellspacing="0" cellpadding="0" style="background: #000000; min-width: 640px; width: 640px;" width="640" id="ml-block-55149967">     
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table width="640" class="mlContentTable" bgcolor="#000000" cellspacing="0" cellpadding="0" border="0" align="center" style="background: #000000; width: 640px;">         
                                                            <tbody>
                                                                <tr>
                                                                    <td align="center" class="mlContentContainer mlContentImage mlContentHeight" style="padding: 0px 50px 10px 50px;">
                                                                        <img border="0" src="{icon_img_path}" width="99" height="99" class="mlContentImage" style="display: block;max-width: 99px;"/>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table> 



                                        <table align="center" border="0" bgcolor="#FFFFFF" class="mlContentTable" cellspacing="0" cellpadding="0" style="background: #FFFFFF; min-width: 640px; width: 640px;" width="640" id="ml-block-55150427">  
                                            <tbody>
                                                <tr>
                                                    <td>               
                                                        <table width="640" class="mlContentTable" bgcolor="#FFFFFF" cellspacing="0" cellpadding="0" border="0" align="center" style="background: #FFFFFF; width: 640px;">      
                                                            <tbody>
                                                                <tr>          
                                                                    <td align="left" class="mlContentContainer" style="padding: 15px 50px 5px 50px; font-family: Helvetica; font-size: 14px; color: #7F8C8D; line-height: 23px;">
																		<h2 style="line-height: 26px; text-decoration: none; font-weight: bold; margin: 0px 0px 10px 0px;font-family: Helvetica; font-weight: bold; font-size: 20px; color: #000000; text-align: left;">Hi {Customer_Name},</h2>
                                                                        <h3 style="line-height: 26px; text-decoration: none; font-weight: bold; margin: 0px 0px 10px 0px;font-family: Helvetica; font-weight: bold; font-size: 15px; color: #000000; text-align: left;">{Occasion_Wishes}</h3>
                                                                        <p style="margin: 0px 0px 10px 0px; line-height: 23px;">
                                                                            The big day is around the corner - time to make it even more special.</p>
																		<p style="margin: 0px 0px 10px 0px; line-height: 23px;">
                                                                            Celebrate the occasion with us.</p>
																		<p style="margin: 0px 0px 10px 0px; line-height: 23px;">
                                                                           <strong> Our gift to you: {Discount_Amount_Or_Free_Gift}.</strong></p>
                                                                    </td>      
                                                                </tr>  
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table> 




                                        <table align="center" border="0" bgcolor="#FFFFFF" class="mlContentTable" cellspacing="0" cellpadding="0" style="background: #FFFFFF; min-width: 640px; width: 640px;" width="640" id="ml-block-55150501">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table width="640" class="mlContentTable" bgcolor="#FFFFFF" cellspacing="0" cellpadding="0" border="0" align="center" style="background: #FFFFFF; width: 640px;">
                                                            <tbody><tr>
                                                                    <td class="mlContentContainer" style="padding: 15px 50px 0px 50px;">
                                                                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="border-top: 1px solid #d8d8d8;">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td width="100%" height="15px"></td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>





                                        <table align="center" border="0" bgcolor="#FFFFFF" class="mlContentTable" cellspacing="0" cellpadding="0" style="background: #FFFFFF; min-width: 640px; width: 640px;" width="640" id="ml-block-55148241">     
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table width="640" class="mlContentTable" bgcolor="#FFFFFF" cellspacing="0" cellpadding="0" border="0" align="center" style="background: #FFFFFF; width: 640px;">      
                                                            <tbody>
                                                                <tr>
                                                                    <td align="left" class="mlContentContainer" style="padding: 0px 50px 0px 50px; font-family: Helvetica; font-size: 14px; color: #7F8C8D; line-height: 23px;">
                                                                        <p style="margin: 0px 0px 10px 0px; line-height: 23px;text-align: center;"><strong>Coupon Code:</strong></p> 
                                                                        <p style="margin: 0px 0px 20px 0px; line-height: 23px;text-align: center; font-size: 35px;color:#000;">{Coupon_Code}</p>          
                                                                    </td>     
                                                                </tr>
																<tr>
																	<td align="left" class="mlContentContainer" style="padding: 0px 50px 0px 50px; font-family: Helvetica; font-size: 14px; color: #000; line-height: 23px;">
																	<p style="margin: 0px 0px 10px 0px; line-height: 23px;text-align: center;"><strong>Coupon will expires on: {expiry_date}</strong></p>
																	</td>
																</tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table> 




                                        <table align="center" border="0" bgcolor="#FFFFFF" class="mlContentTable" cellspacing="0" cellpadding="0" style="background: #FFFFFF; min-width: 640px; width: 640px;" width="640" id="ml-block-55148245">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table width="640" class="mlContentTable" bgcolor="#FFFFFF" cellspacing="0" cellpadding="0" border="0" align="center" style="background: #FFFFFF; width: 640px;">
                                                            <tbody>
                                                                <tr>
                                                                    <td class="mlContentContainer" style="padding: 0px 50px 0px 50px;">
                                                                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="border-top: 1px solid #d8d8d8;">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td width="100%" height="11px"></td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody></table>





                                        <table align="center" border="0" bgcolor="#FFFFFF" class="mlContentTable" cellspacing="0" cellpadding="0" style="background: #FFFFFF; min-width: 640px; width: 640px;" width="640" id="ml-block-55150703">     
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table width="640" class="mlContentTable" bgcolor="#FFFFFF" cellspacing="0" cellpadding="0" border="0" align="center" style="background: #FFFFFF; width: 640px;">      
                                                            <tbody>
                                                                <tr>
                                                                    <td align="left" class="mlContentContainer" style="padding: 15px 50px 5px 50px; font-family: Helvetica; font-size: 14px; color: #7F8C8D; line-height: 23px;">
                                                                        <p style="margin: 0px 0px 10px 0px; line-height: 23px;">

                                                                           It’s simple! Just enter the unique code mentioned above and enjoy the day.
                                                                        </p>   
                                                                        <p style="margin: 0px 0px 10px 0px; line-height: 23px;"> Happy Shopping!! <br/> <br/>
                                                                        Best regards<br />
																		{shop_name} (<a href="{shop_url}" style="text-decoration: none;">Click here to visit the store</a>)<br />
																		Ph: +xx-xxx xxx xxxx<br />
																		Email: Support email</p>
                                                                    </td>      
                                                                </tr>  
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table> 


                                        <table align="center" border="0" bgcolor="#000000" class="mlContentTable" cellspacing="0" cellpadding="0" style="background: #000000; min-width: 640px; width: 640px;" width="640" id="ml-block-55148251">     
                                            <tbody>
                                                <tr>
                                                    <td> 
                                                        <table width="640" class="mlContentTable" bgcolor="#000000" cellspacing="0" cellpadding="0" border="0" align="center" style="background: #000000; width: 640px;">      
                                                            <tbody>
                                                                <tr>
                                                                    <td align="left" class="mlContentContainer" style="padding: 15px 50px 5px 50px; font-family: Helvetica; font-size: 14px; color: #7F8C8D; line-height: 23px;">                           
                                                                        <p style="margin: 0px 0px 10px 0px;line-height: 23px;text-align: center;"><span style="font-size: 20px;"><a href="{shop_url}" style="color: #ffffff; text-decoration: none;">Happy Shopping!</a></span></p>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table> 


                                        <table align="center" border="0" bgcolor="#FFFFFF" class="mlContentTable" cellspacing="0" cellpadding="0" style="background: #FFFFFF; min-width: 640px; width: 640px;" width="640" id="ml-block-55148239">     
                                            <tbody>
                                                <tr>         
                                                    <td>               
                                                    </td>     
                                                </tr> 
                                            </tbody>
                                        </table> 

                                        <!-- Content ends here -->

                                        <!--[if !mso]><!-- -->
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <!--<![endif]-->
    </body>
    {/literal}