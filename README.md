# Hadoop-Windows Practice Repository

This repository was inially designed to help learners practice using **Hadoop** and other Hadoop-dependent tools on Windows. Now it supports Linux (Ubuntu). Work on Mac is going on. It aims to provide a complete setup that includes all the necessary tools and dependencies, such as **Hadoop**, **Hive**, and **Java**, integrated within the single project folder. Currently, **Hive** is integrated, and other tools will be integrated in the future. The core idea behind this repository is to allow beginners to experiment with and understand these tools without the hassle of complex installations and configurations in the popular OS environments like those of Windows (originally), linux(Ubuntu) and Mac.

## Key Features

- **Comprehensive Setup:** Includes automated settings to download and setup all tools and dependencies required for Hadoop, such as **Java**, **Hadoop**, and **Hive**, all meant to bundle within the repository, reducing and simplifying the dependency installation process. The core idea is that all necessary tools and dependencies are bundled within a single project folder. These tools are then called and pointed to each other using simple batch scripts. This way, a beginner can easily understand what's happening in the background while learning high-level tools like **Hadoop**, **HDFS**, **MapReduce**, **Hive**, and more.

- **Environment Setup (Handling):** Path settings and configurations are managed through batch files. This approach avoids the hurdles of setting global environment variables and dealing with permission issues in Windows, making the setup process much smoother.

- **VS Code Compatibility:** The setup has been fully tested, and all primary functionalities have been verified using **VS Code**. You can seamlessly write, execute, and manage commands for Hadoop, HDFS, and Hive using batch files within the **VS Code** terminal.

- **Command Execution via Batch Files:** The repository comes with a set of batch files that handle the execution of **Hadoop**, **HDFS**, and **Hive** commands without the need to set up environment variables manually. Simply run the appropriate batch file to start the respective services and execute commands.

- **Caution:** Hive logs are currently getting printed on the command line, but this will be fixed in future updates.

## Included and Tested Versions

- **Hadoop:** 3.3.6
- **Hive:** 3.1.3
- **Java for Hadoop:** OpenJDK 11
- **Java for Hive:** OpenJDK 8

## Clone the Project

```bash
git clone https://github.com/KonthouKabi/hadoop-windows.git
```
## First Step: Installations and Setups

Install the tools and setup the dependencies:<br>
-**get-libs.bat** on Woindows.<br>
-**get-libs.sh** on Linux (Ubuntu).

**Then:**

## How to Start the Project

The following is the order in which batch files need to be executed to start and run Hadoop, HDFS, and Hive:

1. **Step 1: Format the NameNode**
    - Run `format--namenode.bat` to format the  (On Windows only).

2. **Step 2: Start Derby (Hive's default metastore)**
    - Run `start-derby` to start the Derby database, which acts as the Hive metastore (Windows,Linux).

3. **Step 3: Start Hadoop Services**
    - Run `start-hadoop` to start all necessary Hadoop services (Windows,Linux). <br>

   <i> Once you have executed these scripts in the correct order, you'll be ready to run Hadoop and Hive on your Windows machine using the batch files provided.</i> <br>

4. **Step 4: Run Hadoop Commands**
    - Run `run-hadoop.bat` to execute Hadoop commands like interacting with HDFS (on Windows only).<br>
    -source hadoop-path.sh (Linux). Then run hadoop command directly on termnal

5. **Step 5: Start Hive**
    - Run `run-hive.bat` to launch Hive and start interacting with the Hive shell. (on Windows only).<br>
    - source hive-path.sh (Linux). Then run hive command directly on termnal


## Additional Notes

- The repository is designed to work entirely on **Windows** with minimal manual configuration.
- All dependencies are setup within the project folder itself, so you don't need to much worry about downloading or configuring the dependencies tools.
- **Future Updates:** More tools will be integrated, and any issues (such as Hive logs printing on the command line) will be addressed in future updates.
