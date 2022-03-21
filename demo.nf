methods = ['prot','dna', 'rna']

process foo {
  input:
  val x from methods

  output:
  val x into receiver
  file 'response.txt' into response

  """
  echo $x > response.txt
  """

}

receiver.view { "Received: $it" }
response.