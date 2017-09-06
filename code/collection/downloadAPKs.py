#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on Apr 4, 2015
@author: Prajit Kumar Das
Usage: python downloadAPKs.py
'''

import os 
import urllib2
import sys
import databaseHandler
import time

# Update "downloaded" column to mark app has been downloaded
def updateDownloaded(dbHandle, tableId):
	sqlStatement = "UPDATE appurls SET downloaded=1 WHERE id="+str(tableId)+";"
	databaseHandler.dbManipulateData(dbHandle, sqlStatement)

# Download APK
def downloadAPK(dbHandle, tableId, appPackageName):
	URLPrefix = "http://dl3.apk-dl.com/store/download/details?id="
	APKURL = URLPrefix+appPackageName

	#Headers added because of HTTP 404 errors
	headers = { 'User-Agent' : 'Mozilla/5.0' }
	req = urllib2.Request(APKURL, None, headers)
	print "Downloading: ", APKURL

	# If the apps download directory doesn't exist just create it
	currentDirectory = os.getcwd()
	appsDownloadDirectory = currentDirectory+"/apps/"
	if not os.path.isdir(os.path.dirname(appsDownloadDirectory)):
		os.makedirs(appsDownloadDirectory)

	appDownloadFileLocation = appsDownloadDirectory+appPackageName+".apk"

	outFile = urllib2.urlopen(req)
	apkFile = open(appDownloadFileLocation,'wb')
	apkFile.write(outFile.read())
	apkFile.close()

	if os.path.getsize(appDownloadFileLocation) < 25 * 1024:
		os.remove(appDownloadFileLocation)
	else:
		updateDownloaded(dbHandle, tableId)

# Get URLs for app downloading
def getAppURL(dbHandle):
	cursor = dbHandle.cursor()

	#Temporary solution for Top Apps Clustering
	'''
  	appNames = ['com.miniclip.agar.io','com.google.android.apps.photos','com.amazon.mShop.android.shopping','com.emoji.coolkeyboard','com.hola.launcher','com.cmcm.locker','emoji.keyboard.emoticonkeyboard','com.emoji.keyboard.touchpal','com.linkedin.android.jobs.jobseeker','com.glassdoor.app','io.big5.jobs_now_hiring','com.infraware.office.link.lg','com.zingbox.manga.view','com.upp.mangadrawings','mobi.abcmouse.academy_goo','com.hbo.hbonow','net.zentertain.funvideo','com.nickonline.android.nickapp','tv.twitch.android.app','com.fungamesforfree.colorfy','com.miniclip.agar.io','com.disney.thoughtbubbles_goo','com.nordcurrent.canteenhd','com.snailgameusa.tp','com.king.candycrushsodasaga','com.miniclip.agar.io','com.yodo1.crossyroad','com.amphibius.prison_break_free','com.wb.goog.mkx','com.kabam.marvelbattle','com.glu.mi5','com.miniclip.dudeperfect','com.glu.deerhunt2','com.prettysimple.criminalcaseandroid','com.and.games505.Terraria','com.dupigame.copsnrobbers','com.nordcurrent.canteenhd','com.fgol.HungrySharkEvolution','com.sega.sonicdash','com.withbuddies.yahtzee','uk.co.aifactory.tictactoefree','com.tictactoe.games.google','com.alfa.fox_and_geese.gplay','com.spacegame.solitaire1','com.blizzard.wtcg.hearthstone','com.goldenlion.slots','com.mss.coin.party.jurassic.dozer.google','com.bingocrushgame.bingovegas','com.zentertain.classicvegasslots','com.bingocrushgame.bingo','com.huuuge.slots.pharaohs','com.king.candycrushsodasaga','air.com.differencegames.hospringcleaningfree','com.outfit7.mytalkingangelafree','com.FakeCall2','jp.co.ofcr.cm00','air.com.tutotoons.app.animalhairsalon','com.tocaboca.tocakitchen2','com.libii.makeupsuperstar','air.com.tutotoons.app.sweetbabygirlsummerfun.free','air.com.tutotoons.app.sweetbabygirlbeautysalon','com.tabtale.homeimprovement','com.gameloft.android.ANMP.GloftPEHM','com.tabtale.babycops','com.disney.cpcompanion_goo','com.tabtale.pjprincessparty','com.grillgames.guitarrockhero','prank.ghost.finder.photo','com.disney.thoughtbubbles_goo','com.spryfox.alphabear','com.king.alphabettysaga','jp.co.translimit.braindots','air.com.sgn.juicejam.gp','com.gameloft.android.ANMP.GloftCAHM','com.mg.policebus','com.sbkgames.rallyracerdirt','com.gameloft.android.ANMP.GloftA8HM','com.hutchgames.mud','com.igg.bzbee.deckheroes','com.snailgameusa.tp','com.netmarble.mherosgb','com.asobimo.toramonline','com.gamehivecorp.taptitans','com.pennypop.monsters.live','com.lockwoodpublishing.avakinlife','com.monster.pix','com.gamevil.millionarthur.android.google.global.normal','fr.x_studios.x_laser_2','com.ludia.jurassicworld','br.com.tapps.deardiary','com.episodeinteractive.android.catalog','com.dupigame.copsnrobber2','com.ea.game.simcitymobile_row','com.djinnworks.StickmanFootball','com.glu.baseball15','com.junerking.archery','com.ea.game.easportsufc_row','com.cg.football','com.rekoo.WoG.android.us','com.ea.game.pvzfree_row','com.loe.empire_gp','com.scottgames.fnaf2demo','com.aa.generaladaptiveapps','com.feelingtouch.empirewaronline','com.scimob.ninetyfour.percent','guess.the.brand.logo.quiz.icomania','se.maginteractive.wordbrain','com.rlg.guesstheemoji','com.puzzlesocial','com.bm.food','com.google.samples.apps.cardboarddemo','com.google.vr.cardboard.apps.designlab','com.lucktastic.scratch','com.ikeyboard.theme.galaxy','com.zhiliaoapp.musically','com.giphy.messenger','org.videolan.vlc','com.caremark.caremark','com.hola.launcher','com.cmcm.locker','com.zentertain.emoji.keyboard','com.ksmobile.launcher','com.jb.gosms.aemoji','com.google.android.apps.photos','com.instagram.layout','com.emoji.coolkeyboard','com.microsoft.office.outlook','com.emojifamily.emoji.keyboard.font.twitteremoji','com.microsoft.office.word','com.amazon.mShop.android.shopping','com.contextlogic.geek','com.amazon.windowshop','com.abtnprojects.ambatana','com.lazyswipe','com.jb.emoji.gokeyboard','com.ubercab.driver']
 	appNames = ['emoji.keyboard.emoticonkeyboard','com.glassdoor.app','io.big5.jobs_now_hiring','com.infraware.office.link.lg','com.zingbox.manga.view','com.upp.mangadrawings','mobi.abcmouse.academy_goo','com.hbo.hbonow','net.zentertain.funvideo','com.nickonline.android.nickapp','com.fungamesforfree.colorfy','com.disney.thoughtbubbles_goo','com.wb.goog.mkx','com.dupigame.copsnrobbers','com.withbuddies.yahtzee','uk.co.aifactory.tictactoefree','com.tictactoe.games.google','com.alfa.fox_and_geese.gplay','com.spacegame.solitaire1','com.blizzard.wtcg.hearthstone','com.goldenlion.slots','com.mss.coin.party.jurassic.dozer.google','com.bingocrushgame.bingovegas','com.zentertain.classicvegasslots','com.bingocrushgame.bingo','com.huuuge.slots.pharaohs','com.outfit7.mytalkingangelafree','jp.co.ofcr.cm00','com.tocaboca.tocakitchen2','com.libii.makeupsuperstar','com.gameloft.android.ANMP.GloftPEHM','com.disney.thoughtbubbles_goo','com.spryfox.alphabear','jp.co.translimit.braindots','com.mg.policebus','com.sbkgames.rallyracerdirt','com.gameloft.android.ANMP.GloftA8HM','com.asobimo.toramonline','com.pennypop.monsters.live','com.monster.pix','com.gamevil.millionarthur.android.google.global.normal','com.dupigame.copsnrobber2','com.djinnworks.StickmanFootball','com.glu.baseball15','com.rekoo.WoG.android.us','com.loe.empire_gp','com.scottgames.fnaf2demo','com.feelingtouch.empirewaronline','com.scimob.ninetyfour.percent','guess.the.brand.logo.quiz.icomania','com.puzzlesocial','com.bm.food','com.lucktastic.scratch','com.ikeyboard.theme.galaxy','com.zhiliaoapp.musically','com.caremark.caremark','com.zentertain.emoji.keyboard','com.ksmobile.launcher','com.jb.gosms.aemoji','com.instagram.layout','com.microsoft.office.outlook','com.microsoft.office.word','com.abtnprojects.ambatana','com.lazyswipe','com.jb.emoji.gokeyboard']
 	appNames = ['com.abtnprojects.ambatana','com.alfa.fox_and_geese.gplay','com.asobimo.toramonline','com.bingocrushgame.bingo','com.bingocrushgame.bingovegas','com.blizzard.wtcg.hearthstone','com.bm.food','com.disney.thoughtbubbles_goo','com.djinnworks.StickmanFootball','com.dupigame.copsnrobber2','com.dupigame.copsnrobbers','com.feelingtouch.empirewaronline','com.gameloft.android.ANMP.GloftPEHM','com.gamevil.millionarthur.android.google.global.no...','com.glassdoor.app','com.glu.baseball15','com.goldenlion.slots','com.hbo.hbonow','com.huuuge.slots.pharaohs','com.ikeyboard.theme.galaxy','com.infraware.office.link.lg','com.instagram.layout','com.jb.emoji.gokeyboard','com.jb.gosms.aemoji','com.ksmobile.launcher','com.lazyswipe','com.loe.empire_gp','com.mg.policebus','com.microsoft.office.outlook','com.microsoft.office.word','com.monster.pix','com.mss.coin.party.jurassic.dozer.google','com.nickonline.android.nickapp','com.outfit7.mytalkingangelafree','com.rekoo.WoG.android.us','com.sbkgames.rallyracerdirt','com.scimob.ninetyfour.percent','com.scottgames.fnaf2demo','com.spacegame.solitaire1','com.spryfox.alphabear','com.tictactoe.games.google','com.upp.mangadrawings','com.wb.goog.mkx','com.withbuddies.yahtzee','com.zentertain.classicvegasslots','com.zentertain.emoji.keyboard','com.zhiliaoapp.musically','com.zingbox.manga.view','emoji.keyboard.emoticonkeyboard','jp.co.translimit.braindots','mobi.abcmouse.academy_goo','net.zentertain.funvideo','uk.co.aifactory.tictactoefree']
	appList = '\'' + '\',\''.join(appNames) + '\''
	sqlStatement = "SELECT id, app_pkg_name FROM appurls WHERE downloaded = 0 AND app_pkg_name IN ("+appList+");"
	'''
	#Temporary solution for Top Apps Clustering

	sqlStatement = "SELECT id, app_pkg_name FROM appurls WHERE downloaded = 0;"
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	downloadCounter = 0
	for row in queryOutput:
		downloadCounter += 1
		downloadAPK(dbHandle,row[0],row[1])
		#After downloading 100 apps sleep for an hour
		if downloadCounter == 100:
			downloadCounter = 0
			time.sleep(3600)

def doTask():
	dbHandle = databaseHandler.dbConnectionCheck() # DB Open
	getAppURL(dbHandle)
	dbHandle.close() #DB Close

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python downloadAPKs.py\n')
		sys.exit(1)

	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	main(sys.argv)