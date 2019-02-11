function toggle_visibility(id) {
	var e = document.getElementById(id);
	
	if(e.style.display == 'block')
	e.style.display = 'none';

	else
	e.style.display = 'block';
}
	
function home(id) {
	var e = document.getElementById(id);
	
	if(e.style.display == 'none')
	e.style.display = 'none';

	else
	e.style.display = 'none';
}

var vid = document.getElementById("car");
    
function enableLoop() {
        vid.loop = true;
        vid.load();
  }
  
function disableLoop() {
        vid.loop = false;
        vid.load();
  }

	
