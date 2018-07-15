
function Get-WorkloadFiles {
    param (
        $WorkloadType
    )

    # based on workload get files
    # be able to return multiple files

    return $(Get-ChildItem -Path .\internal\SQL\InsertJess.sql).FullName


    # pass in own location of scripts?
}