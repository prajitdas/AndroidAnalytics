import os
import httplib2
import time
import random
import re
import pickle
from bs4 import BeautifulSoup, element
import json
from pprint import pprint
import cssutils

charss = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ*'

def send_http_request(request_url):
	response,content = httplib2.Http().request(request_url)
	#Return content if successful
	if response['status'] == '200':
		return content
	else:
		return -1

def get_app_urls(): 

	for c in charss:
		print "https://crowd.xprivacy.eu/?letter="+c

	app_dict = {}

	base_url = "https://crowd.xprivacy.eu/?letter="
	
	for c in charss:
		myurl = base_url+c
		print "-----NOW PROCESSING CHARACTER %s-----"%c
		content = send_http_request(myurl)
		soup = BeautifulSoup(content, "html")
		 
		rows = soup.findAll('tr')[1:]
		count = 0
		for row in rows:
			link = row.td.a 
			
			applink = link['href']
			appname = link.text
			appid = applink.split("=")[-1].strip()
			
			app_dict[appid] = {
							   'id': appid,
							   'name': appname,
							   'url': 'https://crowd.xprivacy.eu/'+applink
							   }
			
			count+=1
			if count%10==0:
				print "%d out of %d rows processed"%(count, len(rows))
			
	open('appurls.json','w').write(json.dumps(app_dict,indent=4))

def get_app_versions():
	app_dict = json.loads(open('appurls.json').read())
	
	count = 0
	for app in app_dict:
		myurl = app_dict[app]['url']
		content = send_http_request(myurl)
		soup = BeautifulSoup(content, "html.parser")
		
		versions = soup.findAll("p")[4]
		
		app_dict[app]['versions'] = {}
		
		for version in versions:
	#		 print type(version)
			if isinstance(version, element.Tag):
				app_dict[app]['versions'][version.text] = {
														   'url': 'https://crowd.xprivacy.eu/'+version['href'],
															'version': version.text
														   }
		count+=1
		print "%d out of %d rows processed"%(count, len(app_dict))
	
	open('appurls_versions.json','w').write(json.dumps(app_dict,indent=4))   

def get_app_stats():
	app_dict = json.loads(open('appurls_versions.json').read())
	
	apps = set(app_dict.keys())
	completed = set(os.listdir("data"))
	remaining = apps.difference(completed)
	
	app_count = 0
	for app in remaining:
		versions = app_dict[app]['versions']
		  
		for version in versions:
			myurl = app_dict[app]['url']
			content = send_http_request(myurl)
			soup = BeautifulSoup(content, "html.parser")
			 
#			 print myurl
			 
			rows = soup.findAll("tr")[1:]
			 
#			 print len(rows) 
			 
			cur_restriction = ""
	 
			app_dict[app]['versions'][version]['stats'] = {}
			count = 0
			for row in rows:  
				count+=1
				perm_template = {
					 'all_allow':0,	#int
					 'all_deny':0,	 #int
					 'cur_allow':0,	 #int
					 'cur_deny':0,	 #int
					 'exception_yes':0,	 #int
					 'exception_no':0,	 #int
					 'ci95':0,	 #float
					 'used':False,	 #bool
					 'restriction': "", #string
					 'restriction_url': "", #string
					 'method': "",
					 'methods': {}, 
					 'last_update': "", #string
					 'updates': 0,  #int
					 }
	 
				eles = row.findAll("td")
				 
				perm_template['all_allow'] = int(eles[0].text.strip().split()[0]) 
				perm_template['all_deny'] = int(eles[0].text.strip().split()[2])
				perm_template['cur_allow'] = int(eles[1].text.strip().split()[0]) 
				perm_template['cur_deny'] = int(eles[1].text.strip().split()[2])
				perm_template['exception_yes'] = int(eles[2].text.strip().split()[0]) 
				perm_template['exception_no'] = int(eles[2].text.strip().split()[2])
				perm_template['ci95'] = float(eles[3].text.strip())
				perm_template['restriction'] = eles[5].text.strip()
				perm_template['method'] = eles[6].text.strip()
				perm_template['used'] = False if not eles[4].text.strip() else True
				perm_template['last_update'] = eles[7].text.strip()
				try:
					perm_template['updates'] = eles[8].text.strip()
				except:
					pass
				 
				# If row doesn have a class then its a new restriction thingie
				if not row.has_attr("class"):
					# Create a new restriction first and then append following methods to this guy
	#				 pprint(perm_template)
					perm_template['restriction_url'] = eles[5].a['href']
					cur_restriction = eles[5].text.strip()
					 
					app_dict[app]['versions'][version]['stats'][cur_restriction] = perm_template
					 
				else:			  
					app_dict[app]['versions'][version]['stats'][cur_restriction]["methods"][perm_template['method']] = perm_template
			 
		#filenameToStoreData = app+".json"
		filenameToStoreData = app
		open(os.path.join('data',filenameToStoreData),'w').write(json.dumps(app_dict[app],indent=4))
		del app_dict[app]
		app_count+=1
	if(app_count%200==0):
		time.sleep(600)
		print "Completed app %s, %d out of %d completed"%(app, app_count, len(remaining))
		
def main(argv):
	startTime = time.time()
	# get_app_urls()
	# get_app_versions()
	get_app_stats()
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was: '+executionTime+' ms'

if __name__ == "__main__":
	sys.exit(main(sys.argv))