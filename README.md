# Executable Environment for OSF Project [t2jka](https://osf.io/t2jka/)

This repository was automatically generated as part of a project to test the reproducibility of open science projects hosted on the Open Science Framework (OSF).

**Project Title:** Batch upload stimuli to a Qualtrics survey (R script)

**Project Description:**
> Qualtrics is a widely-used tool for web-based surveys and experiments in linguistics, psychology, and many other fields, but the interface lacks many experiment-friendly features. Thus, this project aims to automate a large portion of the process. The R codes transform stimuli spreadsheets into a format that can be batch-imported to Qualtrics; the output format automatically adds each stimulus as a question of desired type, sets up the answer fields, and numbers the questions based on your stimuli coding. 

As of 11/09/2018, the codes can handle: 1) multiple choice-type studies with the same choices across questions (e.g., Likert rating, grammaticality judgment, etc); 2) multiple choice-type studies with different choices across questions (e.g., choose pronoun referent for each sentence); and 3) text entry (e.g., sentence completion task, open-ended answers, etc.). Note that this project only works for English as the survey language for now, because Qualtrics can only read ANSI-encoded batch files.

**Original OSF Page:** [https://osf.io/t2jka/](https://osf.io/t2jka/)

---

**Important Note:** The contents of the `t2jka_src` folder were cloned from the OSF project on **12-03-2025**. Any changes made to the original OSF project after this date will not be reflected in this repository.

The `DESCRIPTION` file was automatically added to make this project Binder-ready. For more information on how R-based OSF projects are containerized, please refer to the `osf-to-binder` GitHub repository: [https://github.com/Code-Inspect/osf-to-binder](https://github.com/Code-Inspect/osf-to-binder)

## flowR Integration

This version of the repository has the **[flowR Addin](https://github.com/flowr-analysis/rstudio-addin-flowr)** preinstalled. flowR allows visual design and execution of data analysis workflows within RStudio, supporting better reproducibility and modular analysis pipelines.

To use flowR, open the project in RStudio and go to `Addins` > `flowR`.

## How to Launch:

**Launch in your Browser:**

🚀 **MyBinder:** [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/code-inspect-binder/osf_t2jka-f/HEAD?urlpath=rstudio)

   * This will launch the project in an interactive RStudio environment in your web browser.
   * Please note that Binder may take a few minutes to build the environment.

🚀 **NFDI JupyterHub:** [![NFDI](https://nfdi-jupyter.de/images/nfdi_badge.svg)](https://hub.nfdi-jupyter.de/r2d/gh/code-inspect-binder/osf_t2jka-f/HEAD?urlpath=rstudio)

   * This will launch the project in an interactive RStudio environment on the NFDI JupyterHub platform.

**Access Downloaded Data:**
The downloaded data from the OSF project is located in the `t2jka_src` folder.

## Run via Docker for Long-Term Reproducibility

In addition to launching this project using Binder or NFDI JupyterHub, you can reproduce the environment locally using Docker. This is especially useful for long-term access, offline use, or high-performance computing environments.

### Pull the Docker Image

```bash
docker pull meet261/repo2docker-t2jka-f:latest
```

### Launch RStudio Server

Run the container (with a name, e.g. `rstudio-dev`):
```bash
docker run -it --name rstudio-dev --platform linux/amd64 -p 8888:8787 --user root meet261/repo2docker-t2jka-f bash
```

Inside the container, start RStudio Server with no authentication:
```bash
/usr/lib/rstudio-server/bin/rserver --www-port 8787 --auth-none=1
```

Then, open your browser and go to: [http://localhost:8888](http://localhost:8888)

> **Note:** If you're running the container on a remote server (e.g., via SSH), replace `localhost` with your server's IP address.
> For example: `http://<your-server-ip>:8888`

## Looking for the Base Version?

For the original Binder-ready repository **without flowR**, visit:
[osf_t2jka](https://github.com/code-inspect-binder/osf_t2jka)

