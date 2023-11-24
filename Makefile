install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install-gcp:
	pip install --upgrade pip &&\
		pip install -r requirements-gcp.txt

install-azure:
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt

install-amazon-linux:
	pip install --upgrade pip &&\
		pip install -r requirements-amazon-linux.txt
lint:
	pylint --disable=R,C main.py

format:
	black *.py

test:
	python -m pytest -vv --cov=main test_main.py