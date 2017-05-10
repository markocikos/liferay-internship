AUI().add(
	'search-music',
	function(A) {
		var SearchMusic = A.Component.create(
			{
				AUGMENTS: [Liferay.PortletBase],

				EXTENDS: A.Base,

				NAME: 'search-music',

				prototype: {
					initializer: function(config) {
						var instance = this;

						var button = instance.byId('search');

						if (button) {
							button.on('click', instance.ajaxCall);
						}

						var input = instance.byId('music');

						if (input) {
							input.on('key', instance.ajaxCall, 'enter');
						}
					},

					ajaxCall: function() {
						var resourceURL = A.one('input[type=button]').attr('data-resourceURL');

						var music = A.one('input[type=text]').val();

						if (music && resourceURL) {
							A.io.request(
								resourceURL,
								{
									data: {
										input: music
									},
									method: 'post'
								}
							);
						}
					}
				}
			}
		);

		Liferay.Portlet.SearchMusic = SearchMusic;
	},

	'',
	{
		requires: ['aui-event', 'aui-io-request', 'aui-node', 'event-key', 'liferay-portlet-base']
	}
);