var bg = [

"/scene1.jpg",
"/scene2.jpg",
"/scene3.jpg",
"/scene4.jpg",
"/scene5.jpg",

];

var i=0;

function changebg(){
	$("#picturebox").css("background-image", function(){
		if(i>=5){
			i=0;
		}
		return 'url(' + bg[i++] + ')';
	})
}


$(document).ready(function(){
	//changebg();
	//setInterval(changebg, 3000);
});