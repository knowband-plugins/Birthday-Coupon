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

{extends file='helpers/form/form.tpl'}
{block name='defaultForm'}
<div class="vss_overlay_paid" style="display: none;">
    <div>
        <span class="vss_overlay_paid_text">
            {l s='You are using the Free version of the module. Click here to buy the Paid version which is having the advanced features.' mod='birthdaycoupon'}
        </span>
        <br>
        <br>
        <a target="_blank" class="vss_free_version_link" href="{$buy_now}">
            <span class="vss_free_version_button">{l s='Buy Now' mod='birthdaycoupon'}</span>
        </a>
       {* <a target="_blank" class="vss_free_version_link" href="{$demo_url}">
            <span class="vss_free_version_button">{l s='View Demo' mod='birthdaycoupon'}</span>
        </a>*}
    </div>
</div>
<div class="vss_overlay_paid1" style="display: none;">
    <div>
        <span class="vss_overlay_paid_text1">
            {l s='You are using the Free version of the module. Click here to buy the Paid version which is having the advanced features.' mod='birthdaycoupon'}
        </span>
        <br>
        <br>
        <a target="_blank" class="vss_free_version_link1" href="{$buy_now}">
            <span class="vss_free_version_button1">{l s='Buy Now' mod='birthdaycoupon'}</span>
        </a>
       {* <a target="_blank" class="vss_free_version_link1" href="{$demo_url}">
            <span class="vss_free_version_button1">{l s='View Demo' mod='birthdaycoupon'}</span>
        </a>*}
    </div>
</div>
        
        
<div class="vss_overlay_paid2" style="display: none;">
    <div>
        <span class="vss_overlay_paid_text2">
            {l s='You are using the Free version of the module. Click here to buy the Paid version which is having the advanced features. ' mod='birthdaycoupon'}
        </span>
        <br>
        <br>
        <a target="_blank" class="vss_free_version_link2" href="{$buy_now}">
            <span class="vss_free_version_button2">{l s='Buy Now' mod='birthdaycoupon'}</span>
        </a>
       {* <a target="_blank" class="vss_free_version_link2" href="{$demo_url}">
            <span class="vss_free_version_button2">{l s='View Demo' mod='birthdaycoupon'}</span>
        </a>*}
    </div>
</div>
        
<div class="vss_overlay_paid3" style="display: none;">
    <div>
        <span class="vss_overlay_paid_text3">
            {l s='You are using the Free version of the module. Click here to buy the Paid version which is having the advanced features. ' mod='birthdaycoupon'}
        </span>
        <br>
        <br>
        <a target="_blank" class="vss_free_version_link3" href="{$buy_now}">
            <span class="vss_free_version_button3">{l s='Buy Now' mod='birthdaycoupon'}</span>
        </a>
        {*<a target="_blank" class="vss_free_version_link3" href="{$demo_url}">
            <span class="vss_free_version_button3">{l s='View Demo' mod='birthdaycoupon'}</span>
        </a>*}
    </div>
</div>

<div class="vss_overlay_paid4" style="display: none;">
    <div>
        <span class="vss_overlay_paid_text4">
            {l s='You are using the Free version of the module. Click here to buy the Paid version which is having the advanced features. ' mod='birthdaycoupon'}
        </span>
        <br>
        <br>
        <a target="_blank" class="vss_free_version_link4" href="{$buy_now}">
            <span class="vss_free_version_button4">{l s='Buy Now' mod='birthdaycoupon'}</span>
        </a>
       {* <a target="_blank" class="vss_free_version_link4" href="{$demo_url}">
            <span class="vss_free_version_button4">{l s='View Demo' mod='birthdaycoupon'}</span>
        </a>*}
    </div>
