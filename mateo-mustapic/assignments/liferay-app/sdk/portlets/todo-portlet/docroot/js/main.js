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