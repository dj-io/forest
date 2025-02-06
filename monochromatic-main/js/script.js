$(document).ready(function() {
    // LOADING SCREEN ANIMATION
    setTimeout(() => {
        $(".loader").fadeOut(1000);
    }, 2000);

    // MANIFESTO TEXT FADE IN
    setTimeout(() => {
        $(".manifesto-title, .manifesto-text").addClass("visible");
    }, 2500);

    // SCROLL ANIMATIONS
    $(window).on("scroll", function() {
        $(".fade-in").each(function() {
            let position = $(this).offset().top;
            let scrollTop = $(window).scrollTop();
            let windowHeight = $(window).height();
            if (position < scrollTop + windowHeight - 100) {
                $(this).addClass("visible");
            }
        });
    });

    // GLITCH EFFECT ON HOVER
    $(".pursuit").hover(function() {
        let text = $(this).find("h3");
        text.addClass("glitch");
        setTimeout(() => text.removeClass("glitch"), 500);
    });

    // HORIZONTAL SCROLLING EFFECT
    let isDown = false;
    let startX;
    let scrollLeft;
    const slider = document.querySelector(".chronicle-container");

    slider.addEventListener("mousedown", (e) => {
        isDown = true;
        slider.classList.add("active");
        startX = e.pageX - slider.offsetLeft;
        scrollLeft = slider.scrollLeft;
    });

    slider.addEventListener("mouseleave", () => {
        isDown = false;
        slider.classList.remove("active");
    });

    slider.addEventListener("mouseup", () => {
        isDown = false;
        slider.classList.remove("active");
    });

    slider.addEventListener("mousemove", (e) => {
        if (!isDown) return;
        e.preventDefault();
        const x = e.pageX - slider.offsetLeft;
        const walk = (x - startX) * 2; // Scroll speed
        slider.scrollLeft = scrollLeft - walk;
    });

    // AJAX PROJECT LOADING
    $(".work-link").click(function(e) {
        e.preventDefault();
        let project = $(this).data("project");

        $.ajax({
            url: `projects/${project}.html`,
            success: function(data) {
                $(".project-details").html(data);
                $("#project-overlay").addClass("active");
            },
        });
    });

    // CLOSE PROJECT OVERLAY
    $(".close-btn").click(function() {
        $("#project-overlay").removeClass("active");
    });

    // CUSTOM CURSOR MOVEMENT
    $(document).mousemove(function(e) {
        $(".custom-cursor").css({
            left: e.pageX,
            top: e.pageY
        });
    });

    // FORM SUBMISSION
    $("#contact-form").submit(function(e) {
        e.preventDefault();
        alert("Message sent successfully!");
        $(this)[0].reset();
    });

   // Smooth Scroll with Fixed Navbar Offset
   $(".nav-links a, .footer-links a").click(function(e) {
    // e.preventDefault();

    let target = $(this).attr("href");
    let navbarHeight = $("#navbar").height(); // Get navbar height dynamically

    $("html, body").animate(
        {
            scrollTop: $(target).offset().top - navbarHeight - 10 // Adjusted for spacing
        },
        450,
    );
    return false;
});

    // Sticky Navbar Effect
    $(window).on("scroll", function() {
        if ($(window).scrollTop() > 50) {
            $("#navbar").addClass("scrolled");
        } else {
            $("#navbar").removeClass("scrolled");
        }
    });
});

document.addEventListener("DOMContentLoaded", function () {
    const lazyImages = document.querySelectorAll("img");

    const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                const img = entry.target;
                img.src = img.dataset.src;
                observer.unobserve(img);
            }
        });
    });

    lazyImages.forEach((img) => {
        observer.observe(img);
    });
});
