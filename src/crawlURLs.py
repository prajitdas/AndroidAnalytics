#!/usr/bin/python

# -*- coding: utf-8 -*-

from bs4 import BeautifulSoup
import urllib
import sys
from datetime import datetime
import io
import json
#------------------------------------------------------------------------------------------------------------------------
# import _mysql_exceptions
# import databaseHandler

# # Fire an DML SQL statement and commit data
# def dbManipulateData(dbHandle, sqlStatement):
# 	cursor = dbHandle.cursor()
# 	try:
# 		cursor.execute(sqlStatement)
# 		dbHandle.commit()
# 	except _mysql_exceptions.IntegrityError:
# 		print "data already there"
# 	except:
# 		print "Unexpected error:", sys.exc_info()[0]
# 		raise
# 
# # Hit a URL, extract URLs and Store new URLs back
# def extractMoreURLsAndStore(dbHandle, urlExtract):
# 	page = urllib.urlopen(urlExtract).read()
# 	soup = BeautifulSoup(''.join(page))
# 	data = soup.findAll(attrs={'class': 'card-click-target'})
# 
# 	for chunk in data:
# 		url = "https://play.google.com"+chunk['href']
# 		packageName = url.split("=")
# 		sqlStatement = "INSERT INTO appurls(app_pkg_name, app_url) VALUES('"+packageName[1]+"', '"+url+"');"
# 		dbManipulateData(dbHandle, sqlStatement)
# 
# # Update "urls_extracted" column to mark urls have been extracted
# def updateURLsExtracted(dbHandle, tableId):
# 	sqlStatement = "UPDATE appurls SET urls_extracted=1 WHERE id="+str(tableId)+";"
# 	dbManipulateData(dbHandle, sqlStatement)
# 
# # Get URLs for extracting more URLs
# def getURLsForExtractingMoreURLs(dbHandle):
# 	cursor = dbHandle.cursor()
# 	sqlStatement = "SELECT id, app_url FROM appurls WHERE urls_extracted = 0;"
# 	try:
# 		cursor.execute(sqlStatement)
# 		queryOutput = cursor.fetchall()
# 	except:
# 		print "Unexpected error:", sys.exc_info()[0]
# 		raise
# 	for row in queryOutput:
# 		updateURLsExtracted(dbHandle,row[0])
# 		extractMoreURLsAndStore(dbHandle,row[1])
# 
# # Initial data collection using basic alphabetical search for apps
# def oneTimeCreateListOfAppsFromAlphabeticalSearch(dbHandle):
# 	alpahbeticalSearchStrings=["https://play.google.com/store/search?q=a&c=apps","https://play.google.com/store/search?q=b&c=apps","https://play.google.com/store/search?q=c&c=apps","https://play.google.com/store/search?q=d&c=apps","https://play.google.com/store/search?q=e&c=apps","https://play.google.com/store/search?q=f&c=apps","https://play.google.com/store/search?q=g&c=apps","https://play.google.com/store/search?q=h&c=apps","https://play.google.com/store/search?q=i&c=apps","https://play.google.com/store/search?q=j&c=apps","https://play.google.com/store/search?q=k&c=apps","https://play.google.com/store/search?q=l&c=apps","https://play.google.com/store/search?q=m&c=apps","https://play.google.com/store/search?q=n&c=apps","https://play.google.com/store/search?q=o&c=apps","https://play.google.com/store/search?q=p&c=apps","https://play.google.com/store/search?q=q&c=apps","https://play.google.com/store/search?q=r&c=apps","https://play.google.com/store/search?q=s&c=apps","https://play.google.com/store/search?q=t&c=apps","https://play.google.com/store/search?q=u&c=apps","https://play.google.com/store/search?q=v&c=apps","https://play.google.com/store/search?q=w&c=apps","https://play.google.com/store/search?q=x&c=apps","https://play.google.com/store/search?q=y&c=apps","https://play.google.com/store/search?q=z&c=apps"]
# 	for searchString in alpahbeticalSearchStrings:
# 		extractMoreURLsAndStore(dbHandle, searchString)
#------------------------------------------------------------------------------------------------------------------------

# Extract app data and store in DB
def extractAppDataAndStore(urlExtract):
	page = urllib.urlopen(urlExtract).read()
	soup = BeautifulSoup(''.join(page))
	
	app_dict = {}
	
	app_dict['app_pkg_name'] = urlExtract.split("=")[-1]

	for div in soup.findAll(attrs={'class': 'document-title'}):
		for child in div.children:
			if not child.string == ' ':
				app_dict['app_name'] = child.string

	for div in soup.findAll(attrs={'class': 'document-subtitle','class': 'primary'}):
		for child in div.children:
			if not child.string == ' ':
				app_dict['developer_name'] = child.string

	for div in soup.findAll(attrs={'class': 'document-subtitle','class': 'category'}):
		for child in div.children:
			if not child.string == ' ':
				app_dict['app_category'] = child.string

	appDesc = ""
	for div in soup.findAll(attrs={'class': 'id-app-orig-desc'}):
		print type(div.string).__name__
		print div.__class__.__name__ == "Tag"
		print div.string
		for desc in div.descendants:
			print desc
