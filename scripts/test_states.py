import os
from subprocess import PIPE, Popen

import pytest

LGPO_STATES_PATH = "C:\\salt\\srv\\salt"

walk = os.walk(LGPO_STATES_PATH)
idx_states = []
for root, subdirs, files in walk:
    for idx, file_ in enumerate(files, 1):
        sls = ".".join(
            tuple(root.split(LGPO_STATES_PATH + "\\")[-1].split("\\"))
            + (os.path.splitext(file_)[0],)
        )
        idx_states.append((idx, sls))

@pytest.mark.parametrize("idx,state", idx_states)
def test_state(idx, state):
    cmd = f"C:\\salt\\salt-call.bat --local state.sls {state} test=True"
    with Popen(cmd.split(), stdout=PIPE, stderr=PIPE, shell=True) as proc:
        retcode = proc.wait()
        assert retcode == 0
