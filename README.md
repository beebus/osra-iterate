# osra-iterate
Bash Script to Iterate through TIF Images in Folder and Run OSRA

This shows the command line usage of the OSRA open source software.

Execute the osra_iterate.sh bash script by using the following command (or similar) within a Linux terminal and with the folder that contains osra_iterate.sh as the current working directory:

./osra_iterate.sh ~/Share/input/ ~/Share/output/

What is OSRA?

OSRA (Optical Structure Recognition Application) is a utility designed to convert graphical representations of chemical structures and reactions, as they appear in journal articles, patent documents, textbooks, trade magazines etc., into SMILES or MOL files – a computer recognizable molecular structure format. OSRA can read a document in any of the over 90 graphical formats parseable by GraphicsMagick (https://sourceforge.net/p/osra/wiki/Dependencies#GraphicsMagick) – including GIF, JPEG, PNG, TIFF, PDF, PS etc., and generate the SMILES or MOL representation of the molecular structure images encountered within that document, or RSMI/RXN for reactions.

Note that any software designed for optical recognition is unlikely to be perfect, and the output produced might, and probably will, contain errors, so curation by a human knowledgeable in chemical structures is highly recommended.

OSRA can process the following types of images:
* Computer-generated 2D structures, such as found on the PubChem website (http://pubchem.ncbi.nlm.nih.gov/), black-and-white and color.
* Black-and-white PDF and PostScript files, including multi-page ones.
* Scanned images – black-and-white, a resolution of 300 dpi is recommended, though 150 dpi can also produce fair results. Please make sure the scanned image is of reasonable quality – an input that's too noisy will only generate garbage output.
* Reactions and Polymers

You can download a free version (https://sourceforge.net/p/osra/wiki/Download/) of the source code or support OSRA development by purchasing binary installation executables for Windows (https://store.payproglobal.com/checkout?products[1][id]=38760), and Linux (https://store.payproglobal.com/checkout?products[1][id]=38761).
