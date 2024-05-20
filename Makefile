up_sonarqube:
	cd ./sonarqube/ && vagrant up; \

up_jenkins:
	cd ./jenkins/ && vagrant up; \

up: up_sonarqube up_jenkins
	echo "Running"
	
destroy_sonarqube:
	cd ./sonarqube/ && vagrant destroy -f; \

destroy_jenkins:
	cd ./jenkins/ && vagrant destroy -f; \

destroy: destroy_sonarqube destroy_jenkins
	echo "Destroyed"


halt_sonarqube:
	cd ./sonarqube/ && vagrant halt; \

halt_jenkins:
	cd ./jenkins/ && vagrant halt; \

halt: halt_sonarqube halt_jenkins
	echo "Halted"
