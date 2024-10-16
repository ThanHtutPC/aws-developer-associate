from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html', page='home')

@app.route('/about/')
def about():
    return render_template('index.html', page='about')

@app.route('/content/')
def content():
    return render_template('index.html', page='contentPage')

if __name__ == '__main__':
    app.run(debug=True)
