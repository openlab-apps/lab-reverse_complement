import sys # function that is requried to read input from command line arguments
from Bio.Seq import Seq # the package used in our example to generate a reverse complement

# below we define the key function used within a docker
def revcomp(str): 
    my_revcomp = Seq(str).reverse_complement()
    return my_revcomp

if __name__ == "__main__":
    revcomp(sys.argv)


