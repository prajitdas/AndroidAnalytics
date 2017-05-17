import databaseHandler as db
import json
import sys

dbHandle=db.dbConnectionCheck()
cursor=dbHandle.cursor(buffered=True)

sqlStatement="SELECT name, permission_group, permission_flags, protection_level FROM googleplaystore.permissions WHERE protection_level NOT IN ('normal','dangerous','signatureOrSystem','signature|installer','signature|installer|verifier','signature|preinstalled|appop|pre23','signature|preinstalled|appop|pre23|development','signature|privileged','signature|privileged|development','signature|privileged|development|appop','signature|privileged|installer','signature|setup') ORDER BY permission_group DESC;"

permDict={}
permList=[]
try:
	cursor.execute('SET NAMES utf8;')
	cursor.execute('SET CHARACTER SET utf8;')
	cursor.execute('SET character_set_connection=utf8;')
	cursor.execute(sqlStatement)
	resultSet = cursor.fetchall()
	print len(resultSet)
	for row in resultSet:
		try:
			permName=str(unicode(row[0]))
			permList.append(permName.split(".")[-1])
			permission_group=str(unicode(row[1]))
			permission_flags=str(unicode(row[2]))
			protection_level=str(unicode(row[3]))
		except:
			# print '"'+row[0]+'"'
			# print row
			# print type(row[0])
			# print type(row[1])
			# print type(row[2])
			# print type(row[3])
			# print row[1]
			# print row[2]
			# print row[3]
			print 'Unexpected error: '+str(sys.exc_info()[0])
			continue
except:
	print 'Unexpected error: '+str(sys.exc_info()[0])

print set(permList)
print len(set(permList))
# print len(permList)
cursor.close
dbHandle.close()
