import os, uuid
from ete3 import Tree

t2 = Tree("/Users/David/Grive/Alfaro_Lab/Pelagia/ExaML_pelagia-75p.tre", format = 9)
for file in os.listdir("/Users/David/Grive/Alfaro_Lab/Pelagia/Min_SH-like_90_trees/"):
    if file.endswith(".tre"):
        filename = "/Users/David/Grive/Alfaro_Lab/Pelagia/Min_SH-like_90_trees/" + file
        t1 = Tree(filename, format = 2)
        try:
            rf = t1.robinson_foulds(t2)
            print str(file), (rf[0])
        except:
            pass
