    $assemblyFile = "$env:APPVEYOR_BUILD_FOLDER\src\DirectoryBuild.props"
    $regex = new-object System.Text.RegularExpressions.Regex ('((\<Version\>)(.*)(\<\/Version\>))', 
         [System.Text.RegularExpressions.RegexOptions]::MultiLine)
    $content = [IO.File]::ReadAllText($assemblyFile)
    $version = $null
    $match = $regex.Match($content)
    if($match.Success) {
        $version = $match.groups[2].value
    }

    $version = "$version.$env:APPVEYOR_BUILD_NUMBER"
    Update-AppveyorBuild -Version $version
