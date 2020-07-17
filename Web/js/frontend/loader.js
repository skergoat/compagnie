

	$('.burger-container').hide();
	$('body').prepend('<div class="preshow-wrap"><div class="percentage" id="precent"></div><div class="shower"><div class="trackbar"><div class="showbar"></div></div><div class="glow"></div></div></div>');

	var width = 100,
	perfData = window.performance.timing, // The PerformanceTiming interface represents timing-related performance information for the given page.
	EstimatedTime = -(perfData.loadEventEnd - perfData.navigationStart),
	time = parseInt((EstimatedTime/1000)%60)*100;
	// Loadbar Animation
	$(".showbar").animate({
	  width: width + "%"
	}, time);

	// Loadbar Glow Animation
	$(".glow").animate({
	  width: width + "%"
	}, time);

	// Percentage Increment Animation
	var PercentageID = $("#precent"),
			start = 0,
			end = 100,
			durataion = time;
			animateValue(PercentageID, start, end, durataion);
			
	function animateValue(id, start, end, duration) {
	  
		var range = end - start,
	      current = start,
	      increment = end > start? 1 : -1,
	      stepTime = Math.abs(Math.floor(durataion / range)),
	      obj = $(id);

		var timer = setInterval(function() {
			current += increment;
			$(obj).text(current + "%");
	      //obj.innerHTML = current;
			if (current == end) {
				clearInterval(timer);	
			}
		}, stepTime);
	}

	$(window).on('load', function(){

		setTimeout(removeLoader, time); //wait for page load PLUS two seconds.

	});

	function removeLoader(){
	  
		$( ".preshow-wrap" ).fadeOut(500); 
		$('.burger-container').show(500);

	}
