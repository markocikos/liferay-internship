AUI().use(
	'aui-char-counter',
	function(A) {
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
	}
);