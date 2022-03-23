import os
from subprocess import PIPE, Popen

import pytest
import yaml

STATES_PATH = "C:\\salt\\srv\\salt"

walk = os.walk(STATES_PATH)
states = []
for root, subdirs, files in walk:
    for file_ in files:
        if not file_.endswith(".sls"):
            continue
        sls = ".".join(
            tuple(root.split(STATES_PATH + "\\")[-1].split("\\"))
            + (os.path.splitext(file_)[0],)
        )
        states.append(sls)


@pytest.mark.parametrize("state", states)
def test_state(state):
    with Popen(
        ["C:\\salt\\salt-call.bat", "--local", "state.sls", state, "test=True"],
        stdout=PIPE,
        stderr=PIPE,
        shell=True,
    ) as proc:
        stdout, stderr = proc.communicate()
        retcode = proc.wait()
        try:
            assert retcode == 0
        except AssertionError:
            print(f"Error while testing {state}")
            print(
                f"\nstdout:\n{stdout.decode('utf-8')}\nstderr:\n{stderr.decode('utf-8')}"
            )
            print(f"retcode: {retcode}")
            if "UnicodeDecodeError" in stdout.decode("utf-8"):
                raise UnicodeDecodeError
            elif "yaml.reader.ReaderError" in stdout.decode("utf-8"):
                raise yaml.reader.ReaderError
            elif "KeyError" in stdout.decode("utf-8"):
                raise KeyError
            elif "[ERROR   ] ADMX policy" in stderr.decode("utf-8"):
                raise ValueError
            else:
                raise AssertionError
