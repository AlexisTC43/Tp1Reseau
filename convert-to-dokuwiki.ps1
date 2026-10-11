pandoc -f markdown -t dokuwiki --wrap=none -o index.txt index.md
[IO.File]::WriteAllText("$PWD\index.txt", ((Get-Content index.txt -Raw -Encoding UTF8) -replace '\{\{/images/', '{{:images:'))