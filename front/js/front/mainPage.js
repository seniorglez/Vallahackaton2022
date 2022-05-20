$(document).ready(function () {
    var tag_join_visible = false;

    $("#btn_index_join_room").click(function () {
        $("#btn_index_back").removeClass("collapse");
        $("#btn_index_join_private_room").removeClass("collapse");
        $("#btn_index_join_public_room").removeClass("collapse");
        $("#btn_index_create_room").addClass("collapse");
        $("#btn_index_join_room").addClass("collapse");
    });

    $("#btn_index_back").click(function () {
        if (tag_join_visible == true) {
            $("[tag='private_room']").addClass("collapse");
            tag_join_visible = false
        } else {
            $("#btn_index_back").addClass("collapse");
            $("[tag='join']").addClass("collapse");
            $("[tag='main']").removeClass("collapse");
        }

    });

    $("#btn_index_join_private_room").click(function () {
        $("[tag='private_room']").toggleClass("collapse");
        tag_join_visible = true
    });
});