cwlVersion: v1.0
class: Workflow
doc: this is a description
dct:creator:
  foaf:name: Natalie
  foaf:mbox: myemail@email.com

inputs:
  input_file: File

outputs:
  output_file:
    type: File
    outputSource: md5sum/output_file

steps:
  md5sum:
    run: md5sum-tool.cwl
    in:
      input_file: input_file
    out: [output_file]
