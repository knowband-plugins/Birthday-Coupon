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

    getLineGraph(total_generated_coupon_data, total_unused_data, total_used_data, ticks);
    $('#bthcpn_general_setting').click(function () {
        $('#bthcpn_general_setting').addClass('tab-current');
        $('#bthcpn_general_setting_content').addClass('content-current');
        $('#bthcpn_email_setting').removeClass('tab-current');
        $('#bthcpn_email_setting_content').removeClass('content-current');
        $('#bthcpn_country_restriction').removeClass('tab-current');
        $('#bthcpn_country_restriction_content').removeClass('content-current');
        $('#bthcpn_category_restriction').removeClass('tab-current');
        $('#bthcpn_category_restriction_content').removeClass('content-current');
        $('#bthcpn_statistics').removeClass('tab-current');
        $('#bthcpn_statistics_content').removeClass('content-current');
    });
    $('#bthcpn_email_setting').click(function () {
        $('#bthcpn_general_setting').removeClass('tab-current');
        $('#bthcpn_general_setting_content').removeClass('content-current');
        $('#bthcpn_email_setting').addClass('tab-current');
        $('#bthcpn_email_setting_content').addClass('content-current');
        $('#bthcpn_country_restriction').removeClass('tab-current');
        $('#bthcpn_country_restriction_content').removeClass('content-current');
        $('#bthcpn_category_restriction').removeClass('tab-current');
        $('#bthcpn_category_restriction_content').removeClass('content-current');
        $('#bthcpn_statistics').removeClass('tab-current');
        $('#bthcpn_statistics_content').removeClass('content-current');
    });
    $('#bthcpn_country_restriction').click(function () {
        $('#bthcpn_general_setting').removeClass('tab-current');
        $('#bthcpn_general_setting_content').removeClass('content-current');
        $('#bthcpn_email_setting').removeClass('tab-current');
        $('#bthcpn_email_setting_content').removeClass('content-current');
        $('#bthcpn_country_restriction').addClass('tab-current');
        $('#bthcpn_country_restriction_content').addClass('content-current');
        $('#bthcpn_category_restriction').removeClass('tab-current');
        $('#bthcpn_category_restriction_content').removeClass('content-current');
        $('#bthcpn_statistics').removeClass('tab-current');
        $('#bthcpn_statistics_content').removeClass('content-current');
    });
    $('#bthcpn_category_restriction').click(function () {
        $('#bthcpn_general_setting').removeClass('tab-current');
        $('#bthcpn_general_setting_content').removeClass('content-current');
        $('#bthcpn_email_setting').removeClass('tab-current');
        $('#bthcpn_email_setting_content').removeClass('content-current');
        $('#bthcpn_country_restriction').removeClass('tab-current');
        $('#bthcpn_country_restriction_content').removeClass('content-current');
        $('#bthcpn_category_restriction').addClass('tab-current');
        $('#bthcpn_category_restriction_content').addClass('content-current');
        $('#bthcpn_statistics').removeClass('tab-current');
        $('#bthcpn_statistics_content').removeClass('content-current');
    });
    $('#bthcpn_statistics').click(function () {
        $('#bthcpn_general_setting').removeClass('tab-current');
        $('#bthcpn_general_setting_content').removeClass('content-current');
        $('#bthcpn_email_setting').removeClass('tab-current');
        $('#bthcpn_email_setting_content').removeClass('content-current');
        $('#bthcpn_country_restriction').removeClass('tab-current');
        $('#bthcpn_country_restriction_content').removeClass('content-current');
        $('#bthcpn_category_restriction').removeClass('tab-current');
        $('#bthcpn_category_restriction_content').removeClass('content-current');
        $('#bthcpn_statistics').addClass('tab-current');
        $('#bthcpn_statistics_content').addClass('content-current');

        getLineGraph(total_generated_coupon_data, total_unused_data, total_used_data, ticks);
    });

    /*filter handel and validation*/
    $('#birthday_coupon_filter').on('click', function () {
        $('.kb_error_message').remove();
        $("input[name='discount_track_from_date']").removeClass('kb_error_field');
        $("input[name='discount_track_to_date']").removeClass('kb_error_field');
        var error = false;
        var from_date_mand = velovalidation.checkMandatory($("#discount_track_from_date"));
        if (from_date_mand != true) {
            error = true;
            $("input[name='discount_track_from_date']").addClass('kb_error_field');
            $("input[name='discount_track_from_date']").closest('.filter_inline_div').after($('<span class="from_date_mand kb_error_message">' + from_date_mand + '</span>'));
        } else {
            var from_date_syntax = velovalidation.checkDateddmmyy($("#discount_track_from_date"));
            if (from_date_syntax != true) {
                error = true;
                $("input[name='discount_track_from_date']").addClass('kb_error_field');
                $("input[name='discount_track_from_date']").closest('.filter_inline_div').after($('<span class="from_date_mand kb_error_message">' + from_date_syntax + '</span>'));
            }
        }
        if (error != true) {
            var to_date_mand = velovalidation.checkMandatory($("#discount_track_to_date"));
            if (to_date_mand != true) {
                error = true;
                $("input[name='discount_track_to_date']").addClass('kb_error_field');
                $("input[name='discount_track_to_date']").closest('.filter_inline_div').after($('<span class="to_date_mand kb_error_message">' + to_date_mand + '</span>'));
            } else {
                var to_date_syntax = velovalidation.checkDateddmmyy($("#discount_track_to_date"));
                if (to_date_syntax != true) {
                    error = true;
                    $("input[name='discount_track_to_date']").addClass('kb_error_field');
                    $("input[name='discount_track_to_date']").closest('.filter_inline_div').after($('<span class="to_date_mand kb_error_message">' + to_date_syntax + '</span>'));
                }
            }
        }
        if (error !== true) {
            var from_arr = $("#discount_track_from_date").val().split('/');
            var to_arr = $("#discount_track_to_date").val().split('/');

            var from = new Date(from_arr[1] + "/" + from_arr[0] + "/" + from_arr[2]);
            var to = new Date(to_arr[1] + "/" + to_arr[0] + "/" + to_arr[2]);
            var today = new Date();
            if (from > to)
            {
                var error = true;
                $("input[name='discount_track_from_date']").addClass('kb_error_field');
                $("input[name='discount_track_to_date']").addClass('kb_error_field');
                $("input[name='discount_track_to_date']").closest('.filter_inline_div').after($('<span class="to_date_mand kb_error_message">' + fromtodate + '</span>'));
            } else if (to > today) {
                var error = true;
                $("input[name='discount_track_to_date']").addClass('kb_error_field');
                $("input[name='discount_track_to_date']").closest('.filter_inline_div').after($('<span class="to_date_mand kb_error_message">' + greater_date + '</span>'));
            }
        }
        if (error === false) {
            $.ajax({
                url: ajax_controller_url,
                type: 'post',
                data: {ajax: true, method: 'filterGraphData', from_date: $("#discount_track_from_date").val(), to_date: $("#discount_track_to_date").val()},
                dataType: 'json',
                beforeSend: function () {
                    $('#show_loader_filter').show();
                },
                success: function (json) {
                    if (json !== '') {
                        getLineGraph(json['total_generated'], json['total_unused'], json['total_used'], json['ticks']);
                    } else {
                        alert('No data found.');
                    }
                },
                complete: function () {
                    $('#show_loader_filter').hide();
                }
            });

        }
    });

    function getLineGraph(total_generated_coupon_data, total_unused_data, total_used_data, ticks) {
        var data1 = [];
        var data2 = [];
        var data3 = [];

        var dataObj1 = total_generated_coupon_data;
        var dataObj2 = total_unused_data;
        var dataObj3 = total_used_data;
        var dataObj4 = ticks;

        var tickss = [];
        for (var i in dataObj4)
        {
            tickss.push([i, dataObj4[i]]);
            data1.push([i, dataObj1[i]]);
            data2.push([i, dataObj3[i]]);
            data3.push([i, dataObj2[i]]);
        }

        var dataset = [
            {
                label: total_generated_coupon_text,
                data: data1,
                points: {fillColor: "#0062FF", show: true},
                lines: {show: true, fillColor: '#DA4C4C'}
            },
            {
                label: total_used_coupon_text,
                data: data2,
                points: {fillColor: "#FF0000", show: true},
                lines: {show: true, fillColor: '#DA4C4C'}
            },
            {
                label: total_unused_coupon_text,
                data: data3,
                points: {fillColor: "#b000df", show: true},
                lines: {show: true, fillColor: '#b000df'}
            }
        ];

        var options = {
            series: {
                lines: {
                    show: true
                },
                points: {
                    radius: 3,
                    fill: true,
                    show: true
                }
            },
            xaxis: {
                ticks: tickss,
                axisLabel: "Time",
                axisLabelUseCanvas: true,
                axisLabelFontSizePixels: 12,
                axisLabelFontFamily: 'Verdana, Arial',
                axisLabelPadding: 10
            },
            yaxes: [{
                    axisLabel: "No. of times",
                    axisLabelUseCanvas: true,
                    axisLabelFontSizePixels: 12,
                    axisLabelFontFamily: 'Verdana, Arial',
                    axisLabelPadding: 3,
                }, {
                    position: "right",
                    axisLabel: "Change",
                    axisLabelUseCanvas: true,
                    axisLabelFontSizePixels: 12,
                    axisLabelFontFamily: 'Verdana, Arial',
                    axisLabelPadding: 3
                }
            ],
            legend: {
                noColumns: 0,
                labelBoxBorderColor: "#000000",
                position: "nw"
            },
            grid: {
                hoverable: true,
                borderWidth: 2,
                borderColor: "#633200",
                backgroundColor: {colors: ["#ffffff", "#EDF5FF"]}
            },
            colors: ["#FF0000", "#0022FF"]
        };
        $.plot($('#flot-placeholder1'), dataset, options);
        $('#flot-placeholder1').UseTooltip();
    }
});

