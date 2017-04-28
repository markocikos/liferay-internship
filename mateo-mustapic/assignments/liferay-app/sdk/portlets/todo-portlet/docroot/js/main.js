/* Close button module */
AUI.add(
	'addCloseButton',
	function(A) {
		var addCloseButton = A.Component.create(
			{
				AUGMENTS: [Liferay.PortletBase],

				EXTENDS: A.Base,

				NAME: 'addClose',

				prototype: {
					initializer: function(config) {
						var instance = this;

						console.log('test');
						/* Adding Close button */
						var i;
						var taskNode = document.getElementsByClassName('taskUl')[0].getElementsByTagName('LI');

						for (i = 0; i < taskNode.length; i++) {
							var span = document.createElement('SPAN');
							var txt = document.createTextNode('\u00D7');

							span.className = 'close';
							span.appendChild(txt);
							taskNode[i].appendChild(span);
						}

						/* Adding click to close button for removing listed items */
						var close = document.getElementsByClassName('close');
						var j;

						for (j = 0; j < close.length; j++) {
							close[j].onclick = function() {
								var div = this.parentElement;

								div.style.display = 'none';
							};
						}
					}
				}
			}
		);

		Liferay.Portlet.addCloseButton = addCloseButton;
	},
	'',
	{
		requires: ['aui-event', 'aui-node', 'liferay-portlet-base']
	}
);