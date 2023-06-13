from fastapi import FastAPI
import tensorflow as tf
from pydantic import BaseModel

app = FastAPI()

# Create a Pydantic model for the POST request
class DataInput(BaseModel):
    age: int
    level: int
    gender: str
    user_id: int

# Load the model
path = "model" 
model = tf.saved_model.load(path)

age_get = tf.constant([18], dtype=tf.int64)
level_get = tf.constant([1], dtype=tf.int64)
user_id_get = tf.constant([14], dtype=tf.int64)
gender_get = tf.constant(["Laki-laki"], dtype=tf.string)

# Pass a user id in, get top predicted movie titles back.
query = {"age": age_get, "gender": gender_get, "level": level_get, "user_id": user_id_get}

@app.get("/")
def hello():
    return {"message": "FastAPI TensorFlow Deployment"}

@app.get("/predict")
def predict():
    scores, titles = model(query)
    titles = titles[0][:3]
    titles = titles.numpy().tolist()
    return {"res": titles}

@app.post("/predict")
def predict(data: DataInput):
    input_data = {
        "age": tf.constant([data.age], dtype=tf.int64),
        "level": tf.constant([data.level], dtype=tf.int64),
        "gender": tf.constant([data.gender], dtype=tf.string),
        "user_id": tf.constant([data.user_id], dtype=tf.int64),
    }
    print(data)

    scores, titles = model(input_data)
    titles = titles[0][:3]
    titles = titles.numpy().tolist()

    return {"res": data}
