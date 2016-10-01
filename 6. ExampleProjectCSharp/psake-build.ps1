properties {
$base_dir = Resolve-Path .
$build_dir = "$base_dir\psake-build"
$sln_file = "$base_dir\BuildExample.sln"
$nunit_path = "$base_dir\packages\NUnit-2.6.2 Executable\bin\nunit-console.exe"
$test_asm_name = "$build_dir\BuildExampleLibTest.dll"
}

task Clean {
remove-item -force -recurse $build_dir -ErrorAction SilentlyContinue
}

task Init -depends Clean {
new-item $build_dir -itemType directory
}

Task Compile -depends Init {
Exec {msbuild $sln_file /p:OutputPath=$build_dir /nologo /p:Configuration=Release}
}

Task RunTests -depends Compile {
   exec {&$nunit_path $test_asm_name /nodots}
}