# C.Origami

Implementation of original [C.Origami](https://github.com/tanjimin/C.Origami) using wandb and hydra in order to test easier multiple training configuration


## Training

Usage: 
- Create a new dataset.yaml in `src/corigami/training/config/dataset` with the info of your dataset
- Modify the `src/corigami/training/config/default.yaml`
  - `dataset:` should be a `.yaml` in the `src/training/config/dataset` folder
  - `save_root` : path for the output
- Activate your conda env (perso: `conda activate corigami-dev`)
- From `src/training/` and submit the `submit.sh`