# 		if type(div.string).__name__ != "NoneType":
# 			if div.__class__.__name__ == "Tag":
# 				for child in div.children:
# 					print "child1"
# 					print child
# 					if not child.string == ' ':
# 						appDesc = appDesc + child.string

# 		if type(div.string).__name__ != "NoneType":
# 			if div.__class__.__name__ == "Tag":
# 				for child in div.children:
# 					print "child1"
# 					print child
# 					if not child.string == ' ':
# 						appDesc = appDesc + child.string
# 			else:
# 				for descendant in div.descendants:
# 					print "child2"
# 					print descendant
# 					appDesc = appDesc + descendant.string
# 		else:
# 			if div.__class__.__name__ == "Tag":
# 				for child in div.children:
# 					print "child3"
# 					print child
# 					if not child.string == ' ':
# 						appDesc = appDesc + child.string
# 			else:
# 				for descendant in div.descendants:
# 					print "child4"
# 					print descendant
# 					appDesc = appDesc + descendant.string

# 		for child in div.children:
# 			if type(child.string).__name__ != "NoneType":
# 				appDesc = appDesc + child.string
	print appDesc
	
	app_dict['app_desc'] = appDesc
		
	for div in soup.findAll(attrs={'class': 'score'}):
		for child in div.children:
			if not child.string == ' ':
				app_dict['review_rating'] = eval(child.string)

	for div in soup.findAll(attrs={'class': 'reviews-num'}):
		for child in div.children:
			if not child.string == ' ':
				app_dict['review_count'] = eval(child.string.replace(",",""))

	whatsNew = ""				
	for div in soup.findAll(attrs={'class': 'recent-change'}):
		if type(div.string).__name__ != "NoneType":
			if div.__class__.__name__ == "Tag":
				for child in div.children:
					if not child.string == ' ':
						whatsNew = child.string
			else:
				for descendant in div.descendants:
					whatsNew = whatsNew + descendant(descendant.string)
	app_dict['whats_new'] = whatsNew
	
	pairing = 0
	key = ""
	value = ""
	for div in soup.findAll(attrs={'class': 'details-section-contents', 'class': 'meta-info'}):
		for child in div.children:
			if type(child.string).__name__ != "NoneType":
				if child.__class__.__name__ == "Tag":
# 					print type(child.string)
# 					print child.string
					if pairing == 0:
						key = child.string.strip().replace(' ','_')
						pairing = 1
					else:
						value = child.string.strip()			
						pairing = 0
# 						print key, value, child
						app_dict[key] = value
	app_dict.pop("Developer", None)
	app_dict.pop("Permissions", None)
	app_dict.pop("Report", None)
	app_dict.pop("Size", None)
	app_dict['Installs'] = eval(app_dict['Installs'].split(" ")[-1].replace(",",""))
	app_dict['Updated'] = datetime.strptime(app_dict['Updated'], '%B %d, %Y').date().isoformat()
	
	for div in soup.findAll(attrs={'class': 'content', 'class': 'contains-text-link'}):
		for child in div.children:
			if child.name == 'a':
				if child.string.strip() == 'Visit Website':
					app_dict['dev_website'] = child.attrs['href']
				elif child.string.strip().startswith('Email'):
					app_dict['dev_email'] = str(child.attrs['href']).split(":")[-1]

	for div in soup.findAll(attrs={'class': 'content', 'class': 'contains-text-link', 'class': 'physical-address'}):
		app_dict['dev_location'] = div.string
	
# 	from pprint import pprint
# 	pprint(app_dict)
	return app_dict

#------------------------------------------------------------------------------------------------------------------------
# # Update "parsed" column to mark app data has been parsed
# def updateParsed(dbHandle, tableId):
# 	sqlStatement = "UPDATE appurls SET parsed=1 WHERE id="+str(tableId)+";"
# 	dbManipulateData(dbHandle, sqlStatement)
# 
# # Get URLs for app data parsing
# def getURLsForParsingAppData(dbHandle):
# 	cursor = dbHandle.cursor()
# 	sqlStatement = "SELECT id, app_url FROM appurls WHERE parsed = 0;"
# 	try:
# 		cursor.execute(sqlStatement)
# 		queryOutput = cursor.fetchall()
# 	except:
# 		print "Unexpected error:", sys.exc_info()[0]
# 		raise
# 	for row in queryOutput:
# 		updateParsed(dbHandle,row[0])
# 		extractAppDataAndStore(dbHandle,row[1])
#------------------------------------------------------------------------------------------------------------------------

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python crawlURLs [i|m|a]\n')
		sys.exit(1)

