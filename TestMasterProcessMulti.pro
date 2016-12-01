601,100
602,"TestMasterProcessMulti"
562,"NULL"
586,
585,
564,
565,"ohuRQnVecwsoGmNauUf7RY2`5M4G?YlthYJwE[lU51c2CtZ:VV8JRVkYgujwIj;NOqSN8QP`0TTQu>=0@gDb@l0c78\G;tHGf6<MbN4`Mqv^[fHFowNr3ic<6g0;44qyd3amAVudiBXWu@iHTq_9KxN<fZO`V4o7Jp2J_<adVLZz2SJnD@JDnludF0tN:Q=tMcw_17Q;"
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
560,1
pTimes
561,1
1
590,1
pTimes,10000000
637,1
pTimes,""
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,19

#****Begin: Generated Statements***
#****End: Generated Statements****

nCounter = 1;
nWait = 1;
 WHILE (nCounter <= pTimes);

	ExecuteProcess ('TestSlaveProcessMulti');
	nCounter =  nCounter + 1;
	nWait = nWait + 1;

	IF (nWait = 10000);
		ExecuteProcess ('Bedrock.Server.Wait','pWaitSec', '5');
		nWait = 1;
	ENDIF;


END;
573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,3

#****Begin: Generated Statements***
#****End: Generated Statements****
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
