Fickle External Plushies Directory
===================================

Place your external plushie assets here.

Directory Structure:
  plushies/
    your_plushie_name/
      model.obj      - The 3D model file
      texture.png    - The texture file
      squish.png     - (Optional) Squish state texture

In your config JSON, use the 'file:' prefix:
  "modelPath": "file:plushies/your_plushie_name/model"
  "texturePath": "file:plushies/your_plushie_name/texture"

Note: Do not include the file extension in the path.
