from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy
#import sqlalchemy

app = Flask(__name__)
app.secret_key = 'TheSecretIngredientToTheSecretIngredientSoup'
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///project.sqlite3'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

class item_vm(db.Model):
    item_name = db.Column(db.String(100), primary_key=True)
    vm_no = db.Column(db.Integer, primary_key=True)
    price = db.Column(db.Float)

    def __init__(self, item_name, vm_no, price):
        self.item_name = item_name
        self.vm_no = vm_no
        self.price = price

    def __repr__(self):
        return self.item_name + ' ' + str(self.vm_no)


class vm(db.Model):
    vm_no = db.Column(db.Integer, primary_key=True)
    change_amt = db.Column(db.Float)

    def __init__(self, vm_no, change_amt):
        self.vm_no = vm_no
        self.change_amt = change_amt
        

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/option1')
def option1():
    return item_vm.query.one().__repr__()
    # return render_template('option1.html')

@app.route('/option2')
def option2():
    return render_template('option2.html')

@app.route('/option3')
def option3():
    return render_template('option3.html')

@app.route('/option4')
def option4():
    return render_template('option4.html')

@app.route('/option5')
def option5():
    return """
    <div style="font-size:23px">
    Last Restock by "Min Distributors" is Order #2<br>
    <button style="font-size:23px">Back to Main Menu</button>
    </div>
"""

@app.route('/input', methods=['POST'])
def input_post():
    text = request.form['text']
    print(text)
    return 'Process Complete'

if __name__ == "__main__":
    db.create_all()
    records = [
        vm(1, 3.00),
        vm(2, 3.00),
        vm(3, 3.00),
        vm(4, 3.00),
        vm(5, 3.00),
        ]
    for record in records:
        db.session.add(record)
    db.session.commit()
    app.run(debug=True)


