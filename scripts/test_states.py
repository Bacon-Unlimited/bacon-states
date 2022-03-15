import os
from subprocess import PIPE, Popen

LGPO_STATES_PATH = "C:\\salt\\srv\\salt"


def test_states():
    """
    Test all the states in LGPO_STATES_PATH

    This function might take a while.
    Therefore, use `pytest -s` to see progress print statements.
    """
    print("\n")
    walk = os.walk(LGPO_STATES_PATH)
    for root, subdirs, files in walk:
        for idx, file_ in enumerate(files, 1):
            print(f"Testing file {idx}/{len(files)} in {root}: {file_}")
            sls = ".".join(
                tuple(root.split(LGPO_STATES_PATH + "\\")[-1].split("\\"))
                + (os.path.splitext(file_)[0],)
            )
            cmd = f"C:\\salt\\salt-call.bat --local state.sls {sls} test=True"
            with Popen(cmd.split(), stdout=PIPE, stderr=PIPE, shell=True) as proc:
                retcode = proc.wait()
                assert retcode == 0
