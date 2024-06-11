#!/bin/bash

############################################################################################
# START OF MANUAL CONFIGURATION. 
# ADAPT THE TEMPLATE HERE.
############################################################################################

#########################################################
# 1. GITHUB CLONING OF REPO
# Clone the repository of your tool and checkout to one specific commit. 
#########################################################

git clone https://github.com/irmlma/next-location-prediction.git /odtp/odtp-workdir/next-location-prediction
cd /odtp/odtp-workdir/next-location-prediction
git checkout 33e17ae3f857b22a6164ecb5f9c384f62b279b34

pip install -e .

#########################################################
# 2. CONFIG FILE CONFIGURATION
# Read placeholders and create config file from Environment  
#########################################################

python3 /odtp/odtp-component-client/parameters.py /odtp/odtp-app/config_templates/template.yml /odtp/odtp-workdir/example/config/config.yml

#########################################################
# 3. INPUT FOLDER MANAGEMENT
#########################################################

if [ "$TRAINING" == "True" ]; then
    # Code for training
    echo "Training"

    ln -s /odtp/odtp-input/ /odtp/odtp-workdir/next-location-prediction/data/

else
    # Code for inference
    echo "Inference"

    # Preparing inference data directory
    ln -s /odtp/odtp-input/$INFERENCE_DATA_DIR /odtp/odtp-workdir/next-location-prediction/data/$INFERENCE_DATA_DIR

    # Preparing pretrained model directory
    ln -s /odtp/odtp-input/$PRETRAIN_DIR /odtp/odtp-workdir/next-location-prediction/data/$PRETRAIN_DIR

fi


#########################################################
# 4. TOOL EXECUTION
# While the output is managed by ODTP and placed in /odtp/odtp-output/
#########################################################

# COMMAND $PARAMETER_A #PARAMETER_B /odtp/odtp-input/data
python3 example/run.py

#########################################################
# 5. OUTPUT FOLDER MANAGEMENT
# The selected output files generated should be placed in the output folder
#########################################################

# Training output
# checkpoint.pt  conf.json  dtepr_mhsa_default.csv

# Inference_output
#conf.json  inference_mhsa.csv

# PROBLEM: dtepr_mhsa_1716108417
cp -r /odtp/odtp-workdir/next-location-prediction/data/model/* /odtp/odtp-output

############################################################################################
# END OF MANUAL USER APP
############################################################################################
