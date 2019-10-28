# How to schedule the reminders on Windows 10

Take note of the path where you copied the necessary files.
Open Windows Task Scheduler.
Click on `Create Task` in the right panel.
In the `General` tab, give the task a meaningful name, such as `Daily Task Reminder`. Also setup options such as `Run only when user is logged on` if desired.
In the `Triggers` tab, set the times when the reminders should pop up. You can set multiple triggers for a single task.
In the `Actions` tab, click `New`. Leave `Start a program` selected, and type `Powershell.exe` in the `Program/script` field. Add the following to the `Add arguments` field:

        -ExecutionPolicy Bypass fullpathto\current-task.ps1
In the `Settings` tab, leave everything on default, except select

        Run task as soon as possible after a scheduled start is missed