# 	dbHandle = databaseHandler.dbConnectionCheck() # DB Open
	app_info = {}
	
	app_info["bbc.mobile.news.ww"] = extractAppDataAndStore("https://play.google.com/store/apps/details?id=bbc.mobile.news.ww")
	app_info["com.google.android.apps.genie.geniewidget"] = extractAppDataAndStore("https://play.google.com/store/apps/details?id=com.google.android.apps.genie.geniewidget")
	open("data.json",'w').write(json.dumps(app_info, indent=4))
	
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.akakao.neon_simple")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.akakao.oguduck_g")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.akakao.somgom_alllove")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.akakao.sscookies")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.com.ponkuki.kakaotalk.theme.dreaminge")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.hedge.cute")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.hedge.springspring")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.iconnect.bbonobbono")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.iconnect.bluee")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.iconnect.Fashionitem.spring")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.iconnect.HelloSpring")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.iconnect.helloyomi.flowerrain")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.iconnect.ILoveYou")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.iconnect.like.flower")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.iconnect.love_symbol")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.iconnect.RestTime")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.iconnect.smilesmile")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.iconnect.spring")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.iconnect.SpringTalk2")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.iconnect.SundayB.zzaltalk")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.iconnect.themoon")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.kakao.iconnect.wilky_talk")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a.league.live")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=a00000020.marco.ifrases")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=aa.myname3d.live")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=aa.tradeave.net")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abc.cretotech.hnkmusic")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abc.ssd.TrafficInfoCheck")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.animalsquiz")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.doeshelikemequiz")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.electricstungun")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.finddifferencegamear")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.hangmangame")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.hangmanspanish")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.lovetest")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.numbersgame")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.personalityexam")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.photodress")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.photoinsuit")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.racinggamear")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.shakthifm")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.toktokracinggame")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.whatanimalamiquiz")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=abdelrahman.whereshouldyoulivequiz")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=acdevelopapp.panda.fun.shooting.free")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=ace.airstrike.force")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=ace.striker.wroldwar")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=aceim.protocol.snuk182.icq")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=achievement.more")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=achopijo.billionaire.clicker")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=ackmaniac.apppermission")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=acogame.chiecnonkydieu")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=acogame.wordsearch")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=activision.mw3lwp")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=ad.net.in1.smarts.cpu")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=ad.net.in1.smarts.server")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=adeliina.net.missionpossible")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=advance.converter")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=advanced.speed.booster")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=adventure.mario.game")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=adylitica.android.anysend")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=aeffectkey.shortcut.full.lite")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=aero.sita.lab.resmobileweb.android.mh")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=af.survival.guide")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=afictive.messagetranslator")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=after.bye")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=agaming.childrenscoloring")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=agaming.defender.city")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=agaming.seabattle")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=age.of.civilizations.asia.jakowski")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=age.of.civilizations.asia.jakowski.lite")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=age.of.civilizations.europe.jakowski")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=age.of.civilizations.europe.jakowski.lite")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=age.of.civilizations.jakowski")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=age.of.civilizations.jakowski.lite")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=age.war")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=ahbgames.describeyadivinaapp.com")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.A3DChartsMobile")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.A3DChartsMobilePro")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.acornrain.icecreamblast")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.adc")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.AddictiveSudokuNew")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.AfterInjuryFrozenAnnaAPK")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.air.air.com.tabc.gsn")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.air.BridalShop")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.air.com.A2and2.rcnkaraoke")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.air.com.devgameapp.F1CookingGame")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.air.com.hitentertainment.CastleGames")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.air.com.jessoft.flvplayer.FLVPlayer")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.air.com.jessoft.flvplayer.MP4Player")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.air.MonsterGirls.FrankieEyeCare")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.air.RoyalGames.PeanutButterJellyDonutMuffins")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.air.SnowflakeAir")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.Air4Android")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.AlphabetUpperCase")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.android.BarbarasSecondChildBirth")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.android.DoggyBecomesMommy")
# 	extractAppDataAndStore("https://play.google.com/store/apps/details?id=air.ANIMALES")
#------------------------------------------------------------------------------------------------------------------------

# 	startTime = datetime.datetime.now()
# 	if sys.argv[1] == "i":
# 		oneTimeCreateListOfAppsFromAlphabeticalSearch(dbHandle) # First level of search for app urls
# 	elif sys.argv[1] == "m":
# 		getURLsForExtractingMoreURLs(dbHandle) # Second level of search for app urls
# 	elif sys.argv[1] == "a":
# 		getURLsForParsingAppData(dbHandle) # Extract app data
# 	else:
# 		sys.stderr.write('Usage: python crawlURLs [i|m|a]\n')
# 	endTime = datetime.datetime.now()
# 	print "Execution time was: "(endTime-startTime)

# 	dbHandle.close() #DB Close
#------------------------------------------------------------------------------------------------------------------------

if __name__ == "__main__":
	sys.exit(main(sys.argv))
