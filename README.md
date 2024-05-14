# Multi-Agent-Curriculum

The library's goal is to support current and evolving multi-agent algorithms with curriculums. 

Current multi-agent algorithms supported from an updated [EPyMARL](https://github.com/uoe-agents/epymarl/) library include on-policy algorithms like MAPPO, MAA2C, COMA and off-policy algorithms like MADDPG, QMIX, VDN. 

The updates involve supporting curriculum features with multi-agent reinforcement learning algorithms to run either episodically or parallely. The code updates are in `src/run.py`, `src/envs/__init__.py`, `src/runners/episode_runner.py`, `src/runners/parallel_runner.py`

Domain Randomization feature is provided.

The environment supported for now is [Level Based Foraging](https://github.com/uoe-agents/lb-foraging).

New algorithms, curriculums and environments are being developed.

## Installation Instruction

Conda Environment with Python 3.7 can be created as follows

```
conda create -n marl_cc python=3.7
conda activate marl_cc
```

Then the dependencies can be installed with

```
cd marl_dr_curr_epymarl
pip install -r requirements.txt
pip install torch_scatter==2.1.1
pip install wandb
pip install protobuf==3.20.*
```

torch_scatter is installed separately as it requires torch to be already installed


EPyMARL is  an extension of [PyMARL](https://github.com/oxwhirl/pymarl), and includes
- Additional algorithms (IA2C, IPPO, MADDPG, MAA2C and MAPPO)
- Support for [Gym](https://github.com/openai/gym) environments (on top of the existing SMAC support)
- Option for no-parameter sharing between agents (original PyMARL only allowed for parameter sharing)
- Flexibility with extra implementation details (e.g. hard/soft updates, reward standarization, and more)
- Consistency of implementations between different algorithms (fair comparisons)

See our blog post here: https://agents.inf.ed.ac.uk/blog/epymarl/


## Update as of *15th July 2023*!