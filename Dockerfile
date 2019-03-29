FROM jupyter/scipy-notebook:41e066e5caa8

USER root

RUN apt-get update && \
    apt-get install -y gdal-bin

USER jovyan

RUN pip install rasterio shapely pyshp tqdm psycopg2-binary && \
    conda install -y gdal

# ENTRYPOINT ["tini", "-g", "--"]
# CMD ["start-notebook.sh"]
