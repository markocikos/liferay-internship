AUI.add(
	'todo',
	function(A) {
		new A.CharCounter(
			{

				input: '.input-item',

				counter: '.counter',

				maxLength: 40
		});

		var EVENT_CLICK = 'click';

		var TPL_FINISHED = '<li>' +
			'{taskFinished}' +
			'<button>' +
			'<i class="icon-trash"></i>' +
			'</button>' +
			'</li>';

		var TPL_TASK = '<li>' +
			'{task}' +
			'<button class="btn delete-task">' +
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

						var finishedTask = instance.one('.finished-task');

						if (todoList) {
							todoList.delegate(
								EVENT_CLICK,
								function(event) {
									var currentTarget = event.currentTarget;

									var listItem = currentTarget.ancestor('li');

									listItem.remove();

									if (finishedTask) {

										var testHtml = A.Lang.sub(
											TPL_FINISHED,
											{
												taskFinished: 'Task finished!'
											}
										);

										finishedTask.append(testHtml);
									}
								},
								'button'
							);

							instance._todoList = todoList;
						}

						if (finishedTask) {
							finishedTask.delegate(
								EVENT_CLICK,
								function(event) {

									var currentTarget = event.currentTarget;

									var finishedItem = currentTarget.ancestor('li');

									finishedItem.remove();
								},
								'button'
							);

							instance._finishedTask = finishedTask;
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