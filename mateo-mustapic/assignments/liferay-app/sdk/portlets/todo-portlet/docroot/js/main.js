AUI.add(
	'todo',
	function(A) {
		var EVENT_CLICK = 'click';

		var TPL_FINISHED = '<li>' +
				'{taskFinished}' +
				'<button>' +
				'<i class="icon-trash"></i>' +
				'</button>' +
			'</li>';

		var TPL_TASK = '<li>' +
				'{task}' +
				' ' +
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
						new A.CharCounter(
							{
								input: '.input-item',

								counter: '.counter',

								maxLength: 35
							});

						var instance = this;

						var todoList = instance.one('.task-container ul');

						var finishedTask = instance.one('.finished-task');

						var remainingDiv = instance.one('.remaining-tasks-count');

						remainingDiv.html('1');

						if (todoList) {
							todoList.delegate(
								EVENT_CLICK,
								function(event) {
									var currentTarget = event.currentTarget;

									var listItem = currentTarget.ancestor('li');

									listItem.remove();

									if (finishedTask) {

										var finishedHtml = A.Lang.sub(
											TPL_FINISHED,
											{
												taskFinished: 'Task finished!'
											}
										);

										finishedTask.append(finishedHtml);

										var taskList = A.one('task-list');

										var taskListLi = taskList.all('li');

										var remainingCount = taskListLi.size();

										if (remainingCount) {
											remainingDiv.html(remainingCount);
										}
										else if (remainingCount === 0) {
											remainingDiv.html('0');
										}
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

							var taskList = A.one('task-list');

							var taskListLi = taskList.all('li');

							var remainingCount = taskListLi.size();

							var remainingDiv = instance.one('.remaining-tasks-count');

							if (remainingCount) {
								remainingDiv.html(remainingCount);
							}
							else if (remainingCount === 0) {
								remainingDiv.html('0');
							}
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