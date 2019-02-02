TLA+
- "/\" is AND
- "\/" is OR
- "foo = 0" describes how something currently is
- "foo' = 1" describes how something changes
- "Name == .." creates a definition

TLA+ Toolbox
- Create new specs by going to "File > Open Spec > Add New Spec"
- Pretty print by "Produce PDF Version
  - Had to install LaTeX via `brew cask install mactex`
  - Had to update pdflatex command location:
    - Open "Preferences" 
    - Go to "TLA+ Preferences > PDF Viewer"
    - Set "Specify pdflatex command" to result of running `where pdflatex`
- Create models to run "TLC Model Checker"
  - Uncheck "Deadlock" under "Model Overview" in the "What to check?" section
