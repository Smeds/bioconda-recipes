#!/usr/bin/env bash

echo "Downloading the GTDB-Tk database to ${GTDBTK_DATA_PATH}..."

# GTDBTK_DB_PATH is defined in build.sh, store the db there
wget https://data.ace.uq.edu.au/public/gtdb/data/releases/latest/gtdbtk_r89_data.tar.gz -P ${GTDBTK_DATA_PATH}
tar xvzf ${GTDBTK_DATA_PATH}/gtdbtk_r89_data.tar.gz -C ${GTDBTK_DATA_PATH} --strip 1
rm ${GTDBTK_DATA_PATH}/gtdbtk_r89_data.tar.gz

echo "GTDB-Tk database has been successfully downloaded."

exit 0
