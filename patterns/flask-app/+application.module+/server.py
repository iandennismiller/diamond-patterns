import time
import json
import flask
import logging
from flask_login import LoginManager, login_user, logout_user, current_user, login_required
from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField, validators, DateTimeField

from . import db
from .user import User

log_filename = '../var/log/server.log'
print("logging to {}".format(log_filename))
logging.basicConfig(
    format='%(asctime)s %(module)-16s %(levelname)-8s %(message)s',
    filename=log_filename,
    level=logging.INFO,
    datefmt='%Y-%m-%d %H:%M:%S'
)
logging.info("Server: Start")

# only show warnings from embedded server
# logging.getLogger('werkzeug').setLevel(logging.WARN)

app = flask.Flask(__name__)
app.secret_key = b'_5#y3L"F4Q8z\n\xec]z'

login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = ".login"

class LoginForm(FlaskForm):
    username = StringField('Username',
        # [validators.Length(min=7, max=7)],
        # render_kw={"placeholder": "123-456"}
    )
    password = PasswordField('Password')
    submit_button = SubmitField("Login")


@login_manager.user_loader
def load_user(user_id):
    return User(user_id)

###
# Authentication

@app.route('/login', methods=['GET', 'POST'])
def login():
    if current_user and current_user.is_authenticated:
        flask.flash('Already logged in.')
        return flask.redirect(flask.url_for('index'))

    next_page = flask.request.args.get('next', '')

    form = LoginForm()
    if form.validate_on_submit():
        # convert access code to user id
        user = user.get_by_code(form.access_code.data)

        if user is None:
            flask.flash("Access code '{}' was not found.".format(form.access_code.data))
            return flask.render_template('login.html.j2', form=form, next_page=next_page)

        if user:
            login_user(user)
            logging.info("{user} logs in".format(user=current_user))
            flask.flash('Logged in successfully.')

            # if the user has never-logged-in, then change it
            user.change_state_from('never-logged-in')

            if next_page is not "" and next_page not in ['/scheduler']:
                return flask.render_template('login.html.j2', form=form)

            return flask.redirect(next_page or flask.url_for('index'))

    return flask.render_template('login.html.j2', form=form, next_page=next_page)

@app.route('/logout', methods=['GET'])
@login_required
def logout():
    if current_user.is_authenticated:
        logging.info("{user} logs out".format(user=current_user))
        logout_user()
        flask.flash('You have successfully logged out.')
    return flask.redirect(flask.url_for('index'))

###
# Index

@app.route('/')
def index():
    return flask.render_template('index.html.j2')
