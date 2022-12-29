#######################################################
## Makefile
## @author: Adam Lesmana G.S 
## @since: 2022-12-28
#######################################################

DOCKER_COMPOSE= docker-compose -f docker-compose.yml -p grpc-ruby

create-network:
	@docker network create grpc-ruby
	
start: 
	@$(DOCKER_COMPOSE) up
	
down:
	@$(DOCKER_COMPOSE) down --remove-orphans