AUI.add(
	'todo',
	function(A) {
		var counterVariable = new A.CharCounter(
			{

			input: '.input-item',

			counter: '.counter',

			maxLength: 40
		});

		var EVENT_CLICK = 'click';

		var TASK_FINISHED = '<div class="finished-task">' +
			'Task finished!' +
			'</div>';

		var TPL_TASK = '<li>' +
				'{task}' +
				'<button class="delete-task">' +
					'<i class="icon-remove"></i>' +
				'</button>' +
			'</li>';

		var Todo = A.Component.create(
			{
				AUGMENTS: [Liferay.PortletBase],

				EXTENDS: A.Base,

				NAME: 'todo',

				prototype: {
					initializer: function(config) {
						var instance = this;

						var todoList = instance.one('.task-container ul');

						var finishedTask = instance.one('.finished-task').hide();

						if (todoList) {
							todoList.delegate(
								EVENT_CLICK,
								function(event) {
									var currentTarget = event.currentTarget;

									var listItem = currentTarget.ancestor('li');

									listItem.remove();

									finishedTask.show();
									finishedTask.append(TASK_FINISHED);
								},
								'button'
							);

							instance._todoList = todoList;
						}

						var addButton = instance.byId('add');

						if (addButton) {
							addButton.on(EVENT_CLICK, A.bind('_appendTodoList', instance));
						}

						var taskInput = instance.byId('task');

						if (taskInput) {
							taskInput.on('key', A.bind('_appendTodoList', instance), 'enter');

							instance._taskInput = taskInput;
						}
					},

					_appendTodoList: function(event) {
						var instance = this;

						var taskInput = instance._taskInput;
						var todoList = instance._todoList;

						if (taskInput && todoList) {
							var taskHtml = A.Lang.sub(
								TPL_TASK,
								{
									task: taskInput.val()
								}
							);

							todoList.append(taskHtml);

							taskInput.val('');
						}
					}
				}
			}
		);

		Liferay.Portlet.Todo = Todo;
	},

	'',
	{
		requires: ['aui-char-counter', 'event-key', 'node-event-delegate']
	}
);