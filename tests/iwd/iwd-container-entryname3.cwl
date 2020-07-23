cwlVersion: v1.2.0-dev5
class: CommandLineTool
doc: |
  Must fail if entryname is an absolute path and DockerRequirement is
  not in the 'requirements' section.
inputs:
  filelist: File
outputs:
  head:
    type: File
    outputBinding:
      glob: head.txt
hints:
  DockerRequirement:
    dockerPull: "debian:10"
    dockerOutputDirectory: /output
requirements:
  InitialWorkDirRequirement:
    listing:
      - entryname: /tmp2j3y7rpb/input/stuff.txt  # Give it a weird prefix to minimize chance of conflict with a real file
        entry: $(inputs.filelist)
  ShellCommandRequirement: {}
arguments:
  - {shellQuote: false, valueFrom: "head -n10 /tmp2j3y7rpb/input/stuff.txt > /output/head.txt"}
