﻿601,100
602,"Dim.Employee.LoadFromFile"
562,"CHARACTERDELIMITED"
586,"C:\TM1\cxmd\Data\Employee.csv"
585,"C:\TM1\cxmd\Data\Employee.csv"
564,
565,"g\ODRTvaQqk=l?wk113cOG7\X7lm6gWr0SutG:5hy`:<=@UlH>yw3KXrNIqvvlEV:kq[SW>LtS\tkK@m[z7?XCsQA9sQybpgY1DzwfNdfML`MqAKF0rJZ??rfJB\u2D\lRcnTp2QD\Wh^qtBu@C8Hj7>;XzSlBU\rlPQgr;]onWZcFfUJYGPRom7Y=gSouxC]3lcR?Cb"
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
566,8
Select DimEmployee.EmployeeKey, DimEmployee.ParentEmployeeKey,
  DimEmployee.EmployeeNationalIDAlternateKey,
  DimEmployee.ParentEmployeeNationalIDAlternateKey,
  DimEmployee.SalesTerritoryKey, DimEmployee.FirstName, DimEmployee.LastName,
  DimEmployee.MiddleName, DimEmployee.NameStyle, DimEmployee.Title,
  DimEmployee.Phone, DimEmployee.EmailAddress, DimEmployee.DepartmentName
From DimEmployee
ORDER BY DimEmployee.DepartmentName,DimEmployee.FirstName
567,","
588,"."
589,","
568,""""
570,
571,
569,1
592,0
599,1000
560,0
561,0
590,0
637,0
577,13
vEmployeekey
vParentemployeekey
vEmployeenationalidalternatekey
vParentemployeenationalidalternatekey
vSalesterritorykey
vFirstname
vLastname
vMiddlename
vNamestyle
vTitle
vPhone
vEmailaddress
vDepartmentname
578,13
1
1
2
2
1
2
2
2
2
2
2
2
2
579,13
1
2
3
4
5
6
7
8
9
10
11
12
13
580,13
0
0
0
0
0
0
0
0
0
0
0
0
0
581,13
0
0
0
0
0
0
0
0
0
0
0
0
0
582,13
VarType=33ColType=827
VarType=33ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=33ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
603,0
572,51

#****Begin: Generated Statements***
#****End: Generated Statements****

## This Process Builds the Employee Dimension ##


cDimName = 'Employee';
cTopNode = 'All Employees By Dept';

DatasourceNameForServer = 'Employee.csv';
DatasourceNameForClient = 'Employee.csv';

#DimensionDeleteallElements(cDimName);

## Create Dimension if it does not exist ##
IF ( DimensionExists(cDimName) = 0 ) ;
  DimensionCreate(cDimName);
ENDIF;

Dimensionsortorder(cDimName,'ByInPut','Ascending','ByHierarchy','Ascending');

## Insert constant elements ##
DimensionElementInsert(cDimName,'',cTopNode,'C');


## Unwind the Dimension ##
# Iterate through dimensions and for each consolidated element, disconnect its components
nElementCount = DIMSIZ ( cDimName );
iCount = 1;

WHILE ( iCount <= nElementCount );
  sElement = DIMNM ( cDimName, iCount );
  IF ( DTYPE ( cDimName, sElement ) @= 'C' );
    nChildren = ELCOMPN ( cDimName, sElement );
    iChild = nChildren;
    WHILE ( iChild > 0 );
      sChild = ELCOMP ( cDimName, sElement, iChild );
      DimensionElementComponentDelete ( cDimName, sElement, sChild );
      iChild = iChild - 1;
    END;
  ENDIF;
  iCount = iCount + 1;
END;


## Insert Attributes ##
cAttr1 = 'Full Name';


AttrInsert(cdimName,'',cAttr1,'A');
573,13

#****Begin: Generated Statements***
#****End: Generated Statements****

## Clean Metadata ##
sEmployeeID = Trim(vEmployeenationalidalternatekey);

## Insert n Level Elements and rollup into Associated Parent ##
DimensionElementInsert(cDimName,'',sEmployeeID, 'N');
DimensionElementInsert(cDimName,'',vDepartmentname,'C');

DimensionElementcomponentAdd(cDimName,vDepartmentName,sEmployeeID,1);
DimensionElementcomponentAdd(cDimName,cTopNode,vDepartmentName,1);
574,12

#****Begin: Generated Statements***
#****End: Generated Statements****

## Clean Metadata ##
sEmployeeID = Trim(vEmployeenationalidalternatekey);


## Insert Attributes ##
cAttr = 'Full Name';
sValue = vFirstName | ' ' | vLastName | ' ' | vMiddleName;
AttrPutS(sValue,cDimName,sEmployeeID,cAttr);
575,7

#****Begin: Generated Statements***
#****End: Generated Statements****



ExecuteProcess('Bedrock.Dim.Sub.Create.All', 'pDimension', cDimName, 'pSubset', 'All Elements');
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
