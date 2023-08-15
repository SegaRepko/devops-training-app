from flask import Flask
from flask import Flask, render_template


app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, DevOps Training!"
tasks = []

@app.route('/add/<task>')
def add_task(task):
    tasks.append(task)
    return "Task added: " + task

@app.route('/delete/<task>')
def delete_task(task):
    if task in tasks:
        tasks.remove(task)
        return "Task deleted: " + task
    else:
        return "Task not found"

@app.route('/tasks')
def view_tasks():
    return render_template('tasks.html', tasks=tasks)

if __name__ == '__main__':
    app.run(host='0.0.0.0')
