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

class AdminBirthdayCouponController extends ModuleAdminController
{
    /*
     * Default function, used here to set the required variables in this and its child classes
     */
    public function __construct()
    {
        $this->bootstrap = true;
        $this->name = 'AdminBirthdayCoupon';
        $this->displayName = 'Birthday Coupon';
        parent::__construct();
    }

    public function postProcess()
    {
        $json = array();
        if (Tools::isSubmit('ajax') && Tools::getValue('ajax')) {
            if (Tools::isSubmit('method') && Tools::getValue('method')) {
                switch (Tools::getValue('method')) {
                    case 'searchAutoCompleteKbProduct':
                        $id_lang = $this->context->language->id;
                        $json = $this->kbAjaxProductList($id_lang, 0, 0, 'price', 'desc', true);
                        break;
                    case 'getEmailContentByTemplateName':
                        $email_templates_name = pSQL(Tools::getValue('template_name'));
                        $json=$this->getEmailContentByTemplateName($email_templates_name);
                        break;
                    case 'filterGraphData':
                        $obj=new birthdaycoupon();
                        $json=$obj->getDataforGraph(Tools::getValue('from_date'), Tools::getValue('to_date'));
                        break;
                }
            }
            header('Content-Type: application/json', true);
            echo Tools::jsonEncode($json);
            die;
        }
        parent::postProcess();
    }
    
    /*
     * Reuturn the email content in all language for given template
     */
    public function getEmailContentByTemplateName($template_name)
    {
        $sql = 'SELECT id_lang,body FROM ' . _DB_PREFIX_ . 'birthday_coupon_email'
                    . ' WHERE template_name="' . pSQL($template_name) . '"';
        $content = Db::getInstance()->executeS($sql);
        $json =array();
        if (Count($content) > 0) {
            $data_table = array();
            $obj= new birthdaycoupon();
            foreach ($content as $row) {
                $row['body']=Tools::htmlentitiesDecodeUTF8($row['body']);
                $row['body'] = str_replace('{minimal_img_path}', $obj->getModuleDirUrl() . 'birthdaycoupon/views/img/admin/email/minimal6.png', $row['body']);
                $row['body'] = str_replace('{icon_img_path}', $obj->getModuleDirUrl() . 'birthdaycoupon/views/img/admin/email/ICON.png', $row['body']);

                //$row['body']=Tools::htmlentitiesDecodeUTF8($row['body']);
                array_push($data_table, $row);
            }
            $json = array(
                'status' => 'true',
                'content' => $data_table,
            );
        } else {
            $json = array(
                'status' => 'false',
                'comment'=>$this->module->l('No data was found', 'AdminBirthdayCouponController'),
            );
            (int) $count = 0;
            $languages = Language::getLanguages(false);
            foreach ($languages as $lang) {
                $json['content'][$count++] = $lang['id_lang'];
            }
        }
        return $json;
    }

    /*
     * Method for showing products in the dropdown
     */
    public function kbAjaxProductList($id_lang, $start, $limit, $order_by, $order_way, $search_product = false, $id_category = false, $only_active = false, Context $context = null)
    {
        if ($search_product) {
            $prod_query = trim(Tools::getValue('q', false));
            if (!$prod_query or $prod_query == '' or Tools::strlen($prod_query) < 1) {
                die();
            }

            if ($pos = strpos($prod_query, ' (ref:')) {
                $prod_query = Tools::substr($prod_query, 0, $pos);
            }
        }
        
        $excludeIds = Tools::getValue('excludeIds', false);
        if ($excludeIds && $excludeIds != 'NaN') {
            $excludeIds = implode(',', array_map('intval', explode(',', $excludeIds)));
        } else {
            $excludeIds = '';
        }
        
        if (!$context) {
            $context = Context::getContext();
        }

        $front = true;
        if (!in_array($context->controller->controller_type, array('front', 'modulefront'))) {
            $front = false;
        }

        if (!Validate::isOrderBy($order_by) || !Validate::isOrderWay($order_way)) {
            die(Tools::displayError());
        }
        if ($order_by == 'id_product' || $order_by == 'price' || $order_by == 'date_add' || $order_by == 'date_upd') {
            $order_by_prefix = 'p';
        } elseif ($order_by == 'name') {
            $order_by_prefix = 'pl';
        } elseif ($order_by == 'position') {
            $order_by_prefix = 'c';
        }

        if (strpos($order_by, '.') > 0) {
            $order_by = explode('.', $order_by);
            $order_by_prefix = $order_by[0];
            $order_by = $order_by[1];
        }
        $sql = 'SELECT p.*, product_shop.*, pl.*
                FROM `' . _DB_PREFIX_ . 'product` p
                ' . Shop::addSqlAssociation('product', 'p') . '
                LEFT JOIN `' . _DB_PREFIX_ . 'product_lang` pl ON (p.`id_product` = pl.`id_product` ' . Shop::addSqlRestrictionOnLang('pl') . ')
                LEFT JOIN `' . _DB_PREFIX_ . 'manufacturer` m ON (m.`id_manufacturer` = p.`id_manufacturer`)
                LEFT JOIN `' . _DB_PREFIX_ . 'supplier` s ON (s.`id_supplier` = p.`id_supplier`)
                LEFT JOIN `' . _DB_PREFIX_ . 'image_shop` image_shop
                ON (image_shop.`id_product` = p.`id_product` AND image_shop.cover=1
                AND image_shop.id_shop=' . (int) $context->shop->id . ')
		LEFT JOIN `' . _DB_PREFIX_ . 'image_lang` il '
                . 'ON (image_shop.`id_image` = il.`id_image` AND il.`id_lang` = ' . (int) $id_lang . ')' .
                ($id_category ? 'LEFT JOIN `' . _DB_PREFIX_ . 'category_product` c ON (c.`id_product` = p.`id_product`)' : '') . '
                WHERE pl.`id_lang` = ' . (int) $id_lang .
                (!empty($excludeIds) ? ' AND p.id_product NOT IN (' . $excludeIds . ') ' : ' ') .
                (($search_product && $prod_query != '') ? ' AND (pl.name LIKE \'%' . pSQL($prod_query) . '%\' OR p.reference LIKE \'%' . pSQL($prod_query) . '%\')' : '') .
                ($id_category ? ' AND c.`id_category` = ' . (int) $id_category : '') .
                ($front ? ' AND product_shop.`visibility` IN ("both", "catalog")' : '') .
                ($only_active ? ' AND product_shop.`active` = 1' : '') . '
				ORDER BY ' . (isset($order_by_prefix) ? pSQL($order_by_prefix) . '.' : '') . '`' . pSQL($order_by) . '` ' . pSQL($order_way) .
                ($limit > 0 ? ' LIMIT ' . (int) $start . ',' . (int) $limit : '');
        $rq = Db::getInstance(_PS_USE_SQL_SLAVE_)->executeS($sql);
        return $rq;
    }

    public function setMedia()
    {
        parent::setMedia();
    }

    public function initProcess()
    {
        parent::initProcess();
    }

    public function initContent()
    {
        parent::initContent();
    }

    public function getPath()
    {
        if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == 'on') {
            $custom_ssl_var = 1;
        } else {
            $custom_ssl_var = 0;
        }
        if ((bool) Configuration::get('PS_SSL_ENABLED') && $custom_ssl_var == 1) {
            $module_dir = _PS_BASE_URL_SSL_ . __PS_BASE_URI__;
        } else {
            $module_dir = _PS_BASE_URL_ . __PS_BASE_URI__;
        }

        return $module_dir;
    }
}
