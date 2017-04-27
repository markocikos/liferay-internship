AUI().add(
	'addItem',
	function (A) {

	/* Adding Close button */
	var i;
	var myNodeList = document.getElementsByClassName('taskUl')[0].getElementsByTagName('LI');

	for (i = 0; i < myNodeList.length; i++) {
		var span = document.createElement('SPAN');
		var txt = document.createTextNode('\u00D7');

		span.className = 'close';
		span.appendChild(txt);
		myNodeList[i].appendChild(span);
	}

	/* Adding click to close button for removing listed items */
	var close = document.getElementsByClassName('close');
	var j;

	for (j = 0; j < close.length; j++) {
		close[j].onclick = function () {
			var div = this.parentElement;
			div.style.display = 'none';
		};
	}
});

AUI().use(
	'aui-modal',
	'addItem',
	function(A) {
		/* Modal window */
		var modal = new A.Modal(
			{
				bodyContent: 'In this portlet you can add new and delete finished tasks',
				centered: true,
				headerContent: '<h3>TO DO LIST <span class="icon-check" aria-hidden="true"></span></h3>',
				modal: true,
				render: '#modal',
				width: 400
			}
		).render();
	}
);
