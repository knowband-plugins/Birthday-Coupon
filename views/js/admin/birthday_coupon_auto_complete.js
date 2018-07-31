/**
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
 */

$(document).ready(function () {

    $('input[name="birthday_coupon[send_free_gift]"]').parent().after($('#kb_gift_product_holder'));

    /*Serching product for free gift*/

    $('input[name="birthday_coupon[send_free_gift]"]').autocomplete(
            'ajax-tab.php', {
                minChars: 2,
                max: 50,
                delay: 100,
                width: 500,
                selectFirst: false,
                scroll: false,
                dataType: 'json',
                cacheLength: 0,
                formatItem: function (data, i, max, value, term) {
                    return value;
                },
                parse: function (data) {
                    var mytab = new Array();
                    for (var i = 0; i < data.length; i++) {
                        var ref_str = '';
                        if (typeof data[i].reference != 'undefined' && data[i].reference != '') {
                            ref_str = ' (' + data[i].reference + ')';
                        }
                        mytab[mytab.length] = {data: data[i], value: data[i].name + ref_str};
                    }
                    return mytab;
                },
                extraParams: {
                    controller: 'AdminBirthdayCoupon',
                    excludeIds: function () {
                        var selected_gift = $('input[name="birthday_coupon[send_free_gift_hidden]"]').val();
                        return selected_gift.replace(/\-/g, ',');
                    },
                    token: kbCurrentToken,
                    ajax: true,
                    method: 'searchAutoCompleteKbProduct'
                }
            }
    ).result(function (event, data, formatted) {
        addProductForSendFreeGift(data);
    });

    $(document).on('click', '.delGiftProduct', function () {
        deleteSelectedProduct('gift');
        $(this).parent().remove();
    });

});

/*
 * Function for handling the selected product through the auto complete
 * @param {type} data
 * @param {type} action
 * @returns {Boolean}
 */
function addProductForSendFreeGift(data)
{
    if (data == null)
        return false;
    var productId = data.id_product;
    var productName = data.name;
    var $divAccessories = $('#kb_gift_product_holder');
    /* delete product from select + add product line to the div, input_name, input_ids elements */
    var ref_str = '';
    if (typeof data.reference != 'undefined' && data.reference != '') {
        ref_str = ' (' + data.reference + ')';
    }
    var delButtonClass = 'delGiftProduct';
    $divAccessories.html('');
    $divAccessories.html($divAccessories.html() + '<div class="form-control-static"><button type="button" class="' + delButtonClass + ' btn btn-default" name="' + productId + '"><i class="icon-remove text-danger"></i></button>&nbsp;' + productName + ref_str + '</div>');
    $('input[name="birthday_coupon[send_free_gift]"]').val('');
    $('input[name="birthday_coupon[send_free_gift]"]').setOptions({
        extraParams: {
            controller: 'AdminBirthdayCoupon',
            excludeIds: function () {
                var selected_pro = $('input[name="birthday_coupon[send_free_gift_hidden]"]').val();
                return selected_pro.replace(/\-/g, ',');
            },
            token: kbCurrentToken,
            ajax: true,
            method: 'searchAutoCompleteKbProduct'
        }
    });    
    $('input[name="birthday_coupon[send_free_gift_hidden]"]').val(productId);
}

/*
 * Function for deleting a selected product from Exclude list or a Gift Product
 * @param {type} type
 * @returns {undefined}
 */
function deleteSelectedProduct(type, pId)
{
    var pId = typeof pId !== 'undefined' ? pId : 0;
    $('input[name="birthday_coupon[send_free_gift]"]').val('');
    $('input[name="birthday_coupon[send_free_gift]"]').setOptions({
        extraParams: {
            controller: 'AdminBirthdayCoupon',
            excludeIds: function () {
                var selected_pro = $('input[name="birthday_coupon[send_free_gift_hidden]"]').val();
                return selected_pro.replace(/\-/g, ',');
            },
            token: kbCurrentToken,
            ajax: true,
            method: 'searchAutoCompleteKbProduct'
        }
    });
    $('input[name="birthday_coupon[send_free_gift_hidden]"]').val('');
}