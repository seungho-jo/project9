/**
 * 
 */
/*
//slide-wrap
var slideWrapper = document.getElementById('slide_img');
//current slideIndexition
var slideIndex = 0;
//items
var slides = document.querySelectorAll('#slide_img ul li');
//number of slides
var totalSlides = slides.length;
//get the slide width
var sliderWidth = slideWrapper.clientWidth;
//set width of items
slides.forEach(function (element) {
    element.style.width = sliderWidth + 'px';
})
//set width to be 'x' times the number of slides
var slider = document.querySelector('#slider');
slider.style.width = sliderWidth * totalSlides + 'px';

// next, prev
var nextBtn = document.getElementById('next');
var prevBtn = document.getElementById('previous');
nextBtn.addEventListener('click', function () {
    plusSlides(1);
});
prevBtn.addEventListener('click', function () {
    plusSlides(-1);
});

// hover
slideWrapper.addEventListener('mouseover', function () {
    this.classList.add('active');
    clearInterval(autoSlider);
});
slideWrapper.addEventListener('mouseleave', function () {
    this.classList.remove('active');
    autoSlider = setInterval(function () {
        plusSlides(1);
    }, 3000);
});


function plusSlides(n) {
    showSlides(slideIndex += n);
}

function currentSlides(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    slideIndex = n;
    if (slideIndex == -1) {
        slideIndex = totalSlides - 1;
    } else if (slideIndex === totalSlides) {
        slideIndex = 0;
    }

    slider.style.left = -(sliderWidth * slideIndex) + 'px';
    pagination();
}
//pagination
slides.forEach(function () {
    var li = document.createElement('li');
    document.querySelector('#slider-pagination-wrap ul').appendChild(li);
})

function pagination() {
    var dots = document.querySelectorAll('#slider-pagination-wrap ul li');
    dots.forEach(function (element) {
        element.classList.remove('active');
    });
    dots[slideIndex].classList.add('active');
}

pagination();
var autoSlider = setInterval(function () {
    plusSlides(1);
}, 3000);
*/
$("#application").click(function(){
	$("#frm1").submit();
})
$("#c_like").click(function(){
	var xhr = new XMLHttpRequest();
	var snd = $("form").serialize();
	xhr.open("post","bkinsert.do",true);
	xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	xhr.send(snd);
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4&&xhr.status==200){
			var mark = xhr.responseText;
			if(mark==1){
				$("#c_like").css("background","#6482FF");
				$("i").css("color","white");
			}else if(mark==2){
				$("#c_like").css("background","white");
				$("i").css("color","#6482FF");
			}
		}
	}
})