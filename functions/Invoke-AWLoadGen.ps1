<#
    .SYNOPSIS
        Runs selected workload against AdventureWorks Database.

    .DESCRIPTION
        Runs selected workload against AdventureWorks Database.

    .PARAMETER SqlInstance
        Sql Server to run load against.

    .PARAMETER Database
        AdventureWorks database to run load against.

    .EXAMPLE
        Invoke-AWLoadGen -SqlInstance localhost\sql2016 -Database

    .NOTES
        Created by Jess Pomfret, 2018 to generate load against an AdventureWorks database.

    #>
function Invoke-AWLoadGen {

    param (
        $SqlInstance,
        $Database,
        $LoadType #read, write, readWrite
    )
    write-verbose ("Starting load generation against {0} on {1}" -f $Database, $SqlInstance)

    #$svr = Connect-DbaInstance -SqlInstance $SqlInstance

    # get queries based on Read/Write

    $queryFile = Get-WorkloadFiles -WorkloadType Write
    Invoke-SqlCmd2 -ServerInstance $SqlInstance -Database $Database -InputFile $queryFile

    # run time
    # load/queries per second
    # threads

}