from flask import Flask, render_template, request

app = Flask(__name__)
app.secret_key = 'TheSecretIngredientToTheSecretIngredientSoup'

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/input')
def input():
    return render_template('input.html')

@app.route('/input', methods=['POST'])
def input_post():
    text = request.form['text']
    print(text)
    return 'Process Complete'

app.run(debug=True)
