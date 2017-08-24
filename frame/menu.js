function subMenuRollover(obj) {
	'use strict';
}

function showUpSubMenu(targetDiv) {
	'use strict';
	var srcElement = event.srcElement;
	targetDiv.style.left = srcElement.offsetLeft;
	targetDiv.style.top = srcElement.offsetTop + srcElement.height;
}