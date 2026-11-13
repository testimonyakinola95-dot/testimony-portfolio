# Testimony Samuel | Personal Portfolio

A responsive personal portfolio website showcasing my background, technical skills, projects, education, and professional experience.

**Live Website:** http://54.174.172.6

## About the Project

This project was developed to establish my professional online presence while demonstrating practical knowledge of web development, Linux, containerization, cloud infrastructure, and DevOps automation.

It also serves as a practical learning project through which I explored deploying a locally developed application to an AWS cloud server.

## Technologies Used

| Technology | Purpose |
|---|---|
| HTML5 | Website structure |
| CSS3 | Styling and responsive design |
| JavaScript | Website interactivity |
| Docker | Application containerization |
| Nginx | Web server |
| Ubuntu Linux | Server operating system |
| AWS EC2 | Cloud hosting |
| AWS Systems Manager | Remote deployment commands |
| Git & GitHub | Version control and source code management |
| GitHub Actions | CI/CD automation |

## Website Features

- Responsive design for desktop and mobile devices.
- Dark and light mode.
- Personal introduction and biography.
- Technical skills and project showcase.
- Education and professional experience.
- Contact information.
- Downloadable CV.

## Project Structure

```text
testimony-portfolio/
├── index.html
├── css/
│   └── style.css
├── js/
│   └── script.js
├── images/
│   └── profile.jpg
├── assets/
│   └── Testimony-Samuel-CV.pdf
├── Dockerfile
├── nginx.conf
└── README.md
```

## Docker Implementation

Docker was used to package the website and its required files into a container image.

The application uses Nginx as its web server.

Build the Docker image:

```bash
docker build -t testimony-portfolio .
```

Run the container locally:

```bash
docker run -d -p 8080:80 --name testimony-portfolio-container testimony-portfolio
```

Access the website:

```text
http://localhost:8080
```

## AWS Cloud Deployment

The portfolio is hosted on an Ubuntu-based Amazon EC2 instance.

The deployment process involved:

1. Provisioning an AWS EC2 instance.
2. Connecting to the server through SSH.
3. Installing Docker and Git.
4. Cloning the GitHub repository.
5. Building the Docker image.
6. Running the application in a container.
7. Configuring network access through an AWS Security Group.

AWS Systems Manager is also configured to allow GitHub Actions to execute deployment commands on the EC2 instance.

## CI/CD Pipeline

GitHub Actions automates the deployment process whenever changes are pushed to the `main` branch.

The workflow uses:

- **GitHub Actions:** Runs the deployment workflow.
- **AWS IAM OIDC:** Provides temporary AWS credentials without storing long-term AWS access keys in GitHub.
- **AWS Systems Manager:** Sends deployment commands to the EC2 instance.
- **Docker:** Builds and runs the updated application.
- **Health checks:** Verify that the deployed website responds.

The workflow also supports manual deployment through GitHub Actions using `workflow_dispatch`.

## Automatic Rollback

An automatic rollback mechanism was added to improve deployment reliability.

The deployment process:

1. Builds a uniquely tagged Docker image using the Git commit SHA.
2. Preserves the current working image under the `previous` tag.
3. Starts the newly built container.
4. Checks whether the website responds successfully.
5. Restores the previous image if the new deployment fails its health check.

This helps reduce downtime and provides a recovery mechanism when a deployment encounters problems.

*Note: The successful deployment workflow has been verified. A deliberate failed-deployment rollback test has not yet been performed.*

## Key Learning Outcomes

Through this project, I gained practical experience in:

- Linux server administration.
- SSH configuration and remote server access.
- Git and GitHub version control.
- Docker image creation and container management.
- AWS EC2 provisioning and cloud hosting.
- AWS IAM roles and OIDC authentication.
- AWS Systems Manager.
- GitHub Actions and CI/CD automation.
- Deployment health checks and rollback strategies.

## Author

**Testimony Akinola Samuel**

Cybersecurity Student | Aspiring Cybersecurity Professional | DevOps Learner

GitHub: [testimonyakinola95-dot](https://github.com/testimonyakinola95-dot)

---

*Built as a practical learning project combining web development, cloud computing, Linux administration, and DevOps engineering.*
