cwlVersion: v1.2.0-dev5
class: CommandLineTool
baseCommand: echo
inputs:
  letters:
    type:
      type: array
      items:
        type: array
        items: string
    inputBinding:
      position: 1
stdout: echo.txt
outputs:
  echo: stdout