select av.NAME, di.DOMAINNAME, app.URLIDENTIFIER
from application_AV av
	JOIN APPLICATION app on app.UUID=av.OWNERID
	JOIN DOMAININFORMATION di on di.DOMAINID = app.DOMAINID

SELECT pc.ID as ID, pcav.NAME as [NAME], pcav.TEXTVALUE
FROM PREVIEWCONTEXT pc
	JOIN PREVIEWCONTEXT_AV pcav on pc.UUID = pcav.OWNERID

DELETE FROM PREVIEWCONTEXT_AV
WHERE OWNERID in (select uuid
from PREVIEWCONTEXT
WHERE ID = 'ufh_AAABU4UAAAFo_XFkPp8n')

DELETE from PREVIEWCONTEXT where id = 'ufh_AAABU4UAAAFo_XFkPp8n'

from repository r
SELECT di.DOMAINNAME
JOIN DOMAININFORMATION di on di.DOMAINID = r.REPOSITORYDOMAINID
where r.uuid='1Pt_AAABARoAAAFoZbV5LL37'

SELECT COUNT(*)
from PAGELETENTRYPOINT
WHERE DYNAMICFLAG = 0;


SELECT *
FROM ISORDER o
WHERE o.ANONYMOUSFLAG = 1

select *
FROM BASICPROFILE
where EMAIL='jm@jometzner.de'

select * from REPOSITORY where REPOSITORYDOMAINID = 'go5_AAAB_44AAAF1A2HeH0_6'

select * from applicationdomainrelation WHERE APPLICATIONUUID = 'hWh_AAABxtgAAAF1fVLeH0_6'
