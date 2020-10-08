arguments:
- --
baseCommand: /app/cwl/bin/main_ERC
class: CommandLineTool
cwlVersion: v1.1
hints:
  DockerRequirement:
    dockerImageId: mintproject/aquifer:latest
inputs:
  aquifer_file:
    inputBinding:
      prefix: --aquifer_file
    type: File
  aquifer_file_case1:
    inputBinding:
      prefix: --aquifer_file_case1
    type: File
  aquifer_file_case2:
    inputBinding:
      prefix: --aquifer_file_case2
    type: File
  case:
    inputBinding:
      prefix: --case
    type: int
  conc:
    inputBinding:
      prefix: --conc
    type: int
  degr:
    inputBinding:
      prefix: --degr
    type: string
  hydr:
    inputBinding:
      prefix: --hydr
    type: string
  inic:
    inputBinding:
      prefix: --inic
    type: string
  rech:
    inputBinding:
      prefix: --rech
    type: string
outputs:
  arrival_time_viz:
    outputBinding:
      glob: arrival_time.png
    type: File
  break_through_curve_viz:
    outputBinding:
      glob: break_through_curve.png
    type: File
  ground_water_flow_field_viz:
    outputBinding:
      glob: groundwaterflowfield.png
    type: File
  mt3d001:
    outputBinding:
      glob: MT3D001.UCN
    type: File
