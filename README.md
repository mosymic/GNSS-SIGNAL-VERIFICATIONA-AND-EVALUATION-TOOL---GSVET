

***

## 📚 GSVET Software \[GNSS Signal Verification and Evaluation Tool\] V1.0 Product Manual

### (See the file GSVET_Instruction_chinese for instruction images)

### Software Introduction

* **Software Name:** GNSS Signal Verification and Evaluation Tool Software
* **Abbreviation:** GSVET
* **Version Number:** V1.0
* **Software Category:** Application Software (Fill in Application Software/Game Software, etc.)
* **Copyright Holders:** MOSES MICHAEL MEITIVYEKI and LIU Haiying

### Software Features

The features of this software include a **user-friendly frontend interface**, which includes buttons, parameter input fields, simulation mode switchers, data generation options, and output displays.

* Generates and saves output data based on user parameters.
* Runs simulations and classifies signals into **Clean, Multipath, Jamming, and Spoofing** signals.
* Plots signal pattern charts based on user-loaded data or generated data, according to the software input settings.
* Evaluates signals using a detector, and plots real-time suggested patterns for **jammed and unjammed signals**.
* Supports **multiple languages** (English and Chinese).

---

### System Requirements

* **Operating System:** This software is suitable for any operating system running MATLAB (e.g., Windows, MacOS, and Linux), using the **MATLAB APP DESIGNER**.
* **Tested Version:** The final version was tested on a PC running Windows 11 (equipped with an 11th Gen Intel(R) Core(TM) i7-1165G7 @ 2.80GHz 2.80 GH 64-bit operating system, x64-based processor, 32.0 GB RAM machine) and **MATLAB R2021a**.
* **General Compatibility:** Most computers with lower specifications and older MATLAB versions (that include MATLAB APP DESIGNER) are also expected to run the software.

---

### Installation and Running Methods

#### Installation Method

* Download the software installation package from "\[Download Link Omitted]".
* If the link is private, download permission is required; please contact us.
* Follow the prompts to install the software.

#### Running Method

**Method 1: Operating System Without MATLAB Installed**

* **Deployment Prerequisite:** MATLAB Runtime Version 9.10 (R2021a). Older versions can also be used.
* **Offline Installation:** If your operating system does not have the MATLAB Runtime, you can run the installer directly as follows:
    * Steps 1 through 8: (Steps not detailed in the source text)
    * Step 9: Run the executable file **GSVET (.exe)** provided in the download to launch the software.
* **Online Installation:** If the above offline installation file is outdated or with your system, use the online installation file (requires internet) to download a newer version.
    * Alternatively, to find its location, type `>>mcrinstaller` at the MATLAB prompt.
    * **Note:** You will need administrator privileges to run the MATLAB Runtime installer.
    * Alternatively, download and install the Windows version of the MATLAB Runtime for R2021a from the MathWorks website (Link Omitted). Older versions can also be used.
    * For more information on the MATLAB Runtime and the MATLAB Runtime installer, see **MATLAB Runtime** in the "Distribute Applications" section of the MATLAB Compiler documentation in the MathWorks Documentation Center.
* **Deployed and Packaged Files:** The standalone files to be packaged are:
    * -GSVET.exe
    * -MCRInstaller.exe
    * **Note:** If the end-user cannot download the MATLAB Runtime as instructed in the previous section, include it by clicking the **"Runtime included in package"** link in the Deployment Tool when building the component.
    * To find definitions regarding deployment terminology, go to the MathWorks website (Link Omitted) and select MATLAB Compiler > Getting Started > About Application Deployment > Deployment Product Terms in the MathWorks Documentation Center.

**Method 2: Operating System With MATLAB Installed**

* If MATLAB is already installed on your system (verify that **MATLAB Runtime Version 9.10** is installed):
    * Open the GSVET file (English or Chinese version) **(.mlapp)** provided in the download to launch the regular interface.
    * Click the **"Run" button** indicated by the arrow.
    * **Important:** Ensure all downloaded files and folders, including functions and parameters, are not deleted or removed from the path.
    * Before use, ensure the **"functions" folder** is added to your active MATLAB path.

---

### Software Functions

The functions of this software include:

* **Change/Select Language** (between Chinese and English).
* **User Simulation Parameter Panel**.
    * Select the number of trials for each simulation.
    * **Low numbers** (e.g., 100) will run fast, use less computing power, and produce a small amount of data, with results insufficient for analysis (**not recommended**).
    * **High numbers** (e.g., 500,000) will run slowly, consume more computing power, and produce a large amount of data and better analysis results (**recommended**).
    * After inserting all parameters and correctly selecting the required output configuration, press the **Simulation button** to start the process.
    * The progress will be observed as a percentage. Once complete, click the **"Clear All Content" button** to reset everything in the display.
* **Window for displaying graphical results** based on selected parameters and output preferences.
* **Panel to control the simulated signal patterns** based on their properties.
    * Four windows control each option, which are **Clean/Unjammed (Green), Multipath (Yellow), Jamming (Blue), and Spoofing (Red)**.
    * Each window has an initial approximation from the user.
    * Each window also has an **On/Off button** to control whether that specific signal pattern appears in the output after simulation.
    * This makes signal interference analysis convenient, unlike traditional methods where signal patterns are inseparable due to interference and property overlap.
    * Examples include random On/Off.
* **Panel for switching simulation modes**.
    * The two simulation modes are based on **ML (Maximum Likelihood) and PN (Clamped) technologies**.
    * The output signal can be displayed in **two-dimensional (2D)** based on power and distortion, or in **three-dimensional (3D)** which includes signal distribution.
    * Examples: PN vs. ML; Examples: 3D vs. 2D.
* **Dataset Generation and Implementation**.
    * The software can generate datasets based on conducted simulations.
    * This button provides the user with an option to **generate new datasets and save them** every time a new simulation is run, or to run a simulation without affecting previously saved data.
    * The dataset will be saved with a specific name based on the language the software is set to during that specific simulation.
    * To open the dataset file directly, **MATLAB software is required**.
    * To use real data, users must rename their files with a name similar to the one generated by the software during simulation.
    * For example, if using English, for a PN simulation, please rename the file to **`GSVET_PN_Simulation_data.mat`**.
    * For example, if using Chinese, for an ML simulation, please rename the file to **`GSVET_ML_仿真数据.mat`**.
    * Other names can be compared with the names in the main folder (if no dataset file is available, simply run a simple simulation while the Generate Data button is open, and a file with the correct name will be generated).
* **Evaluation**.
    * To perform detector evaluation, ensure there is an appropriate dataset in the main folder.
    * If using simulated data, run the simulation and generate the dataset first.
    * If using a read dataset or other simulated dataset, ensure they are correctly renamed as described above, and all required parameters are present in the dataset and correctly formatted.
    * After selecting the correct mode (ML or PN) and getting the correct dataset, press the **Evaluation button**.
    * The ML mode is usually fast and can generate a 3D evaluation plot in a short time.
    * The PN mode takes longer; the detector evaluation will be displayed in real-time in a pop-up window, while saving the image and updating in real-time.
    * **Do not cancel during the evaluation process**, otherwise the saved figures will be incorrect.
* **Analysis of Results**.
    * The analysis depends on the specific purpose of the experiment.
    * Users may consider the comparison of detection methods, the effect of signal isolation, etc..
    * This requires professional expertise and knowledge in areas such as data science, signal analysis, etc..
    * The software provides users with different tools to experiment and produce multiple forms of results. The possibilities listed are just random examples of result analysis.

***
