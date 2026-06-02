# Predictive Maintenance Project - UNIVPM (2022/2023)

This repository contains a university project developed for the Preventive Maintenance for Robotics and Intelligent Automation course, part of the Computer and Automation Engineering program at Universita Politecnica delle Marche (UNIVPM), academic year 2022/2023.

The project focuses on fault diagnosis for a rock drill system using pressure signal data from the PHM 2022 Data Challenge. The goal is to process sensor data, extract diagnostic features, train a classification model, and evaluate its performance on test data.

## Team Members

- Angelone Mattia Domenico
- Romanelli Marco
- [Ali Waqar Badar](https://github.com/Badar97)

## Project Goals

- Understand and preprocess pressure signal data from a rock drill system
- Convert the dataset into a format suitable for MATLAB analysis
- Remove missing values and structure the data as timetables
- Extract diagnostic features from pressure signals
- Train a fault classification model on labeled training data
- Test the model on unseen testing data
- Evaluate the distribution and quality of the predicted classes

## Technologies

- MATLAB
- Signal processing
- Feature extraction
- Classification models
- Predictive maintenance
- PHM 2022 Data Challenge dataset

## Repository Contents

- `Classificatore.m`: MATLAB script for loading data, preprocessing signals, building training/testing tables, and running the classifier
- `TrainedModel.mat`: trained classification model
- `RankingFeatureTraining.mat`: feature ranking for training data
- `RankingFeatureTesting.mat`: feature ranking for testing data
- `B - PHM20200 Data Challenge - Paper.pdf`: reference paper for the data challenge
- `Relazione Progetto Manutenzione Preventiva.pdf`: project report

## Dataset

The project uses pressure measurements from the PHM 2022 Data Challenge. The MATLAB script expects the original training and testing data folders to be available locally:

- `Data_Challenge_PHM2022_training_data/`
- `Data_Challenge_PHM2022_testing_data/`

These folders are not included in the repository.

## How to Use

1. Clone the repository:

   ```bash
   git clone https://github.com/Badar97/Progetto_Manutenzione.git
   cd Progetto_Manutenzione
   ```

2. Add the PHM 2022 training and testing dataset folders to the project directory.

3. Open `Classificatore.m` in MATLAB.

4. Run the script to preprocess the data, load the trained model, and generate predictions.

> This project was developed for educational purposes as part of the Preventive Maintenance course at UNIVPM.
