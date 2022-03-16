import sys # function that is requried to read input from command line arguments
from Bio.Seq import Seq # the package used in our example to generate a reverse complement
from fastapi import FastAPI # a package we use to receive and return results via an API

# define the API and a base message
app = FastAPI()
@app.get("/")
def root():    
    return "waiting for input sequence"

# below we define the key function used within a docker and 
@app.get("/{input_string}")
def revcomp(input_string: str):
    my_revcomp = Seq(input_string).reverse_complement()
    my_revcomp = str(my_revcomp)
    return {"reverse_complement": my_revcomp}

if __name__ == "__main__":
    #sys.argv[1]
    print(revcomp(sys.argv[1]))