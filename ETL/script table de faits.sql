/* script de selection pour la table de fait */

SELECT 

NUMACC,
COM,
CATR,
CATV,
SUM(TO_NUMBER(TTUE)),
SUM(TO_NUMBER(TBG)),
SUM(TO_NUMBER(TBL)),
SUM(TO_NUMBER(TINDM)),
COUNT(*)

FROM "TMP_TABLE"

GROUP BY NUMACC;




/* script de selection pour la table des villes */

SELECT 

COM,
NOM_DE_LA_COMMUNE,
CODE_POSTAL,

FROM "TMP_TABLE"

GROUP BY 1,2,3;




/* script de selection pour la table des CP */

SELECT 

CODE_POSTAL,
DEP,

FROM "TMP_TABLE"

GROUP BY 1,2;


