# Ansible Makefile

SHELL=/bin/bash

dry-run:
	ansible-playbook ./playbook.yaml -i ./inventory --forks=1 --verbose --check
    echo "Now run 'make deploy' to push the changes onto the hosts."

deploy:
	ansible-playbook ./playbook.yaml -i ./inventory --forks=2 --verbose

clean:
	rm *.retry

depends:
	# apt-get -y install python-pip python3-pip
	pip install ansible
	# sudo -u admin ansible-galaxy install -r requirements.yaml

ping:
	ansible all -m ping

bootstrap: depends
	ansible-playbook .bootstrap/bootstrap.yaml -k --ask-become-pass

.PHONY: dry-run deploy clean depends ping bootstrap
