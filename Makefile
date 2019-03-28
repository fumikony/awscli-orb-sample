local-execute:
	circleci config process .circleci/config.yml > .circleci/tmp.yml
	circleci local execute -c ,config.yml --job aws-cli
