﻿601,100
602,"}tp_get_top_node"
562,"NULL"
586,
585,
564,
565,"m6wXV`x6xAvvma2TH42nlSC9AI``k82ARF^XM=<cd]]l1;xznpDztG7_W?7vYbX1]M[y1OTUPotisEorvFX3gi:xKY;jyO2Q0Yn8p[SG5G:hlL2FXPOxw7jE^aSyNgRGGDIfchO0Q5ykr0Cn\VngfcN>E9:ZsBQybwmuk@izkutbFfws13;KF6\UETBhlV1udRM;EtuT"
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
566,0
567,","
588,"."
589,
568,""""
570,
571,
569,0
592,0
599,1000
560,4
pExecutionId
pDim
pSubset
pControl
561,4
2
2
2
2
590,4
pExecutionId,"None"
pDim,"None"
pSubset,"None"
pControl,"Y"
637,4
pExecutionId,
pDim,
pSubset,
pControl,
577,0
578,0
579,0
580,0
581,0
582,0
572,118


#################################################################
## IBM Confidential
##
## OCO Source Materials
##
## BI and PM: pmpsvc
##
## (C) Copyright IBM Corp. 2008, 2009, 2010
##
## The source code for this program is not published or otherwise
## divested of its trade secrets, irrespective of what has been
## deposited with the U.S. Copyright Office.
#################################################################

cControlPrefix = '';
If (pControl @= 'Y');
cControlPrefix = '}';
EndIf;

#*** Log File Name
cTM1Process = cControlPrefix | 'tp_get_top_node';
StringGlobalVariable('gPrologLog');
StringGlobalVariable('gEpilogLog');
StringGlobalVariable('gDataLog');
vReturnValue = ExecuteProcess(cControlPrefix | 'tp_get_log_file_names',
'pExecutionId', pExecutionId, 'pProcess', cTM1Process, 'pControl', pControl);
If (vReturnValue <> ProcessExitNormal());
ProcessError;
EndIf;
cPrologLog = gPrologLog;
cEpilogLog = gEpilogLog;
cDataLog = gDataLog;
cTM1Log = cPrologLog;

cConfigDim = cControlPrefix | 'tp_config';
If (DimensionExists(cConfigDim) = 1);
cGenerateLog = ATTRS(cControlPrefix | 'tp_config', 'Generate TI Log', 'String Value');
Else;
cGenerateLog = 'N';
EndIf;

#***

If (cGenerateLog @= 'Y');
TextOutput(cTM1Log, TIMST(NOW, '\Y-\m-\d \h:\i:\s'), 'Parameters: ', pDim, pSubset, pControl);
EndIf;

StringGlobalVariable('gTopNode');
NumericGlobalVariable('gTopLevel');

If (DimensionExists(pDim) = 0);
ProcessError;
EndIf;

If (SubsetExists(pDim, pSubset) = 0);
ProcessError;
EndIf;

cSubsetSize = SubsetGetSize(pDim, pSubset);
gTopNode = '';
gTopLevel = -1;

#IF(1)
If (cSubsetSize = 0);

gTopNode = '';
gTopLevel = -1;

#IF(1)
ElseIf (cSubsetSize = 1);

gTopNode = SubsetGetElementName(pDim, pSubset, 1);
gTopLevel = 0;

#IF(1)
Else;

vNode = SubsetGetElementName(pDim, pSubset, 1);

vIndex = 1;
While (vIndex <= cSubsetSize);

StringGlobalVariable('gParentInSubset');
vReturnValue = ExecuteProcess(cControlPrefix | 'tp_get_parent_in_subset', 'pExecutionId', pExecutionId,
'pDim', pDim, 'pSubset', pSubset, 'pNode', vNode);
If (vReturnValue <> ProcessExitNormal());
ProcessError;
EndIf;

If (gParentInSubset @= '');
vIndex = cSubsetSize;
Else;
vNode = gParentInSubset;
EndIf;

vIndex = vIndex + 1;
End;

gTopNode = vNode;
gTopLevel = ELLEV(pDim, gTopNode);

#IF(1)
EndIf;

If (cGenerateLog @= 'Y');
TextOutput(cTM1Log, TIMST(NOW, '\Y-\m-\d \h:\i:\s'), 'Top node and level', gTopNode, NumberToString(gTopLevel));
EndIf;

#*** No error

If (cGenerateLog @= 'Y');
TextOutput(cTM1Log, TIMST(NOW, '\Y-\m-\d \h:\i:\s'), 'The end has been reached.');
EndIf;



573,1

574,1

575,1

576,
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
