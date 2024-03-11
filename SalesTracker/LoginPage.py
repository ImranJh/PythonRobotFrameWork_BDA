import webbrowser

from locust import HttpUser, task, between


class MyUser(HttpUser):
    wait_time = between(1, 2)
    host = "http://192.168.137.8:6799/"

    @task
    def login(self):
        res = self.client.post("http://192.168.137.8:6799/bdesalestracker-api/auth/login",
                               json={"userMail": "jyothilakshmimv@datatemplate.com", "password": "Def@123"})
        print("Response status code:", res.status_code)
        if res.status_code == 200:
            print("Login successful")
        else:
            print("Login Failed")

    # @task
    # def homepage(self):
    #     self.client.post("http://192.168.137.8:6799/bdesalestracker-api/auth/login",
    #                      json={"userMail": "jyothilakshmimv@datatemplate.com", "password": "Def@123"})
    #
    #     res1 = self.client.get("http://192.168.137.8:6799/bdesalestracker-api/leads/get-organizations ")
    #     print("Get organization Response status code:", res1.status_code)
    #     if res1.status_code == 200:
    #         print("Success")
    #     else:
    #         print("Unsuccessful")


#webbrowser.open("http://localhost:8089", new=2)
