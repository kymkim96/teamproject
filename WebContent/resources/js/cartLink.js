$(() => {
    $("#home_link")
        .click(() => {
            window.location.href = "../../index.html";
        })
    $("#home_link").hover(() => {
        $("#home_link").css({
            "color": "#917354",
            "cursor": "pointer",
        })
    }, () => {
        $("#home_link").css({
            "color": "black",
        })
    });

    $(".detail_1_link").click(() => {
        window.location.href = "../../view/detail/7.html";
    });
    $(".detail_1_link").hover(() => {
        $(".detail_1_link").css({
            "color": "#917354",
            "cursor": "pointer",
            "text-decoration": "underline"
        })
    }, () => {
        $(".detail_1_link").css({
            "color": "black",
        })
    });

    $("#list_home_link").click(() => {
        window.location.href = "../../view/list/book_list1.html";
    });
});