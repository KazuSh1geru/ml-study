import math
import pandas as pd
import numpy as np
import sklearn

import sys

def main():
    # 引数の１番目を受け取る
    val = float(sys.argv[1])
    print(math.radians(val))

if __name__ == "__main__":
    main()