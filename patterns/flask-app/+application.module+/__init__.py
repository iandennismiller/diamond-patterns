import configparser
from pathlib import Path, PurePath
import os
from jsfsdb import jsfsdb

db = jsfsdb(dbpath=os.environ["JSFSDB_PATH"])
