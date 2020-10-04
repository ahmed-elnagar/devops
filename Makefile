setup:
	python3 -m venv ~/.proj4
	#source ~/.proj4/bin/activate
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#editing makefile
	#PYTHONPATH=. && pytest -vv --cov=paws --cov=spot-price-ml tests/*.py
	#PYTHONPATH=. && py.test --nbval-lax notebooks/*.ipynb

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203,W1309 app.py

all: install lint test

