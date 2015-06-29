On Archive.org we have the data source for the [Playdrone Project](http://systems.cs.columbia.edu/projects/playdrone/) as [Android Apps](https://archive.org/details/android_apps&tab=about): This collection contains Android apps and metadata. The Android apps and metadata have been collected based on research and open-source tools that were created at Columbia University as part of the PlayDrone project.

*DESCRIPTION*
This collection contains Android apps and metadata. The Android apps and metadata have been collected based on research and open-source tools that were created at Columbia University as part of the PlayDrone project.

13 daily snapshots of apps from Google Play are provided, from 2014-10-19 to 2014-10-31, each day comprising metadata for over a million apps and binaries for all available free apps present in the market for a given day. For each day, a file https://archive.org/download/playdrone-snapshots/2014-10-{19..31}.json contains the list of all apps present on the market for that specific day; the apps are sorted by download counts.

If you need a single snapshot of the market, we recommend you use the latest snapshot in the collection: https://archive.org/download/playdrone-snapshots/2014-10-31.json. It contains 1,402,894 apps, including over 1.1 million free apps.

The daily snapshots contain a list of apps as an array of JSON objects. The following shows an example of an app JSON object:

	{
	  "app_id":"com.google.android.youtube",
	  "title":"YouTube",
	  "developer_name":"Google Inc.",
	  "category":"MEDIA_AND_VIDEO",
	  "free":true,
	  "version_code":51405300,
	  "version_string":"5.14.5",
	  "installation_size":10191835,
	  "downloads":1000000000,
	  "star_rating":4.08009,
	  "snapshot_date":"2014-10-31",
	  "metadata_url":"https://archive.org/download/playdrone-metadata-2014-10-31-c9/com.google.android.youtube.json",
	  "apk_url":"https://archive.org/download/playdrone-apk-c9/com.google.android.youtube-51405300.apk"
	}

As shown in this example, for each app JSON object, a metadata_url and apk_url are provided. The metadata_url provides additional metadata beyond the subset that is available in the snapshot files. Its content is the Google API response in JSON format when asked for the app full metadata. To interpret the raw metadata, you may use this model available from the openly available sources of the PlayDrone project.

The apk_url provides the corresponding app APK (Android application package) binary. In some cases, no apk_url property is provided. This occurs for one of two reasons, either because the app is not free, or in the case of a free app, the binary was not successfully downloaded, which happened for < 0.1% of the free apps.

There are a number of ways that this data can be processed. For example, to quickly download 1000 APKs starting from the most popular, the following can be used to download APKs in 12-way to speed things up:

	wget http://archive.org/download/playdrone-snapshots/2014-10-31.json
	grep apk_url 2014-10-31.json | head -n 1000 | sed -e 's/"apk_url":"\(.*\)"$/\1/' | xargs -L1 -P12 wget -q
