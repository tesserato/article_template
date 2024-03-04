$in = "C:/Users/tesse/Desktop/Files/pics/2021_07_04 formatura Sandra"
$out = "G:/My Drive/Coisas da Samara/formatura sandra"

foreach ($file in (Get-ChildItem ($in + "/*.dng"))) {
  # $file.Name
  # $out + "/" + $file.Name.Replace($file.Extension, ".jpeg")
  magick ($in + "/" + $file.Name) -resize "1000>" ($out + "/" + $file.Name.Replace($file.Extension, ".jpeg"))
}
