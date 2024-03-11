import webbrowser

from locust import HttpUser, TaskSet, task, between, SequentialTaskSet


class RequestLimitedTaskSet(SequentialTaskSet):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.current_request_count = 0

    def check_and_execute_task(self):
        if self.current_request_count >= self.user.max_requests:
            self.user.environment.runner.quit()  # Stop the test if max_requests reached
            return
        self.current_request_count += 1
        # Actual task logic here
        res = self.client.post("http://192.168.137.8:6799/bdesalestracker-api/auth/login",
                               json={"userMail": "jyothilakshmimv@datatemplate.com", "password": "Def@123"})
        print(res.status_code)
        print(res.text)
        print("Request passed")

    # print("Request passed")


class MyTaskSet(RequestLimitedTaskSet):
    @task
    def my_task(self):
        self.check_and_execute_task()


class MyUser(HttpUser):
    wait_time = between(1, 3)
    tasks = [MyTaskSet]
    host = "http://192.168.137.8:6799"
    max_requests = 10

    def on_start(self):
        pass


webbrowser.open("http://localhost:8089", new=2)
