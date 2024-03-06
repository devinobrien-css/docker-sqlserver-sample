# docker-sqlserver-sample

A docker image to initialize and launch the latest version of SQL Server

## Prerequisites

- [Docker](https://docs.docker.com/engine/install/) installed on your machine
- Basic knowledge of [Docker](https://docs.docker.com/get-started/overview/)
- Basic knowledge of [SQLServer](https://learn.microsoft.com/en-us/sql/sql-server/?view=sql-server-ver16)

> For help [see here](https://www.devart.com/dbforge/sql/studio/install-sql-server-on-mac.html)

## Getting Started

To get started with `docker-sqlserver-sample`, follow these steps:

1. Make sure you have Docker installed on your machine. If not, you can install it by following the instructions [here](https://docs.docker.com/engine/install/).

2. Clone the `docker-sqlserver-sample` repository to your local machine:

    ```bash
    git clone https://github.com/devinobrien-css/docker-sqlserver-sample.git
    ```

3. Navigate to the cloned repository:

    ```bash
    cd docker-sqlserver-sample
    ```

4. Follow one of the following:

### Quick Launch (Mac only)

    1. Execute the bash script included in this repo:

        ```bash
        bash build.sh
        ```

    2. Connect to the PostgreSQL database using your preferred client (e.g., `psql`, `pgAdmin`, etc.):
        - Host: `localhost`
        - Port: `5432`
        - Username: `sqlserver`
        - Password: ********

        You can now start using PostgreSQL in your development environment!

    3. (optional) A destroy script has been included for your convenience

        ```bash
        bash destroy.sh
        ```

        > this script will remove all prior instantiated docker assets

### Self Service (cross-platform)

    1. Build the Docker image:

        ```bash
        docker build -t docker-sqlserver .
        ```

    2. Launch the SQL Server container:

        ```bash
        docker run -d -p 1433:1433 --name sqlserver-container docker-sqlserver
        ```

    3. Verify that the container is running:

        ```bash
        docker ps
        ```

        You should see the `sqlserver-container` listed in the output.

    4. Connect to the SQL Server database using your preferred client (e.g., `Azure Data Studio`, `SSMS`, etc.):

        - Host: `localhost`
        - Port: `1433`
        - Username: `sqlserver`
        - Password: ********

        You can now start using SQL in your development environment!

>For more information and advanced usage, refer to the [official SQLServer documentation](https://learn.microsoft.com/en-us/sql/sql-server/?view=sql-server-ver16).

## Helpful Commands

### List All Containers

```bash
docker ps
```

### Stop a Container

```bash
docker stop <container-credential>
```

### Kill a Container

```bash
docker kill <container-credential>
```

### Verify a Stopped Container

```bash
docker ps -a
```

### Remove a Stopped Container

```bash
docker rm
```
