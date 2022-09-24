#!/bin/sh
set -e

ansible-galaxy install -r requirements.yml
ansible-playbook main.yml --ask-become-pass
