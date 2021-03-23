#!/usr/bin/python3

"""
Split a PDF into even and odd pages for easy manual duplex printing.

Usage:
    ./split_pdf_even_odd.py pdf_to_split.pdf
Output:
    Two files, odd.pdf and even.pdf
"""

from PyPDF2 import PdfFileReader, PdfFileWriter
import sys

output_even = PdfFileWriter()
output_odd = PdfFileWriter()

initial_pdf = PdfFileReader(sys.argv[1])

for i in range(0, initial_pdf.numPages):
    page = initial_pdf.getPage(int(i))
    if not i % 2:
        output_odd.addPage(page)
    else:
        output_even.addPage(page)

with open("odd.pdf", "wb") as out_odd:
    output_odd.write(out_odd)

with open("even.pdf", "wb") as out_even:
    output_even.write(out_even)
