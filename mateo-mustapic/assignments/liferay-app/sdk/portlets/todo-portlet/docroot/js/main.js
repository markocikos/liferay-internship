AUI.add(
	'todo',
	function(A) {
		var EVENT_CLICK = 'click';

		var TPL_FINISHED_TASK = '<li> ' +
			'{taskFinished}' +
				'<button>' +
					'<i class="icon-trash"></i>' +
				'</button>' +
			'</li>';

		var TPL_TASK = '<li>{task} ' +
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

						new A.CharCounter(
							{
								counter: '.counter',
								input: '.input-item',
								maxLength: 35
							});

						var todoList = A.one('.task-container ul');

						var finishedTask = A.one('.finished-task');

						var remainingDiv = A.one('.remaining-tasks-count');

						var profileTasksCount = A.one('.profile-tasks-count');

						var taskInput = instance.byId('task');

						var taskList = A.one('.task-list');

						var taskFinished = config.taskFinished;

						instance._taskFinished = taskFinished;

						window.remainingCount = function() {
							var taskListLi = taskList.all('li');

							var remainingCount = taskListLi.size();

							if (remainingCount) {
								remainingDiv.html(remainingCount);

								profileTasksCount.html(remainingCount);
							}
							else if (remainingCount === 0) {
								remainingDiv.html('0');

								profileTasksCount.html('0');
							}
						};

						if (todoList) {
							todoList.delegate(
								EVENT_CLICK,
								function(event) {
									var currentTarget = event.currentTarget;

									var listItem = currentTarget.ancestor('li');

									listItem.remove();

									if (finishedTask) {

										var finishedHtml = A.Lang.sub(
											TPL_FINISHED_TASK,
											{
												taskFinished: instance._taskFinished
											}
										);

										finishedTask.append(finishedHtml);

										remainingCount();

										var taskHistory = A.one('.history-list');

										var emptyTaskHistory = A.one('.empty-task-history');

										var taskListLI = taskList.all('li');

										if (taskListLI) {

											emptyTaskHistory.hide();

											taskHistory.setStyle('visibility', 'visible');

											taskHistory.append(listItem);
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

							remainingCount();
						}
					}
				}
			}
		);

		Liferay.Portlet.Todo = Todo;
	},

	'',
	{
		requires: ['aui-alert', 'aui-char-counter', 'event-key', 'node-event-delegate']
	}
);