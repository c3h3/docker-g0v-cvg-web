
import os        

pgdb_uri = os.environ["POSTGRES_PORT"]
pgdb_uri = pgdb_uri.replace("tcp://","")

pgdb_host, pgdb_port = pgdb_uri.split(":")

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'g0v',
        'USER': 'postgres',
        'PASSWORD': 'postgres',
        'HOST': pgdb_host,
        'PORT': pgdb_port,
    }
}


