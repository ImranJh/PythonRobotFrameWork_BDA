from locust import HttpUser, constant, task


class MyReq(HttpUser):

    host= "https://reqres.in"
    wait_time = constant(1)


    @task
    def getUser(self):
       res= self.client.get("/api/users?page=2")
       print(res.text)
       print(res.status_code)
       print(res.headers)

    @task
    def creatUser(self):
        res = self.client.post("/api/users", data= ''' {
        "name": "Shah",
        "job": "SQA"
        }''')
        print(res.text)
        print(res.status_code)
        print(res.headers)


