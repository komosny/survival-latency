# Survival latency

Reproducibility data and source code for the paper **General Internet Service Assessment by Latency Including Partial Measurements**.

# Files

latency - latency of end host connection service (raw data)

atlas - list of RIPE Atlas probes

points.csv - latency observation points in country

latency.sh - script to measure latency on end host

notebook.inbp - notebook with implementation source code

# Reproducibility

The notebook with the preloaded raw data reproduces the results published in the paper.

# Custom data

The notebook with custom data can be used to verify the concept of survival latency and its comparison with traditional latency processing.

1. Download current list of RIPE Atlas probes from ftp.ripe.net/ripe/atlas/probes/archive/
2. Extract and upload the file to the **atlas** directory and specify the Atlas **filename**
3. Specify your **country**
4. Specify number of **latency observation points** for measurement
5. Run the notebook to generate latency observation points in the country, which will be stored in **points.csv**
6. Download **latency.sh** and **points.csv** on your host with Linux OS
7. Run script **latency.sh**
8. Delete the **latency** directory with preloaded data and upload the created **latency** directory with your data
9. OPTIONAL - for the geographic plot, specify your **host location** and set geographical plot to **True**
10. Run the notebook to process the latency data

Steps 6-10 may be repeated on another host to compare their ISPs by survival latency.

# Used free data

RIPE Atlas archive is available at ftp.ripe.net/ripe/atlas/probes/archive/.
