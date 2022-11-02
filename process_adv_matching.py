import sys; sys.path.append('/work/awilf/utils/'); from alex_utils import *

adv_matching_dir = 'adv_matching_base'


# turn all _trimmed into not, remove spaces
files = os.listdir(adv_matching_dir)
new_files = lmap(lambda elt: elt.split(' ')[-1].replace('_trimmed', ''), files)
commands = [(join(adv_matching_dir, old_file), join(adv_matching_dir, new_file) ) for old_file, new_file in lzip(files, new_files)]
for fro, to in commands:
    if ' ' in fro:
        hi=2
    mv(fro, to)

# join(adv_matching_dir, elt), 
# remove all  stuff before space

# get original_dict of form vid_id: [ <q>, <a>, <i> ]

# turn into a_dict of form: vid_id_{idx}: a

# for each of these, bert_a_dict = get bert embedding: vid_id_{idx}: bert(a)

# for each, get scores with all the rest; score = alpha*log(sim(q,inc)) + (1-alpha)*log(1-sim(a,inc)); score_a_dict = vid_id_{idx}: {vid_idx_{idxy}: score}

# for each, find the a that maximizes it, overwrite in original dict

# overwrite files

# reprocess

## offline
# check for similarity / difference

# rerun


