CMEMC_IMAGE := docker-registry.eccenca.com/eccenca-cmemc:v20.12
CMEMC := docker run -i --rm --name cmemc_container -e "OAUTH_CLIENT_SECRET=${CMEM_SERVICE_ACCOUNT_CLIENT_SECRET}" -v $(shell pwd):/data -v $(shell pwd)/cmemc.ini:/root/.config/cmemc/config.ini ${CMEMC_IMAGE} -c aksw.eccenca.dev

import-graphs:
	${CMEMC} graph list
