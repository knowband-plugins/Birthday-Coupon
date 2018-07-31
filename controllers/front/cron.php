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
 * @copyright 2017 Knowband
 * @license   see file: LICENSE.txt
 * @category  PrestaShop Module
 */

class BirthdayCouponCronModuleFrontController extends ModuleFrontController
{
    const BIRTHDAY_COUPON_MODULE_CONFIGURATION = 'BIRTHDAYCOUPON_MODULE';
    const BIRTHDAY_COUPON_EMAIL_CONFIGURATION = 'BI_CO_EMAIL_CONFIGURATION';
    const BIRTHDAY_COUPON_EMAIL_ANNIVERSARY_CONFIGURATION = 'BI_CO_EMAIL_ANNIVERSARY_CONFIGURATION';
    const BIRTHDAY_COUPON_CATEGORY_RESTRICTION_CONFIGURATION = 'BI_CO_CATEGORY_RESTRICTION';
    const BIRTHDAY_COUPON_COUNTRY_RESTRICTION_CONFIGURATION = 'BI_CO_COUNTRY_RESTRICTION';
    const BIRTHDAY_COUPON_CRON_SECURE_KEY = 'BI_CO_SECURE_KEY';
    
    public function __construct()
    {
        parent::__construct();
    }
    
    public function init()
    {
        parent::init();
        if (Tools::getValue('secure_key')) {
            $secure_key = Configuration::get(self::BIRTHDAY_COUPON_CRON_SECURE_KEY);
            if ($secure_key == Tools::getValue('secure_key')) {
                $m_config = Tools::unSerialize(Configuration::get(self::BIRTHDAY_COUPON_MODULE_CONFIGURATION));
                $module_config=$m_config['birthday_coupon'];
                if (isset($module_config['enable']) && $module_config['enable'] == 1) {
                    if (isset($module_config['cron_type']) && $module_config['cron_type'] == 2) {
                        $obj = new birthdaycoupon();
//                        d($obj);
                        $obj->executeBirtdayCouponCron();
                        echo $this->module->l('The CRON Job has been been executed successfully.', 'cron');
                        die;
                    } else {
                        echo $this->module->l('The CRON Job has been set to be executed on `Store Visit`. It will be executed once a day when someone visits your store.', 'cron');
                        die;
                    }
                } else {
                    echo $this->module->l('Module Disabled. Please enable the module first', 'cron');
                    die();
                }
            } else {
                echo $this->module->l('You are not authorized to access this page', 'cron');
                die;
            }
        } else {
            echo $this->module->l('You are not authorized to access this page', 'cron');
            die;
        }
    }
}
