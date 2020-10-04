# devops
 project4 udacity nanodegree

![devops](https://circleci.com/gh/ahmed-elnagar/devops.svg?style=svg)

Steps:

Clone the repository

    git clone https://github.com/udacity/DevOps_Microservices.git
Get to the main working directory

    cd DevOps_Microservices/project-ml-microservice-kubernetes
Start with the initiation procedures.

Using Makefiles perform the following:

    Activate the virtual environment

        make setup

    Install the project dependencies

        make install

    Lint both Dockerfile as well as app.py Flask application.

        make lint

Install other tools Like Docker, hadolint and Kubernetes (Minikube)
        Docker
            Download Docker desktop for Windows/macOS.
Hadolint
        scoop install hadolint

Minikube Install Minikube through the executable installer available here.

Detailed Project tasks

    Complete the Dockerfile.
    Run the container and make a prediction using make_prediction.sh.
    Improve the logging and save the output to docker_out.txt.
    Upload the docker image using run_docker.sh file. \
    Configure Kubernetes to run locally.
    Deploy with Kubernetes and save the logs to kubernetes_out.txt.
    Delete the cluster once operations are complete.
    Integrate the project with CircleCI.
    Add the build badge to repository.

Files explained
model_data

This folder contains the necessary information in csv and the machine learning model.
output_txt_files/docker_out.txt

This file contains the output of the prediction model when run in the Docker container.
output_txt_files/kuernetes_out.txt

This file contains the output of the prediction model when run in a Kubernetes cluster. This file also contains information about the deployment, port forwarding process along with the outout of the prediction model that is visible in another terminal.
Dockerfile

The Dockerfile is used for executing the necessary instructions for assembly of a Docker image.
Makefile

The Makefile contains a set of directives for achieving the automation of the project. Instead of manually typing each commands, it can be collectively inserted into one Makefile and then use the make command to execute each instruction.
app.py

The app.py file contains the Flask application that will take the json payload for the predictive model.
make_prediction.sh

A shell script that ocntains the JSON payload that will be accepted by the flask application.
run_docker.sh

A shell script that contains instructions for the Docker image creation process.
run_kubernetes.sh

A shell script that contains instructions for app deployment into a Kubernetes cluster including instructions for port-forwarding procedure.
upload_docker.sh

A shell script that contains instructions to push the docker image into repository.