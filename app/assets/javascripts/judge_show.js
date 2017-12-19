/**
 * Created by zll on 17-12-19.
 * 配合judge gem,对input元素前台校验的结果显示,需要在使用了judge的view底部引入此文件
 */
//var judge_error_count = 0;
$(document).ready(function () {

    $("input[data-validate]").blur
    (function () {
        var input = this;
        judge.validate(input, {
            valid: valid_show,
            invalid: invalid_show
        });
    });

    /*$("form").submit
     (function (event) {
     var $inputs = $(this).find("[data-validate]");
     if($inputs)
     {
     event.preventDefault();
     judge_error_count = 0;
     }
     $inputs.blur();

     if(judge_error_count == 0)
     {
     $(this).submit();
     }

     });*/

});

var valid_show = function (element) {
    element.style.border = '1px solid green';
    var $nextEle = $(element).next();
    //var $submit = $(element).closest("form").find("[type=submit]");
    if ($nextEle && $nextEle.attr("id") === "error_hint") {
        $nextEle.remove();
        //$submit.prop("disabled",false);
    }
};


var invalid_show = function (element, messages) {
    //judge_error_count++;
    element.style.border = '1px solid red';
    var notice = "<span id=\"error_hint\" style=\"color: red\">" + messages.join(',') + "</span>";
    var $nextEle = $(element).next();
    //var $submit = $(element).closest("form").find("[type=submit]");
    if ($nextEle && $nextEle.attr("id") === "error_hint") {
        $nextEle.replaceWith(notice);
    }
    else
        $(element).after(notice);

    //$submit.prop("disabled",true);
};