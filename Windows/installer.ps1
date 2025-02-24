$code = $jsonObject.inputs.authcode
if ($code -match '--code="([^"]+)"') {$code2 = '--code='+$matches[1]}
choco install chrome-remote-desktop-host -y -r --no-progress --ignore-checksums
$code = '& "${Env:PROGRAMFILES(X86)}\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" '+$code2+' --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name='+$INSTANCE+' --pin=123456'
Invoke-Expression $code
