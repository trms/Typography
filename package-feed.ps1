New-Item -Path packages -ItemType Directory

nuget add Build/Typography.GlyphLayout/bin/Release/Typography.GlyphLayout.1.0.0.nupkg -source packages/
nuget add Build/Typography.OpenFont/bin/Release/Typography.OpenFont.1.0.0.nupkg -source packages/
nuget add Build/Typography.TextBreak/bin/Release/Typography.TextBreak.1.0.0.nupkg -source packages/
nuget add Build/Typography.TextServices/bin/Release/Typography.TextServices.1.0.0.nupkg -source packages/

Compress-Archive -LiteralPath packages -DestinationPath "nuget-packages.zip"
Remove-Item packages -Recurse