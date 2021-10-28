from flask import Flask

app = Flask(__name__)

@app.route('/')
def dummyGet():
    return "Congrats! You've received response from dummy!"

if __name__ == "__main__":
    app.run()
