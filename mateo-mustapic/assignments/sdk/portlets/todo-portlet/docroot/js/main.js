AUI().use(
	'aui-node',
	'aui-modal',
	'aui-char-counter',
	function(A) {

		/* Adding Close button */
		var i;
		var myNodeList = document.getElementsByClassName('myUL')[0].getElementsByTagName('LI');

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
			close[j].onclick = function() {
				var div = this.parentElement;

				div.style.display = 'none';
				alert('Congratulations on finishing the task!');
				};
		}

		/* Create a new list item when clicking on the "Add" button*/
		function addItem() {
			var inputValue = document.getElementsByClassName('myInput')[0].value;
			var li = document.createElement('li');
			var t = document.createTextNode(inputValue);

			li.appendChild(t);
			if (inputValue === '') {
				alert('write something');
			}
			else if (inputValue) {
				document.getElementsByClassName('myUL')[0].appendChild(li);
			}
			document.getElementsByClassName('myInput')[0].value = '';

			/* Appending close button to li */
			var span = document.createElement('SPAN');
			var txt = document.createTextNode('\u00D7');

			span.className = 'close';
			span.appendChild(txt);
			li.appendChild(span);

			for (i = 0; i < close.length; i++) {
				close[i].onclick = function() {
					var div = this.parentElement;

					div.style.display = 'none';
					alert('Congratulations on finishing the task!');

				};
			}
		}

		A.all('.addItem').on('click', addItem);

		/* Modal window */
		var modal = new A.Modal(
			{
				bodyContent: 'In this portlet you can add or delete your tasks',
				centered: true,
				headerContent: '<h3>TO DO LIST <span class="icon-check" aria-hidden="true"></span></h3>',
				modal: true,
				render: '#modal',
				width: 400
			}
			).render();

		/* Input character count */
		new A.CharCounter(
			{
				counter: '.myCounter',
				input: '.myInput',
				maxLength: 40,
				on: {
						maxLength: function(event) {
						alert('The max length limit was reached');
					}
				}
			}
		);

		/* Appending table header */
		var cell1 = document.createTextNode('ID');
		var cell2 = document.createTextNode('Task');
		var cell3 = document.createTextNode('Description');
		var x = document.createElement('TH');
		var y = document.createElement('TH');
		var z = document.createElement('TH');

		x.appendChild(cell1);
		y.appendChild(cell2);
		z.appendChild(cell3);
		document.getElementsByClassName('tHeader')[0].appendChild(x);
		document.getElementsByClassName('tHeader')[0].appendChild(y);
		document.getElementsByClassName('tHeader')[0].appendChild(z);

		/* Function for creating table of task history */
		function addList() {
			var buffer = [];

			/* Data for table */
			for (i = 0; i < myNodeList.length; i++) {

				var desc = myNodeList[i].textContent;
				var len = i + 1;
				var len2 = 'Task ' + (i + 1);
				var row = [];

				row.push('<tr>');
				row.push('<td>' + len + '</td>');
				row.push('<td>' + len2 + '</td>');
				row.push('<td>' + desc + '</td>');
				row.push('<tr/>');

				buffer.push(row.join(''));

				/* Change button text after initial data is added */
				document.getElementsByClassName('addList')[0].innerHTML = 'UPDATE TABLE';
			}

			A.all('table tbody').html(buffer.join(''));

			/* Count of tasks */
			var ul = document.getElementsByClassName('myUL')[0].getElementsByTagName('li').length;

			document.getElementsByClassName('total')[0].innerHTML = 'Total number of tasks in task history: ' + '<b>' + ul + '</b>';
		}
		A.all('.addList').on('click', addList);
	}
);