﻿601,100
602,"Cube.GeneralLedger.LoadFromODBC"
562,"ODBC"
586,"AdventureWorksDW 64"
585,"AdventureWorksDW 64"
564,"user"
565,"lFIKln4lRdHAeXFndsWQkXofOKkJ4`MNa9Ds=a@ZO2]W5j1TifwM@DVzSjzmU;ilSK\wC6X7UQGPFz<KFbMC>2]uuK@<Fran;0qllLHKOHmYz[tsQmy[WBH\Dz6:5TmH1Hej;jim[tNNH2:BEi^s6:7:X=\TER2jiwo^4xpt<Ovjhq9s^wnLej8oA;nX03^upoP1aZjA"
559,1
928,0
593,
594,
595,
597,
598,
596,
800,
801,
566,15
SELECT CAST(ScenarioKey as TEXT) ScenarioKey,
	SUBSTR(DateKey, 1, 4) Yr,
	SUBSTR(DateKey, 5, 2) Mth,
	CAST(OrganizationKey as TEXT) OrganizationKey,
	CAST(DepartmentGroupKey AS TEXT) DepartmentGroupKey,
	CAST(AccountCodeAlternateKey as TEXT) AccountKey,
	SUM(Amount) Amount
FROM FactFinance a
	INNER JOIN DimAccount b ON a.AccountKey = b.AccountKey
GROUP BY SUBSTR(DateKey, 1, 4),
	SUBSTR(DateKey, 5, 2),
	OrganizationKey,
	DepartmentGroupKey,
	ScenarioKey,
	AccountCodeAlternateKey
567,","
588,"."
589,
568,""""
570,
571,
569,0
592,0
599,1000
560,0
561,0
590,0
637,0
577,7
vScenarioKey
vYear
vMonth
vOrganizationKey
vDepartmentGroupKey
vAccountKey
vAmount
578,7
2
2
2
2
2
2
1
579,7
1
2
3
4
5
6
7
580,7
0
0
0
0
0
0
0
581,7
0
0
0
0
0
0
0
582,7
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=33ColType=827
603,0
572,8

#****Begin: Generated Statements***
#****End: Generated Statements****

sCubeName = 'General Ledger';
CubeClearData( sCubeName );

cCurrency = 'Local';
573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,15

#****Begin: Generated Statements***
#****End: Generated Statements****

If(StringToNumber(vMonth) > 6);
    vYear = NumberToString(StringToNumber(vYear) + 1);
EndIf;

If(vDepartmentGroupKey @= '1');
    vDepartmentGroupKey = '2';
EndIf;

If( CellIsUpdateable(sCubeName, vScenarioKey, vYear, vMonth, cCurrency, vOrganizationKey, vDepartmentGroupKey, vAccountKey, 'AMOUNT') = 1);
  CellPutN(vAmount, sCubeName, vScenarioKey, vYear, vMonth, cCurrency, vOrganizationKey, vDepartmentGroupKey, vAccountKey, 'AMOUNT');
EndIf;
575,3

#****Begin: Generated Statements***
#****End: Generated Statements****
576,CubeAction=1511DataAction=1503CubeLogChanges=0
930,0
638,1
804,0
1217,0
900,
901,
902,
903,
906,
929,
907,
908,
904,0
905,0
909,0
911,
912,
913,
914,
915,
916,
917,0
918,1
919,0
920,50000
921,""
922,""
923,0
924,""
925,""
926,""
927,""
