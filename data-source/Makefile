start:
	uvicorn server:app --reload

pip:
	pip install -r requirements.txt

pip-rm:
	pip freeze | grep -v -f requirements.txt - | grep -v '^#' | grep -v '^-e ' | xargs pip uninstall -y