var previousPoint = null, previousLabel = null;
var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
$.fn.UseTooltip = function () {
    $(this).bind("plothover", function (event, pos, item) {
        if (item) {
            if ((previousLabel != item.series.label) || (previousPoint != item.dataIndex)) {
                previousPoint = item.dataIndex;
                previousLabel = item.series.label;
                $("#tooltip").remove();

                var x = item.datapoint[0];
                var y = item.datapoint[1];

                var color = item.series.color;
                var month = new Date(x).getMonth();
                if (item.seriesIndex == 0) {
                    showTooltip(item.pageX,
                            item.pageY,
                            color,
                            "<strong>" + item.series.label + "</strong><br><strong>" + y + "</strong>");
                } else {
                    showTooltip(item.pageX,
                            item.pageY,
                            color,
                            "<strong>" + item.series.label + "</strong><br><strong>" + y + "</strong>");
                }
            }
        } else {
            $("#tooltip").remove();
            previousPoint = null;
        }
    });
};
function gd(year, month, day) {
    return new Date(year, month, day).getTime();
}


function showTooltip(x, y, color, contents) {
    $('<div id="tooltip">' + contents + '</div>').css({
        position: 'absolute',
        display: 'none',
        'z-index': 999,
        top: y - 40,
        left: x - 120,
        border: '2px solid ' + color,
        padding: '3px',
        'font-size': '9px',
        'border-radius': '5px',
        'background-color': '#fff',
        'font-family': 'Verdana, Arial, Helvetica, Tahoma, sans-serif',
        opacity: 0.9
    }).appendTo("body").fadeIn(200);
}