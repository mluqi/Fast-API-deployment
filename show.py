import requests

url ="http://127.0.0.1:8000/"

item_data ={
    "age" = 10,
    "level" = 1,
    "user_id" = 91,
    "gender" = "Perempuan"
}

response = requests.post(url, json=item_data)
print(response.json())