# gswin64c.exe -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dPDFSETTINGS=/ebook -o file_o.pdf file.pdf

# $items = Get-ChildItem -Recurse | Where-Object {$_.Extension -eq ".pdf"}
$items = Get-ChildItem | Where-Object {$_.Extension -eq ".pdf"}


foreach ($item in $items) {
  $old = $item.Name
  $new = $item.Name.replace(".pdf","_o.pdf")
  $old
  $new
  gswin64c.exe -dNOPAUSE -dPreserveAnnots=false -dBATCH -sDEVICE=pdfwrite -dPDFSETTINGS=/ebook -o $new $old
}