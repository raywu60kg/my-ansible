# my-ansible
## Usage
```
ansible-playbook -i inventories/hosts.yml playbooks/site.yml --extra-vars "@env.yml" -v
```

ping
```
ansible my-testing-env -m ping -i inventories/hosts.yml --extra-vars "@env.yml" 
```
## Info
create ansible roles
```
ansible-galaxy init common
```
## Reference
https://github.com/spy86/docker-ansible
https://stackoverflow.com/questions/27701930/how-to-add-users-to-docker-container
https://dev.to/s1ntaxe770r/how-to-setup-ssh-within-a-docker-container-i5i
https://github.com/rastasheep/ubuntu-sshd
https://www.howtoforge.com/ansible-guide-create-ansible-playbook-for-lemp-stack/