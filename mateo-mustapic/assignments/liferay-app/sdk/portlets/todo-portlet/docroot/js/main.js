AUI.add(
	'todo',
	function(A) {
		var EVENT_CLICK = 'click';

		var TPL_FINISHED = '<li>{taskFinished} ' +
								'<button>' +
									'<i class="icon-trash"></i>' +
								'</button>' +
						'</li>';

		var TPL_HIST = '<tr>' +
						'{task}' +
						' {time}' +
						'</tr>';

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

						var todoList = instance.one('.task-container ul');

						var finishedTask = A.one('.finished-task');

						var remainingDiv = instance.one('.remaining-tasks-count');

						remainingDiv.html('1');

						var taskHistory = instance.one('.task-history table');

						taskHistory.hide();

						var taskInput = instance.byId('task');

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
												taskFinished: Liferay.Language.get('task-finished')
											}
										);

										finishedTask.append(finishedHtml);

										var taskList = instance.one('.task-list');

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

							var taskHist = A.Lang.sub(
								TPL_HIST,
								{
									task: taskInput.val()
								}
							);

							todoList.append(taskHtml);

							taskInput.val('');

							var taskList = instance.one('.task-list');

							var taskListLi = taskList.all('li');

							var remainingCount = taskListLi.size();

							var remainingDiv = instance.one('.remaining-tasks-count');

							if (remainingCount) {
								remainingDiv.html(remainingCount);
							}
							else if (remainingCount === 0) {
								remainingDiv.html('0');
							}

							var taskHistory = instance.one('.task-history table');

							var td1 = taskHistory.one('.td-1');

							var td2 = taskHistory.one('.td-2');

							var countTasks = ((td1.all('tr').size()) + 1);

							var emptyTaskHistory = A.one('.empty-task-history');

							if (taskListLi.size() > 0) {

								emptyTaskHistory.hide();

								taskHistory.show();
							}

							td1.append('<tr>' + countTasks + '</tr>');

							td2.appendChild(taskHist);
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