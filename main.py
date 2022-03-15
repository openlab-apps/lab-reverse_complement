from Bio.Seq import Seq # the package used in our example to generate a reverse complement

# this is a very simple script that you might write when you just started writing code
input_string = "ATATATTTTAAGGA"
my_revcomp = Seq(input_string).reverse_complement()
print(revcomp)
