# gswin64c.exe -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dPDFSETTINGS=/ebook -o file_o.pdf file.pdf

$items = Get-ChildItem | Where-Object {$_.Extension -eq ".pdf"}

foreach ($item in $items) {
  $name = $item.Name.replace(".pdf","")
  gswin64c.exe -sDEVICE=png16m -dSAFER -r300  -o "$name-%d.png" ($name + ".pdf")
}