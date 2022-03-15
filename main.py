import sys # function that is requried to read input from command line arguments
from Bio.Seq import Seq # the package used in our example to generate a reverse complement

# below we define the key function used within a docker
def revcomp(input_string): 
    my_revcomp = Seq(input_string).reverse_complement()
    my_revcomp = str(my_revcomp)
    return my_revcomp

if __name__ == "__main__":
    #sys.argv[1]
    print(revcomp(sys.argv[1]))

