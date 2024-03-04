# gswin64c.exe -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dPDFSETTINGS=/ebook -o file_o.pdf file.pdf

# $items = Get-ChildItem -Recurse | Where-Object {$_.Extension -eq ".pdf"}
$items = Get-ChildItem | Where-Object {$_.Extension -eq ".epub"}


foreach ($item in $items) {
  $old = $item.Name
  $new = $item.Name.replace(".epub","_o.epub")
  $old
  $new
  ebook-convert$old $new 
}