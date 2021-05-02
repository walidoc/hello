install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt 

test:
	# @cd tests; pytest -vv --cov-report term-missing --cov=web --cov=nlib test_*.py
	
lint:
	pylint --disable=R,C hello.py
	
all: install lint test