start:
	jupyter notebook --ip 0.0.0.0 --port 3010

pip:
	pip install -r requirements.txt

pip-rm:
	pip freeze | grep -v -f requirements.txt - | grep -v '^#' | grep -v '^-e ' | xargs pip uninstall -y
