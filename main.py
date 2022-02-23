from fastapi import FastAPI
from Bio.Seq import Seq

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}


@app.get("/{string}")
def read_item(string: str):
    my_seq = Seq("ATATAT")
    my_revcomp = my_seq.reverse_complement()
    return {"reverse_complement": my_revcomp}

