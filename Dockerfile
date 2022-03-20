FROM   centos:7
RUN  yum update -y && \
     yum -y install telnet unzip wget elinks && \

     # Install terraform
     wget https://releases.hashicorp.com/terraform/0.14.11/terraform_0.14.11_linux_amd64.zip && \
     unzip terraform_0.14.11_linux_amd64.zip && \
     mv terraform /usr/bin  && \
     terraform version  && \
     rm -rf terraform_0.14.11_linux_amd64.zip && \

     # Install packer
     rm -rf /usr/sbin/packer && \
     wget https://releases.hashicorp.com/packer/1.7.10/packer_1.7.10_linux_amd64.zip && \
     unzip packer_1.7.10_linux_amd64.zip && \
     mv packer /usr/bin && \
     rm -rf packer_1.7.10_linux_amd64.zip && \

    # below code installs helm 
    curl -O https://get.helm.sh/helm-v3.8.1-linux-amd64.tar.gz && \
	tar xzvf helm-v3.8.1-linux-amd64.tar.gz && \
    mv linux-amd64/helm /usr/bin/ && \
    rm -rf helm-v3.8.1-linux-amd64.tar.gz && \

	
	# below code installs kubectl 
	curl -LO https://dl.k8s.io/release/v1.23.0/bin/linux/amd64/kubectl && \
	chmod +x kubectl && \
	mv kubectl /usr/bin/ 