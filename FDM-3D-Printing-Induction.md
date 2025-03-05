Risk Assessment
---------------

Risks for this machine are: Burns from touching the heated bed or extruder nozzle, lung/eye irritation from filaments (melted plastic), entanglement in moving parts and electric shock. [Full Risk Assessment](https://docs.google.com/spreadsheets/d/1JovYsMML4nXiZNmltetqU5NV06J0A-H2QGke_Fwon4U/edit?usp=sharing)

The actual risk is relatively low, do not touch the extruder (hot, moving parts) or heated bed (hot, moving parts) while the machine is running.

What is it for
--------------

FDM printers are computer-driven tools for turning 3d model files into a physical object made from plastic. FDM stands for Fusion Deposition Modelling (creating models by depositing melted filament). We usually call the process "3d printing"

Getting started
----------------

Creating 3d model object files is outside the scope of this induction. The internet is full of models made by other people you can print. Look at [thingiverse](https://thingiverse.com), [printables](https://printables.com), [thangs](https://thangs.com). Some CAD modelling tools if you want to make your own: [tinkercad](https://tinkercad.com), [openscad](https://openscad.org).

Download or acquire a model file which is  .stl, .3mf or .obj.

Slicing
-------

STL and 3MF files store model data as a mesh, a series of points and triangles, this is a useful interchange format for files, but we can't feed it directly to the printer. We need to convert it into a GCODE file, which is a series of movement instructions for printing the model, one thin layer at a time. Converting STL/3MF/OBJ to GCODE is called **slicing**.

The slice software we use is called [Bambu Studio](https://bambulab.com/en/download/studio), as this will slice files for both the current 3d printers in use. 