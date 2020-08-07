#%%
import os
import pandas as pd

file_path = 'C:/Users/trent_brunson/Documents/GitHub/Flatten_Data_Structure/'

arev = 'PARTS_arev.csv'

xrev = 'PARTS_xrev.csv'

#%%
# clean files for arev/xrev; export to cleaned file
    # load into PD 
    # verify Arev/Xrev status
        # drop statuses that don't match
    # drop dupes for DPN
    # find nulls in PT
        # drop if any
    # find nulls in description, fill with 'NAN'
    # with {file} open (w)
        # list comprehension: for DPN in DPN
            # if arev/xrev[PT] = gns[PT]
            #   ...append new attributes
            # else 
                # invalid.append()



#%%
# load GNS table, to arev or xrev reports
    # ask for file location

# match arev and xrev to GNS reference table

# export new arev and xrev reports