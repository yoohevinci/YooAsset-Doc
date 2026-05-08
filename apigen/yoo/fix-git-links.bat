@echo off
setlocal

REM Fix GitHub source links generated from DocFX YAML.
REM Target repository and branch are read from docfx.json:
REM globalMetadata.remoteRepositoryUrl
REM globalMetadata.remoteRepositoryBranch

set "SCRIPT_DIR=%~dp0"

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$ErrorActionPreference = 'Stop';" ^
  "$root = $env:SCRIPT_DIR;" ^
  "$configPath = Join-Path $root 'docfx.json';" ^
  "if (-not (Test-Path $configPath)) { throw ('Missing config file: ' + $configPath); }" ^
  "$config = Get-Content $configPath -Raw | ConvertFrom-Json;" ^
  "$repo = [string]$config.globalMetadata.remoteRepositoryUrl;" ^
  "$branch = [string]$config.globalMetadata.remoteRepositoryBranch;" ^
  "if ([string]::IsNullOrWhiteSpace($repo)) { throw 'Missing globalMetadata.remoteRepositoryUrl in docfx.json'; }" ^
  "if ([string]::IsNullOrWhiteSpace($branch)) { $branch = 'main'; }" ^
  "$repo = $repo.TrimEnd('/');" ^
  "$replacement = $repo + '/blob/' + $branch;" ^
  "$pattern = 'https://github\.com/yoohevinci/YooAsset-API(?:\.git)?/blob/[^/\s\)]+';" ^
  "Write-Host ('Target source link prefix: ' + $replacement);" ^
  "$targets = @(" ^
  "  (Join-Path $root '..\..\output-api')," ^
  "  (Join-Path $root '..\..\yoo-website\versioned_docs\version-3.0.x\005-api')," ^
  "  (Join-Path $root '..\..\yoo-website\versioned_docs\version-2.3.x\005-api')" ^
  ");" ^
  "$changed = 0;" ^
  "foreach ($target in $targets) {" ^
  "  $fullTarget = [System.IO.Path]::GetFullPath($target);" ^
  "  if (-not (Test-Path $fullTarget)) {" ^
  "    Write-Host ('Skip missing directory: ' + $fullTarget);" ^
  "    continue;" ^
  "  }" ^
  "  Get-ChildItem -Path $fullTarget -Filter *.md -Recurse | ForEach-Object {" ^
  "    $path = $_.FullName;" ^
  "    $text = [System.IO.File]::ReadAllText($path);" ^
  "    $updated = [regex]::Replace($text, $pattern, $replacement);" ^
  "    if ($updated -ne $text) {" ^
  "      [System.IO.File]::WriteAllText($path, $updated, [System.Text.UTF8Encoding]::new($false));" ^
  "      $script:changed++;" ^
  "      Write-Host ('Fixed: ' + $path);" ^
  "    }" ^
  "  }" ^
  "}" ^
  "Write-Host ('Done. Changed files: ' + $changed);"

pause
