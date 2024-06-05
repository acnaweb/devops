up_sonarqube:
	cd ./sonarqube/ && vagrant up; \

up_jenkins:
	cd ./jenkins/ && vagrant up; \

up_nexus:
	cd ./nexus/ && vagrant up; \

up: up_sonarqube up_jenkins 
	echo "Running"
	
destroy_sonarqube:
	cd ./sonarqube/ && vagrant destroy -f; \

destroy_jenkins:
	cd ./jenkins/ && vagrant destroy -f; \

destroy_nexus:
	cd ./nexus/ && vagrant destroy -f; \

destroy: destroy_sonarqube destroy_jenkins destroy_nexus
	echo "Destroyed"

halt_sonarqube:
	cd ./sonarqube/ && vagrant halt; \

halt_jenkins:
	cd ./jenkins/ && vagrant halt; \

halt_nexus:
	cd ./nexus/ && vagrant halt; \

halt: halt_sonarqube halt_jenkins halt_nexus
	echo "Halted"
