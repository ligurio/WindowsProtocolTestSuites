:: Copyright (c) Microsoft. All rights reserved.
:: Licensed under the MIT license. See LICENSE file in the project root for full license information.

@echo off

echo ==============================================
echo          Start to run LSAD test cases
echo ==============================================

set CurrentPath=%~dp0
call "%CurrentPath%..\..\..\..\common\setVsTestPath.cmd"
if ErrorLevel 1 (
	exit /b 1
)

%vstest% "..\bin\AD_ServerTestSuite.dll" /Settings:..\bin\Serverlocaltestrun.testrunconfig /Tests:"Microsoft.Protocols.TestSuites.ActiveDirectory.Lsad" /Logger:trx
pause