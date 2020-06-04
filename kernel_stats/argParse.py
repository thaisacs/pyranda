import argparse

def get_args(cmd):
    parser = argparse.ArgumentParser(cmd)
    parser.add_argument('-max-pi', type=int, help='Early Stop')
    args = parser.parse_args()
    return args
