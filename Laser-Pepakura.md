In pepakura, file/export/vector/dxf.

In lasercut, you will have two layers/colours -- grey for cut lines, and blue for fold lines.  First, we want to reorder the layers, so that the cut lines are cut last -- otherwise the bits will fall through and be nowhere close to where they are supposed to be when it comes time to cut the blue lines.  Click on the grey layer in the list in the top-right corner, and then the down button.

Next, set the power levels.  The grey layer should be set to speed 100, power 20, corner power 15.  The blue layer should be set the same... but wait, there's more!  Hit the "..." button, and then toward the middle, find the "dash line" section.  Set cut len and space len to 0.5.  (You may want to double-check that the grey layer is *not* set to dashed -- both the settings should be on 0.

That's it, you can now cut as per normal.