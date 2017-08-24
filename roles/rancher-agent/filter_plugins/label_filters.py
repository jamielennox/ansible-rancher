#!/usr/bin/env python


def rancher_labels_encode(labels_dict):
    return "&".join("%s=%s" % i for i in labels_dict.items())


class FilterModule(object):

    def filters(self):
        return {
            'rancher_labels_encode': rancher_labels_encode,
        }
