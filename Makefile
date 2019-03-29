local-execute:
	circleci config validate
	circleci config process .circleci/config.yml > .circleci/tmp.yml
	circleci local execute -c .circleci/tmp.yml --job aws-cli
