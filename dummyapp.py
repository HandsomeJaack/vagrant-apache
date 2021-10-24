import flask import Flask, json

app = Flask(__name__)

@app.route('/dummy', methods=['Get'])
def dummyGet():
    return json.dumps({
        "success": True,
        "message": "Congrats! You've receved response from dummy!"
    }), 200

if __name__ == "__main__":
    app.run()
