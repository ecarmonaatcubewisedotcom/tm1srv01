601,100
602,"Cube.Retail.LoadFromFile"
562,"CHARACTERDELIMITED"
586,"C:\TM1\cxmd\Data\Retail.csv"
585,"C:\TM1\cxmd\Data\Retail.csv"
564,
565,"lR]WaJDU@9Maa]MKPMp25I<MB8qoq_Y_TArzPO@2aSTLdWq<]<n<z4j:8UHZwKvw7<V`f8v>YBrTdzm<1Z6uyS9V<6EsHixnbhEcd6yT@O@NpdRGV[ag>XB46Zb7Rif;npDGQaR]?:eNkGLjiUjzS0ILNWn:^l<Vy7\EYsgS:sXdH;piW]HamuG4uL4OcTn]M@c:cmSm"
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
566,1
select * from FactInternetSales
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
577,23
ProductKey
OrderDateKey
DueDateKey
ShipDateKey
CustomerKey
PromotionKey
CurrencyKey
SalesTerritoryKey
SalesOrderNumber
SalesOrderLineNumber
RevisionNumber
OrderQuantity
UnitPrice
ExtendedAmount
UnitPriceDiscountPct
DiscountAmount
ProductStandardCost
TotalProductCost
SalesAmount
TaxAmount
Freight
CarrierTrackingNumber
CustomerPONumber
578,23
2
2
1
1
1
1
1
2
2
1
1
1
1
2
1
1
1
1
1
1
1
2
2
579,23
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
14
15
16
17
18
19
20
21
22
23
580,23
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
581,23
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
582,23
VarType=32ColType=827
VarType=32ColType=827
VarType=33ColType=827
VarType=33ColType=827
VarType=33ColType=827
VarType=33ColType=827
VarType=33ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=33ColType=827
VarType=33ColType=827
VarType=33ColType=827
VarType=33ColType=827
VarType=32ColType=827
VarType=33ColType=827
VarType=33ColType=827
VarType=33ColType=827
VarType=33ColType=827
VarType=33ColType=827
VarType=33ColType=827
VarType=33ColType=827
VarType=32ColType=827
VarType=32ColType=827
603,0
572,12

#****Begin: Generated Statements***
#****End: Generated Statements****



sCube = 'Retail';

ExecuteProcess('Bedrock.Cube.Data.Clear', 'pCube', sCube, 'pFilter', 'Clear Cube');

DatasourceNameForServer = 'Retail.csv';
DatasourceNameForClient = 'Retail.csv';
573,5

#****Begin: Generated Statements***
#****End: Generated Statements****


574,54

#****Begin: Generated Statements***
#****End: Generated Statements****

#Version
#Year
#Period
#Currency
#Regio n
#Product
#Retail Measure


sVersion = 'Actual';
sYear = subst(OrderDateKey,1,4);
#sYear = subst(NumberToString(OrderDateKey),1,4);
#sYear = '2012'

# data source doesn't seem to have the month
# so randomly scatter data through the year
# sPeriod = 'Dec';
# Period is a random whole number between 1 and 12
sPeriod = NumberToString(INT(RAND * 12) + 1);

sCurrency = 'Local';

sRegion = AttrS('Sales Territory To Region Lookup', SalesTerritoryKey, 'Region');

# Remove dot from end of Product
nProductLength = LONG(ProductKey);
sLastCharacter = SUBST(ProductKey, nProductLength, 1);
If(sLastCharacter @= '.');
  ProductKey = SUBST(ProductKey, 1, nProductLength - 1);
EndIf;

# Arbr
#IF(DIMIX('Product', ProductKey) = 0);
#  ProductKey = '483';
#ENDIF;

#CellPutS(SalesOrderNumber,      sCube, sVersion, sYear, sPeriod, sCurrency, sRegion, ProductKey, 'Sales Order');
CellPutN(OrderQuantity,          sCube, sVersion, sYear, sPeriod, sCurrency, sRegion, ProductKey, 'Order Quantity');
CellPutN(UnitPrice,              sCube, sVersion, sYear, sPeriod, sCurrency, sRegion, ProductKey, 'Unit Price');
#CellPutN(ExtendedAmount,        sCube, sVersion, sYear, sPeriod, sCurrency, sRegion, ProductKey, 'Extended Amount');
#CellPutN(UnitPriceDiscountPct,  sCube, sVersion, sYear, sPeriod, sCurrency, sRegion, ProductKey, 'Unit Price Discount Pct');
#CellPutN(DiscountAmount,        sCube, sVersion, sYear, sPeriod, sCurrency, sRegion, ProductKey, 'Discount Amount');
CellPutN(ProductStandardCost,    sCube, sVersion, sYear, sPeriod, sCurrency, sRegion, ProductKey, 'Product Standard Cost');
#CellPutN(TotalProductCost,       sCube, sVersion, sYear, sPeriod, sCurrency, sRegion, ProductKey, 'Total Product Cost');
CellPutN(SalesAmount,           sCube, sVersion, sYear, sPeriod, sCurrency, sRegion, ProductKey, 'Sales Amount');
CellPutN(TaxAmount,             sCube, sVersion, sYear, sPeriod, sCurrency, sRegion, ProductKey, 'Tax Amount');
CellPutN(Freight,                sCube, sVersion, sYear, sPeriod, sCurrency, sRegion, ProductKey, 'Freight');
#CellPutN(CarrierTrackingNumber, sCube, sVersion, sYear, sPeriod, sCurrency, sRegion, ProductKey, 'Carrier Tracking Number');
#CellPutN(CustomerPONumber,      sCube, sVersion, sYear, sPeriod, sCurrency, sRegion, ProductKey, 'Customer PONumber');

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
938,0
937,
936,
935,
934,
932,0
933,0
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
