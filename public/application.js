$(document).ready(function() {
	explainerListener();
	displayLink();
	moarOptions();
});


function explainerListener() {
	$("form").on("focus", "input", function(e){
		$(this).next().slideDown();
	});

	$("form").on("focusout", "input", function(e){
		$(this).next().slideUp();
	});
}

function displayLink() {
	$("form").submit(function(e){
		e.preventDefault();
		$.post("/make_url", $("form").serialize(), function(data){
			$(".link p").html(data);
			$(".link").slideDown();
		});
	});
}

function moarOptions() {
	$(".advanced-options-toggle").on("click", function(e){
		if ($($(this).children()[0]).attr("class") === "arrow-right") {
			$($(this).children()[0]).removeClass("arrow-right").addClass("arrow-down");
			$(".advanced-options").slideDown();
		} else {
			$($(this).children()[0]).removeClass("arrow-down").addClass("arrow-right");
			$(".advanced-options").slideUp();
		}
	});
}