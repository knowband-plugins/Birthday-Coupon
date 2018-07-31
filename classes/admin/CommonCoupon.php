<?php
/**
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 * We offer the best and most useful modules PrestaShop and modifications for your online store.
 *
 * @author    knowband.com <support@knowband.com>
 * @copyright 2015 knowband
 * @license   see file: LICENSE.txt
 * @category  PrestaShop Module
 */

class CommonCoupon extends Module
{
    
    /*
     * Function to add void template in database while installing the module
     */
    protected function getDefaultCommonEmail()
    {
        $template_html = array();
        $template_html['name'] = 'Common';
        $template_html['body'] = $this->context->smarty->fetch(_PS_MODULE_DIR_ . 'birthdaycoupon/views/templates/admin/email/common.tpl');
        $template_html['text_content'] = '';
        $template_html['template_lang'] = 1;
        return $template_html;
    }
}
