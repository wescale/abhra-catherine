env:
	pip3 install -U --no-cache pip setuptools wheel
	pip3 install -U --no-cache -r requirements.txt 
	ansible-galaxy collection install -fr requirements.yml

