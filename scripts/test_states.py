import os
from subprocess import PIPE, Popen

LGPO_STATES_PATH = "C:\\salt\\srv\\salt"


def test_states():
    walk = os.walk(LGPO_STATES_PATH)
    for root, subdirs, files in walk:
        for file_ in files:
            sls = ".".join(
                (root.split(LGPO_STATES_PATH + "\\")[-1].split("\\"),)
                + (os.path.splitext(file_)[0],)
            )
            cmd = f"salt-call --local state.sls {sls} test=True"
            with Popen(cmd.split(), stdout=PIPE, stderr=PIPE) as proc:
                retcode = proc.wait()
                assert retcode == 0
