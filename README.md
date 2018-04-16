# Rossmann store sales - kaggle

Some playing around with kaggle competition dealing with predictions on the sales of [Rossmann shops](https://www.kaggle.com/c/rossmann-store-sales/data).
This project is derived from [ds-cookiecutter](https://github.com/drorata/ds-cookiecutter).

## Running docker container

You can experiment with this analysis using the provided docker image.
This can be done in two steps, first build the image:

```bash
docker build -t rossmann .
```

You can replace the name of the image as per your convenience.
This step can take couple of minutes, depending on the machine you're using.
Next, you can run the built image:

```bash
docker run -p 8899:8888 -it --rm rossmann
```

and visit on `localhost:8899`.
The port `8899` can be replaced upon running the image.

## Project Organization

    ├── LICENSE
    ├── README.md          <- The top-level README (this file)
    ├── data
    │   ├── external       <- Data from third party sources.
    │   ├── interim        <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── notebooks          <- Main analysis is happening in the notebook available here
    │
    ├── environment.yml    <- Definition of the computation environment when using `conda`
    │
    └── src                <- Note used. Additional code could come in here.
        ├── __init__.py    <- Makes src a Python module
        │
        ├── data           <- Scripts to download or generate data
        │   └── make_dataset.py
        │
        ├── features       <- Scripts to turn raw data into features for modeling
        │   └── build_features.py
        │
        ├── models         <- Scripts to train models and then use trained models to make
        │   │                 predictions
        │   ├── predict_model.py
        │   └── train_model.py
        │
        └── visualization  <- Scripts to create exploratory and results oriented visualizations
            └── visualize.py
