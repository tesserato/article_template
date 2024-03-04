# gswin64c.exe -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dPDFSETTINGS=/ebook -o file_o.pdf file.pdf

$items = Get-ChildItem -Recurse | Where-Object {$_.Extension -eq ".pdf"}

foreach ($item in $items) {
  $old = $item.Name
  $new = $item.Name.replace(".pdf","_ocr.pdf")
  $old
  # $new >>>>>> -dNOPAUSE -dSAFER -dBATCH
  gswin64c.exe  -sDEVICE=pdfocr8 -sOCRLanguage="por" -o $new $old
}

# gswin64c.exe -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE="Processo Regimento.pdf" -dBATCH "regimento 01.pdf" "regimento 02.pdf"

# gswin64c.exe -sDEVICE=pdfocr8 -sOCRLanguage="por" -o "Processo Regimento OCR.pdf" "Processo Regimento.pdf"

# gswin64c.exe -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sDEVICE=pdfwrite -sOutputFile="Processo Regimento OCR comp.pdf" "Processo Regimento OCR.pdf"

# gswin64c.exe -sDEVICE=pdfwrite -sOUTPUTFILE="Processo Regimento OCR comp.pdf" -dCompatibilityLevel=1.4 -dPDFSETTINGS=ebook -dBATCH "Processo Regimento OCR.pdf"