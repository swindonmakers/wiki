Out of the box Inkscape sets it's page for A4. Most people will use Inkscape to design for the [HPC Laser Cutter](HPC-Laser-Cutter). 

To change the default page size so it fits the laser printer (600mm x 400mm) follow these steps:

1) Windows: open windows file explorer (windows key + E), go to the settings folder, enter `%appdata%\inkscape\`.
2) In there create a new folder called: `templates`
3) In Inkscape, start with a blank document and set the custom canvas size of 600mm W / 400mm H.
4) Now save the blank document. Click on `File` -> `Save`, for the document name enter: `%appdata%\inkscape\templates\default.svg'

When Inkscape is opened again it will now use the new defaults.

If you are using inkscape on Linux, replace `%appdata%\inkscape\` with `$HOME/.config/inkscape/`, so the new default document will end up being called `$HOME/.config/inkscape/templates/default.svg`
