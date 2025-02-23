$cursorPath = "$env:LOCALAPPDATA\Programs\cursor\Cursor.exe"
$cursorPathEscaped = $cursorPath -replace '\\', '\\'

$registryContent = @"
Windows Registry Editor Version 5.00

;=================================
; 1) RIGHT-CLICK ON FOLDER BACKGROUND
;=================================
[HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWithCursor]
@="Open with Cursor"
"Icon"="$cursorPathEscaped"

[HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWithCursor\command]
@="\`"$cursorPathEscaped\`" \`"%V\`""

;=================================
; 2) RIGHT-CLICK ON ANY FILE
;=================================
[HKEY_CLASSES_ROOT\*\shell\OpenWithCursor]
@="Open with Cursor"
"Icon"="$cursorPathEscaped"

[HKEY_CLASSES_ROOT\*\shell\OpenWithCursor\command]
@="\`"$cursorPathEscaped\`" \`"%1\`""

;=================================
; 3) RIGHT-CLICK ON ANY FOLDER
;=================================
[HKEY_CLASSES_ROOT\Directory\shell\OpenWithCursor]
@="Open with Cursor"
"Icon"="$cursorPathEscaped"

[HKEY_CLASSES_ROOT\Directory\shell\OpenWithCursor\command]
@="\`"$cursorPathEscaped\`" \`"%1\`""
"@

$registryContent | Out-File -FilePath "OpenWithCursorAll.reg" -Encoding Unicode
Write-Host "Archivo OpenWithCursorAll.reg creado exitosamente con la ruta: $cursorPath" 