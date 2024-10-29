# pdf2img


This script converts PDF files into PNG images, allowing easy incorporation into LaTeX files. 
Each page of the PDF is converted into a separate PNG image with specified filenames, and any surrounding white space is trimmed. 
I often use Goodnotes to create drawings, which I then export as PDFs to process with this script.


Following is the usage:

```
usage: pdf2img.py [-h] [-n NAMES_FILENAME] [-o OUT_DIR] [-a] pdf_filename

Convert PDF to named images directly.

positional arguments:
  pdf_filename          Filename of the PDF to convert

options:
  -h, --help            show this help message and exit
  -n NAMES_FILENAME, --names_filename NAMES_FILENAME
                        Filename containing image names
  -o OUT_DIR, --out_dir OUT_DIR
                        Directory to save the output images
  -a, --all_pages       Convert all pages (default is to convert only the last
                        page)
```
