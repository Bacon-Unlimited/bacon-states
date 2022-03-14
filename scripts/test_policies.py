import os

import salt.config
import salt.client

LGPO_STATES_PATH = ""

def test_policies():
    __opts__ = salt.config.minion_config("C:\\salt\\conf")
    __opts__["file_client"] = "local"
    caller = salt.client.Caller(mopts=__opts__)

    walk = os.walk(LGPO_STATES_PATH)
    for root, subdirs, files in walk:
        for file_ in files:
            sls = ".".join(os.path.split(root) + (os.path.splitext(file_)[0],))
            ret = caller.cmd("state.sls", sls, test=True)
