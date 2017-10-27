import os, uuid
from ete3 import Tree

for file in os.listdir("/Users/David/Grive/Alfaro_Lab/Pelagia/95_percent_complete"):
    if file.endswith(".tre"):
        filename = "/Users/David/Grive/Alfaro_Lab/Pelagia/95_percent_complete/" + file
        outname = "/Users/David/Grive/Alfaro_Lab/Pelagia/Min_SH-like_90_trees/" + file
        t = Tree(filename, format=2)

        print t.get_ascii(attributes=['support', 'name'])

        for node in t.get_descendants():
            if not node.is_leaf() and node.support <= 0.9:
                node.delete()

        print t.get_ascii(attributes=['support', 'name'])

        t.write(format=0, outfile=outname)
