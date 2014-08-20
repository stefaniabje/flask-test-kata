bootstrap:
	rm -rf venv
	virtualenv venv
	venv/bin/pip install -r requirements.txt

integrationtest:
	venv/bin/py.test tests/integration -v

unittest:
	venv/bin/py.test tests/unit -v

test: unittest integrationtest

run:
	venv/bin/python app/app.py
