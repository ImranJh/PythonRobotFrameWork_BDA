import logging
import webbrowser

from locust import HttpUser, task, constant, SequentialTaskSet
from readtestdata import csvRead


class MyScript(SequentialTaskSet):
    @task
    def place_order(self):
        test_data = csvRead("Testdata\\customer.csv").read()
        print(test_data)

        data = {
            "custname": test_data['name'],
            "custtel": test_data['phone'],
            "custemail": test_data['email'],
            "size": test_data['size'],
            "topping": test_data['topping'],
            "delivery": test_data['time'],
            "comments": test_data['instructions']

        }
        name = "order for " + test_data['name']
        with self.client.post("/post", catch_response=True, name=name, data=data) as response:
            if response.status_code == 200 and test_data['name'] in response.text:
                response.success()
                logging.info("success")
            else:
                response.failure("Failure in processing the order")
                logging.error("Unsuccessful request")


class MyLoadTest(HttpUser):
    host = "https://httpbin.org"
    wait_time = constant(1)
    tasks = [MyScript]


webbrowser.open("http://localhost:8089")