</div>
        
        
<script>
    {if isset($gen_setting1)}
        var gen_setting1 = "{$gen_setting1}";
        var gen_setting2 = "{$gen_setting2}";
    {/if}
        var greater_date = "{l s='To date cannot be greater that current date.' mod='birthdaycoupon'}";
        var fromtodate = "{l s='To date should be greater than or equal to from date' mod='birthdaycoupon'}";
        var current_tab = '{$selected_tab|escape:'htmlall':'UTF-8'}';
        var all_lang_req = "{l s='Please check for all languages.' mod='birthdaycoupon'}";
        var empty_field_error = "{l s='Field cannot be empty.' mod='birthdaycoupon'}";
        var ajax_controller_url = "{if isset($admin_birthday_coupon_controller)}{$admin_birthday_coupon_controller}{/if}"; {*Variable contains URL, escape not required*}
        {if isset($kb_current_token)}
            var kbCurrentToken = "{$kb_current_token|escape:'htmlall':'UTF-8'}";
        {/if}
        var total_generated_coupon_data = {$total_generated_coupon_data|escape:'quotes':'UTF-8'};
        var total_unused_data = {$total_unused_data|escape:'quotes':'UTF-8'};
        var total_used_data = {$total_used_data|escape:'quotes':'UTF-8'};
        var ticks = {$ticks|escape:'quotes':'UTF-8'};
        var total_generated_coupon_text = "{l s='Total Generated Coupon.' mod='birthdaycoupon'}";
        var total_unused_coupon_text = "{l s='Total Unused Coupon.' mod='birthdaycoupon'}";
        var total_used_coupon_text = "{l s='Total Used Coupon.' mod='birthdaycoupon'}";
        var occasion_warning = "{l s='If you are changing the occasion, same customer can get coupon for both occasions. And kindly check email subject and template as both will differ for above occasions. ' mod='birthdaycoupon'}";
        var number_of_days_between = "{l s='Number is not in the valid range. It should be between 1 and 100' mod='birthdaycoupon'}"
        var validity_between = "{l s='Number is not in the valid range. It should be between 1 and 250' mod='birthdaycoupon'}"
        var minimum_amount_between = "{l s='Number is not in the valid range. It should be between 1 and 99999999' mod='birthdaycoupon'}"
        var discount_percent_value_between = "{l s='Number is not in the valid range. It should be between 1 and 100' mod='birthdaycoupon'}"
        var select_country = "{l s='Select a Country' mod='birthdaycoupon'}"
        var select_country_err = "{l s='Please select atleast one country.' mod='birthdaycoupon'}"
        var pretsa_cat_error = "{l s='Please select atleast one category.' mod='birthdaycoupon'}";

        velovalidation.setErrorLanguage({
            empty_field: "{l s='Field cannot be empty.' mod='birthdaycoupon'}",
            number_field: "{l s='You can enter only numbers.' mod='birthdaycoupon'}",
            positive_number: "{l s='Number should be greater than 0.' mod='birthdaycoupon'}",
            maxchar_field: "{l s='Field cannot be greater than {#} characters.' mod='birthdaycoupon'}",
            minchar_field: "{l s='Field cannot be less than {#} character(s).' mod='birthdaycoupon'}",
            empty_email: "{l s='Please enter Email.' mod='birthdaycoupon'}",
            validate_email: "{l s='Please enter a valid Email.' mod='birthdaycoupon'}",
            invalid_date: "{l s='Invalid date format.' mod='birthdaycoupon'}",
            validate_range: "{l s='Number is not in the valid range. It should be between {##} and {###}' mod='birthdaycoupon'}",
            valid_amount: "{l s='Field should be numeric.' mod='birthdaycoupon'}",
            valid_decimal: "{l s='Field can have only upto two decimal values.' mod='birthdaycoupon'}",
            max_email: "{l s='Email cannot be greater than {#} characters.' mod='birthdaycoupon'}",
            specialchar_zip: "{l s='Zip should not have special characters.' mod='birthdaycoupon'}",
            valid_percentage: "{l s='Percentage should be in number.' mod='birthdaycoupon'}",
            between_percentage: "{l s='Percentage should be between 0 and 100.' mod='birthdaycoupon'}",
            maxchar_size: "{l s='Size cannot be greater than {#} characters.' mod='birthdaycoupon'}",
            maxchar_color: "{l s='Color could not be greater than {#} characters.' mod='birthdaycoupon'}",
            invalid_color: "{l s='Color is not valid.' mod='birthdaycoupon'}",
            specialchar: "{l s='Special characters are not allowed.' mod='birthdaycoupon'}",
            script: "{l s='Script tags are not allowed.' mod='birthdaycoupon'}",
            style: "{l s='Style tags are not allowed.' mod='birthdaycoupon'}",
            iframe: "{l s='Iframe tags are not allowed.' mod='birthdaycoupon'}",
            not_image: "{l s='Uploaded file is not an image.' mod='birthdaycoupon'}",
            image_size: "{l s='Uploaded file size must be less than {#}.' mod='birthdaycoupon'}",
            html_tags: "{l s='Field should not contain HTML tags.' mod='birthdaycoupon'}",
            number_pos:"{l s='You can enter only positive numbers.' mod='birthdaycoupon'}",
            invalid_url:"{l s='Invalid URL format.' mod='birthdaycoupon'}",
        });
