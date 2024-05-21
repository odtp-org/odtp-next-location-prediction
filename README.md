# Name of the component

> TBD

| Tool Info | Links |
| --- | --- |
| Original Tool | [https://github.com/irmlma/next-location-prediction](https://github.com/irmlma/next-location-prediction) |
| Current Tool Version  | [33e17ae3f857b22a6164ecb5f9c384f62b279b34](https://github.com/irmlma/next-location-prediction/commit/33e17ae3f857b22a6164ecb5f9c384f62b279b34) |


## ODTP command 

```
odtp new odtp-component-entry \
--name odtp-next-location-prediction \
--component-version 0.0.1 \
--repository https://github.com/odtp-org/odtp-next-location-prediction
``` 

## Data sheet

### Parameters

### Parameters

| Parameter                    | Description                                                                                                                                            | Default Value  | Options                       |
|------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|----------------|-------------------------------|
| TRAINING                     | Train 'networkName' NN with 'train_dataset' in 'data_save_root' if true, use 'pretrain_file' NN to test data from 'inference_data_dir' in 'data_save_root' if false | True           | null                          |
| TRAIN_DATASET                | Dataset name for training, shall be available in 'data_save_root'                                                                                       | dtepr          | null                          |
| INFERENCE_DATA_DIR           | Directory containing all datasets for inference, shall be available in 'data_save_root'                                                                 | inference      | null                          |
| PRETRAIN_DIR                 | Directory containing the trained NN weights, shall be available in 'run_save_root'                                                                      | dtepr_mhsa_demo| null                          |
| IF_EMBED_TIME                | Whether to embed time information                                                                                                                      | True           | null                          |
| VERBOSE                      | Verbose output                                                                                                                                         | True           | null                          |
| DEBUG                        | Debug mode                                                                                                                                             | False          | null                          |
| BATCH_SIZE                   | Batch size for training                                                                                                                                | 256            | null                          |
| PRINT_STEP                   | Steps between printing training progress                                                                                                               | 10             | null                          |
| NUM_WORKERS                  | Number of worker threads for data loading                                                                                                              | 0              | null                          |
| BASE_EMB_SIZE                | Base embedding size                                                                                                                                    | 64             | null                          |
| NETWORK_NAME                 | Name of the network                                                                                                                                    | mhsa           | mhsa, lstm                    |
| FC_DROPOUT                   | Dropout rate for fully connected layers                                                                                                                | 0.1            | null                          |
| MHSA_NUM_ENCODER_LAYERS      | Number of encoder layers in MHSA                                                                                                                       | 4              | null                          |
| MHSA_NHEAD                   | Number of attention heads in MHSA                                                                                                                      | 8              | null                          |
| MHSA_DIM_FEEDFORWARD         | Feedforward dimension in MHSA                                                                                                                          | 256            | null                          |
| MHSA_DROPOUT                 | Dropout rate in MHSA                                                                                                                                   | 0.1            | null                          |
| LSTM_ATTENTION               | Whether to include self-attention layer in LSTM                                                                                                         | False          | null                          |
| LSTM_RNN_TYPE                | Type of RNN (LSTM or GRU)                                                                                                                              | LSTM           | LSTM, GRU                     |
| LSTM_HIDDEN_SIZE             | Hidden size for LSTM                                                                                                                                   | 128            | null                          |
| OPTIMIZER                    | Optimizer type                                                                                                                                         | Adam           | Adam, SGD                     |
| OPTIMIZER_MAX_EPOCH          | Maximum number of epochs for optimizer                                                                                                                 | 100            | null                          |
| OPTIMIZER_LR                 | Learning rate for optimizer                                                                                                                            | 0.001          | null                          |
| OPTIMIZER_WEIGHT_DECAY       | Weight decay for optimizer                                                                                                                             | 0.000001       | null                          |
| OPTIMIZER_ADAM_BETA1         | Beta1 parameter for Adam optimizer                                                                                                                     | 0.9            | null                          |
| OPTIMIZER_ADAM_BETA2         | Beta2 parameter for Adam optimizer                                                                                                                     | 0.999          | null                          |
| OPTIMIZER_SGD_MOMENTUM       | Momentum for SGD optimizer                                                                                                                             | 0.98           | null                          |
| OPTIMIZER_NUM_WARMUP_EPOCHS  | Number of warmup epochs for optimizer                                                                                                                  | 2              | null                          |
| OPTIMIZER_NUM_TRAINING_EPOCHS| Number of training epochs for optimizer                                                                                                                | 50             | null                          |
| OPTIMIZER_PATIENCE           | Patience for learning rate decay                                                                                                                       | 3              | null                          |
| OPTIMIZER_LR_STEP_SIZE       | Step size for learning rate decay                                                                                                                      | 1              | null                          |
| OPTIMIZER_LR_GAMMA           | Gamma value for learning rate decay                                                                                                                    | 0.1            | null                          |


### Input Files

| File/Folder | Description |
| --- | --- | 
| A | B |

### Output Files

| File/Folder | Description |
| --- | --- | 
| A | B |

## Tutorial

### How to run this component as docker

Build the dockerfile 

```
docker build -t odtp-next-location-prediction .
```

Run the following command. Mount the correct volumes for input/output folders. 

```
docker run -it --rm \
-v {PATH_TO_YOUR_INPUT_VOLUME}:/odtp/odtp-input \
-v {PATH_TO_YOUR_OUTPUT_VOLUME}:/odtp/odtp-output \
--env-file .env next-location-prediction
```


## Developed by

XXXXXXXXXX

```
root@2e20536b1400:/odtp/odtp-workdir/next-location-prediction/data/model/dtepr_mhsa_1716103576# ls
checkpoint.pt  conf.json  dtepr_mhsa_default.csv

root@2e20536b1400:/odtp/odtp-workdir/next-location-prediction/data/model/dtepr_mhsa_1716103576# cd ..


root@2e20536b1400:/odtp/odtp-workdir/next-location-prediction/data/model# cd dtepr_mhsa_
dtepr_mhsa_1716103576/ dtepr_mhsa_1716108417/ dtepr_mhsa_demo/

root@2e20536b1400:/odtp/odtp-workdir/next-location-prediction/data/model# cd dtepr_mhsa_1716108417/
root@2e20536b1400:/odtp/odtp-workdir/next-location-prediction/data/model/dtepr_mhsa_1716108417# ls
conf.json  inference_mhsa.csv
```

