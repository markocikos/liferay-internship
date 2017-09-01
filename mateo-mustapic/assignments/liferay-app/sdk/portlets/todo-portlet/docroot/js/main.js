AUI.add(
	'todo',
	function(A) {
		var EVENT_CLICK = 'click';

		var TPL_FAILURE_MESSAGE = '<div class="alert alert-error">' +
				'{warningMessage} ' +
			'</div>';

		var TPL_FINISHED_TASK = '<li>' +
				'{taskFinished}' +
				'<button>' +
					'<i class="icon-trash"></i>' +
				'</button>' +
			'</li>';

		var TPL_SUCCESS_MESSAGE = '<div class="alert alert-success">' +
				'{successMessage}' +
			'</div>';

		var TPL_TASK = '<li>' +
				'{taskContent} ' +
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
							}
						);

						var remainingDiv = instance.byId('remaining-tasks-count');

						instance._remainingDiv = remainingDiv;

						var successMessage = config.successMessage;

						instance._successMessage = successMessage;

						var warningMessage = config.warningMessage;

						instance._warningMessage = warningMessage;

						var emptyTaskHistory = instance.byId('empty-task-history');
						var finishedTask = instance.byId('finished-task');
						var taskHistory = instance.byId('history-list');
						var todoList = instance.byId('todo-list');

						if (todoList) {
							todoList.delegate(
								EVENT_CLICK,
								function(event) {
									var currentTarget = event.currentTarget;

									var listItem = currentTarget.ancestor('li');

									listItem.remove();

									if (finishedTask) {
										var taskFinished = config.taskFinished;

										instance._taskFinished = taskFinished;

										var finishedHtml = A.Lang.sub(
											TPL_FINISHED_TASK,
											{
												taskFinished: instance._taskFinished
											}
										);

										finishedTask.append(finishedHtml);

										instance._updateTaskCounts();

										var taskListItems = todoList.all('li');

										if (emptyTaskHistory && taskHistory && taskListItems) {
											emptyTaskHistory.hide();

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
						}

						var addButton = instance.byId('add');

						if (addButton) {
							addButton.on(EVENT_CLICK, A.bind('_appendTodoList', instance));
						}

						var taskInput = instance.byId('task-input');

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
									taskContent: taskInput.val()
								}
							);

							todoList.append(taskHtml);

							taskInput.val('');

							instance._updateTaskCounts();

							var taskForm = instance.byId('taskForm');

							var resourceURL = taskForm.attr('action');

							var taskInputValue = A.one('#<portlet:namespace />task-input');

							if (resourceURL) {
								A.io.request(
									resourceURL,
									{
										method: 'post',

										data: {
											taskInputValue: taskInputValue
										},

										form: {
											id: taskForm
										},

										on: {
											failure: function() {
												alert(this.get('responseData'));

												var failureMessage = instance.byId('request-failure');

												var failureHtml = A.Lang.sub(
														TPL_FAILURE_MESSAGE,
														{
															warningMessage: instance._warningMessage
														}
												);

												failureMessage.html(failureHtml);
											},

											success: function() {
												var successMessage = instance.byId('request-success');

												var successHtml = A.Lang.sub(
														TPL_SUCCESS_MESSAGE,
														{
															successMessage: instance._successMessage
														}
												);

												successMessage.html(successHtml);
											}
										}
									}
								);
							}
						}
					},

					_updateTaskCounts: function() {
						var instance = this;

						var remainingDiv = instance._remainingDiv;
						var todoList = instance._todoList;

						if (remainingDiv && todoList) {
							var taskListItems = todoList.all('li');

							remainingDiv.html(taskListItems.size());
						}
					}
				}
			}
		);

		Liferay.Portlet.Todo = Todo;
	},

	'',
	{
		requires: ['aui-char-counter', 'aui-io-request', 'event-key', 'liferay-portlet-base', 'node-event-delegate']
	}
);