</script>
<svg class="hidden">
<defs>
<path id="tabshape" d="M80,60C34,53.5,64.417,0,0,0v60H80z"/>
</defs>
</svg>

<div class="vss_overlay_paid5" style="display: block;bottom: initial;width: 99.3%;text-align: center;padding: 45px;margin: 0.5%;background: rgba(85, 85, 85, 0.529412);margin-bottom: 34px;">
    <div>
        <span class="vss_overlay_paid_text5">
            {l s='You are using the Free version of the module. Click here to buy the Paid version which is having the advanced features.' mod='kbgoogleshopping'}
        </span>
        <br>
        <br>
        <a target="_blank" class="vss_free_version_link5" href="{$buy_now}">
            <span class="vss_free_version_button5">{l s='Buy Now' mod='kbgoogleshopping'}</span>
        </a>
        {*<a target="_blank" class="vss_free_version_link5" href="{$demo_url}">
            <span class="vss_free_version_button5">{l s='View Demo' mod='kbgoogleshopping'}</span>
        </a>*}
    </div>
</div>

<div class="birthday_coupon_container">
        <div class="tabs tabs-style-shape">
            <nav>
                <ul class="custom-font">
                    <li class="{if $selected_tab == 'bthcpn_general_setting'}tab-current{/if}" id="bthcpn_general_setting">
                        <a>
                            <svg viewBox="0 0 80 60" preserveAspectRatio="none"><use xlink:href="#tabshape"></use></svg>
                            <span>{l s='General Settings' mod='birthdaycoupon'}</span>
                        </a>
                    </li>
                    <li class="{if $selected_tab == 'bthcpn_email_setting'}tab-current{/if}" id="bthcpn_email_setting">
                        <a>
                            <svg viewBox="0 0 80 60" preserveAspectRatio="none"><use xlink:href="#tabshape"></use></svg>
                            <svg viewBox="0 0 80 60" preserveAspectRatio="none"><use xlink:href="#tabshape"></use></svg>
                            <span>{l s='Email Settings' mod='birthdaycoupon'}</span>
                        </a>
                    </li>
                    <li class="{if $selected_tab == 'bthcpn_country_restriction'}tab-current{/if}" id="bthcpn_country_restriction">
                        <a>
                            <svg viewBox="0 0 80 60" preserveAspectRatio="none"><use xlink:href="#tabshape"></use></svg>
                            <svg viewBox="0 0 80 60" preserveAspectRatio="none"><use xlink:href="#tabshape"></use></svg>
                            <span>{l s='Country Restriction' mod='birthdaycoupon'}</span>
                        </a>
                    </li>
                    <li class="{if $selected_tab == 'bthcpn_category_restriction'}tab-current{/if}" id="bthcpn_category_restriction">
                        <a>
                            <svg viewBox="0 0 80 60" preserveAspectRatio="none"><use xlink:href="#tabshape"></use></svg>
                            <svg viewBox="0 0 80 60" preserveAspectRatio="none"><use xlink:href="#tabshape"></use></svg>
                            <span>{l s='Category Restriction' mod='birthdaycoupon'}</span>
                        </a>
                    </li>                    
                    <li class="{if $selected_tab == 'bthcpn_statistics'}tab-current{/if}" id="bthcpn_statistics">
                        <a>
                            <svg viewBox="0 0 80 60" preserveAspectRatio="none"><use xlink:href="#tabshape"></use></svg>
                            <span>{l s='Statistics' mod='birthdaycoupon'}</span>
                        </a>
                    </li>
                </ul>
            </nav>
            <div class="content-wrap">
                <section id="bthcpn_general_setting_content" class="{if $selected_tab == 'bthcpn_general_setting'}content-current{/if}">
                    {$form}{*Variable contains html content, escape not required*}
                    <div class="bootstrap panel" id="cron_instructions">
                        <h3>{l s='Cron Configuration' mod='birthdaycoupon'}</h3>
                        {l s='Add the cron to your store via control panel/putty to send birthday coupons automatically.' mod='birthdaycoupon'}
                        <br><br><b>{l s='URLs to Add to Cron via Control Panel' mod='birthdaycoupon'}</b>
                        <br>{$cron_url}{*Variable contains url, escape not required*}
                        <br><br><b>{l s='Cron setup via SSH' mod='birthdaycoupon'}</b>
                        <br>0 22 * * * wget -O /dev/null {$cron_url}{*Variable contains url, escape not required*}
                    </div>
                        
                </section>
                <section id="bthcpn_email_setting_content" class="{if $selected_tab == 'bthcpn_email_setting'}content-current{/if}">{$email_setting_form}{*Variable contains html content, escape not required*}</section>
                <section id="bthcpn_country_restriction_content" class="{if $selected_tab == 'bthcpn_country_restriction'}content-current{/if}">{$country_restriction_form}{*Variable contains html content, escape not required*}</section>
                <section id="bthcpn_category_restriction_content" class="{if $selected_tab == 'bthcpn_category_restriction'}content-current{/if}">{$category_restriction_form}{*Variable contains html content, escape not required*}</section>
                <section id="bthcpn_statistics_content" class="{if $selected_tab == 'bthcpn_statistics'}content-current{/if}">
                    {$coupon_listing}{*Variable contains html content, escape not required*}
                    <div class='panel'>
                        <div id="discount_tracking_filters" class="row" style='text-align: center;'>
                            <div class="filter_inline_div"><span>{l s='From' mod='birthdaycoupon'}:</span>
                                <input type="text" data-hex="true" class="filter_inputs datepicker" id="discount_track_from_date" name="discount_track_from_date"  value="{date('d/m/Y', strtotime($start_date|escape:'quotes':'UTF-8'))}" />
                                <span>{l s='To' mod='birthdaycoupon'}:</span><input type="text" class="filter_inputs datepicker" id="discount_track_to_date" name="discount_track_to_date"  value="{date('d/m/Y', strtotime($end_date|escape:'quotes':'UTF-8'))}" />
                                <input type="button" id="birthday_coupon_filter" class="btn btn-warning" name="discount_track_to_date" value="{l s='Filter' mod='birthdaycoupon'}" style="
                                       width: 10%;
                                       "><img style="width:40px;height:40px;display:none" src="{$loader_image_url|escape:'quotes':'UTF-8'}" id="show_loader_filter"/></div>
                                {*              <div class="filter_inline_div"></div>*}
                                {*              <div class="filter_inline_div"></div>*}
                        </div>
                    </div>

                    <div class="panel">
                        <div class="graph_lines">  
                            <h4>{l s='Coupons Statistics' mod='birthdaycoupon'}</h4>
                            <div id="flot-placeholder1" class="flot_graph"></div>        
                        </div>
                    </div>
                </section>
            </div><!-- /content -->
        </div><!-- /tabs -->    
</div><!-- /container -->
<div id="kb_gift_product_holder">
    {if isset($gift_product) && !empty($gift_product)}
        {foreach $gift_product as $pro}
            <div class="form-control-static">
                <button type="button" class="delGiftProduct btn btn-default" name="{$pro['id_product']|escape:'htmlall':'UTF-8'}">
                    <i class="icon-remove text-danger"></i>
                </button>
                &nbsp;{$pro['name']|escape:'htmlall':'UTF-8'}
                {if isset($pro['reference']) && $pro['reference'] != ''}
                    &nbsp;({$pro['reference']|escape:'htmlall':'UTF-8'})
                {/if}
            </div>
        {/foreach}
    {/if}
</div>

{/block}
