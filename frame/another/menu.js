
function showUpSubMenu(targetDiv) {
	var srcElement = event.srcElement;
	targetDiv.style.left = srcElement.offsetLeft;
	targetDiv.style.top = srcElement.offsetTop + srcElement.offsetHeight;
}
function hideSubMenu(targetDiv) {
	var srcElement = event.srcElement;
	if (event.toElement !== targetDiv && targetDiv.contains(event.toElement) === false) {
		targetDiv.style.left = -10000;
	}
}
