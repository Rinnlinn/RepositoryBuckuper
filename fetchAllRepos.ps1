$AllDirectory = Get-ChildItem -Directory -Name
foreach($dirName in $AllDirectory) {
  cd $dirName
  $location = Get-Location
  echo "$location fetch all"
  git fetch --all
  cd ..
}
