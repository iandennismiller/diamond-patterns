import json
import random
import logging
from flask_login import UserMixin

from . import db


class User(UserMixin):
    def __init__(self, id):
        self.data = db.read("users", id)
        self.id = id

    def __repr__(self):
        return "<User: {}>".format(self.id)

    def is_authenticated(self):
        return True

    def is_active(self):
        return True

    def is_anonymous(self):
        return False

    def is_admin(self):
        return self.id == -1

    def get_id(self):
        return self.id

    @classmethod
    def get(cls, id):
        return cls(id)

    @classmethod
    def mock(cls, id):
        user_data = {
            "id": id, 
            "registered": True
            }

        u = User(id)
        u.data = user_data
        return u

    @classmethod
    def create(cls):
        # increment id
        id = db.count("users")

        new_user = cls.mock(id)
        db.create(new_user.data, "users", id)

        u = cls(id)

        filename = "var/db/user/{pid}.json".format(pid=u.id)
        logging.info("{filename: <50} Created {user}".format(
            filename=filename,
            user=u
        ))

        return u
