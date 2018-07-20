
function Get-WorkloadFiles {
    param (
        $WorkloadType,
        $Path = '.\Internal\SQL\'
    )

    $files = @()
    foreach($file in $(Get-ChildItem -Path $Path)) {
        if($(get-content $file.FullName -First 1) -match $WorkloadType) {
            $files += $file.FullName
        }
    }

    return $files

}