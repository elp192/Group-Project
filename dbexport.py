from sqlalchemy import create_engine
import psycopg2
from config import db_host
from config import db_port
from config import catalog_name
from config import username
from config import password


def dataToDb(inputDf, tableName ):
    db_string = f"postgresql://{username}:{password}@{db_host}:{db_port}/{catalog_name}"
    dbconnection = create_engine(db_string)
    inputDf.to_sql(name=tableName, con=dbconnection, if_exists="replace", method="multi")