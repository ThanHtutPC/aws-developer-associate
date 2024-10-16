from flask import Flask, render_template_string

# Initialize Flask app
app = Flask(__name__)

# Home page route
@app.route('/')
def home():
    return render_template_string("""
        <h1>Home Page</h1>
        <p>Welcome to the Home Page!</p>
        <nav>
            <a href="/">Home</a> | 
            <a href="/about">About</a> | 
            <a href="/content">Content</a>
        </nav>
    """)

# About page route
@app.route('/about')
def about():
    return render_template_string("""
        <h1>About Page</h1>
        <p>This is the About Page. Learn more about us here!</p>
        <nav>
            <a href="/">Home</a> | 
            <a href="/about">About</a> | 
            <a href="/content">Content</a>
        </nav>
    """)

# Content page route
@app.route('/content')
def content():
    return render_template_string("""
        <h1>Content Page</h1>
        <p>Here is some awesome content!</p>
        <nav>
            <a href="/">Home</a> | 
            <a href="/about">About</a> | 
            <a href="/content">Content</a>
        </nav>
    """)

# Run the app
if __name__ == '__main__':
    app.run(debug=True)
