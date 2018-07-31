{*
* DISCLAIMER
*
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 * We offer the best and most useful modules PrestaShop and modifications for your online store.
 *
 * @category  PrestaShop Module
 * @author    knowband.com <support@knowband.com>
 * @copyright 2017 Knowband
 * @license   see file: LICENSE.txt
*}
{literal}
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/1999/REC-html401-19991224/strict.dtd">
			<html>
			    <head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
				<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
				<title>Message from {shop_name}</title>
				<style>
				@media only screen and (max-width: 300px){
					body {
					    width:218px !important;
					    margin:auto !important;
					}
					.table {width:195px !important;margin:auto !important; background-color:#fff;}
				}
				@media only screen and (min-width: 301px) and (max-width: 500px) {
				    body {width:308px!important;margin:auto!important;}
				    .table {width:285px!important;margin:auto!important;}
				}
				@media only screen and (min-width: 501px) and (max-width: 768px) {
				    body {width:478px!important;margin:auto!important;}
				    .table {width:450px!important;margin:auto!important;}
				    .logo, .titleblock, .linkbelow, .box, .footer, .space_footer{width:auto!important;display: block!important;}
				}
				@media only screen and (max-device-width: 480px) {
				    body {width:308px!important;margin:auto!important;}
				    .table {width:285px;margin:auto!important;}
				}
				</style>
			    </head>
			    <body style="-webkit-text-size-adjust:none;background-color:#fff;width:100%;
				  font-family:Open-sans, sans-serif;color:#555454;font-size:13px;line-height:18px;margin:auto">
				<table class="table table-mail" style="width:100%;
				       -moz-box-shadow:0 0 5px #afafaf;-webkit-box-shadow:0 0 5px #afafaf;
				       -o-box-shadow:0 0 5px #afafaf;box-shadow:0 0 5px #afafaf;
				       filter:progid:DXImageTransform.Microsoft.Shadow(color=#afafaf,Direction=134,Strength=5)">
				    <tr>
					<td style="width:20px; padding:7px 0;">&nbsp;</td>
					<td align="center" style="padding:7px 0">
					    <table class="table" style="width:100%" >
						<tr>
						    <td align="center" class="logo" style="border-bottom:4px solid #333333;padding:7px 0">
							<a title="{shop_name}" href="{shop_url}" style="color:#337ff1">
							    <img src="{shop_logo}" alt="{shop_name}" />
							</a>
						    </td>
						</tr>
					    </table>
					    {template_content}
					<td style="width:20px; padding:7px 0;">&nbsp;</td>
				    </tr>
				</table>
			</body>
			</html>
                        {/literal}