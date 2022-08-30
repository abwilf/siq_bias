Biase detection:
Looking at the *highest* validation score, the goal is that it's 50%, meaning that there is no bias. However, normally the validation score is at 70-80% for the original Social-IQ, and 60% after Taylor's reannotation.

Data:
socialiq_taylor_new_qa_all_2022_08_processed


Data processing:
Data already processed. Data processing scripts in *processed folders

Environment:
conda create -n social_iq_bias python=3.8
conda install pytorch torchvision torchaudio cudatoolkit=11.6 -c pytorch -c conda-forge
conda install -c huggingface transformers
pip install tqdm pandas

Code:
run.sh

