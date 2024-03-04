# gswin64c.exe -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dPDFSETTINGS=/ebook -o file_o.pdf file.pdf

$items = Get-ChildItem -Recurse | Where-Object {$_.Extension -eq ".pdf"}

foreach ($item in $items) {
  $name = $item.Name.replace(".pdf","")
  gswin64c.exe -sDEVICE=pdfwrite -dSAFER -o "$name-%d.pdf" ($name + ".pdf") -c "<</Orientation 3>> setpagedevice"
}