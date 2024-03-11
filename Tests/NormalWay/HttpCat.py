from locust import constant,task,TaskSet,HttpUser


class MyHttpCat(TaskSet):

    @task
    def get_StatusCode(self):
        self.client.get("/200")
        print("Status of 200")


class MyLoadTest(HttpUser):
    host = "https://http.cat"
    tasks = [MyHttpCat]
    wait_time = constant(1)
