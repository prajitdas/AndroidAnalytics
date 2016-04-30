.class Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;
.super Ljava/lang/Object;
.source "MMAdImplController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/android/MMAdImplController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x2
	name = "RequestAdRunnable"
.end annotation


# instance fields
.field adUrl:Ljava/lang/String;

.field mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

.field final synthetic this$0:Lcom/millennialmedia/android/MMAdImplController;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/android/MMAdImplController;)V
	.locals 0

	.prologue
	.line 441
	iput-object p1, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/android/MMAdImplController;Lcom/millennialmedia/android/MMAdImplController$1;)V
	.locals 0
	.param p1, "x0"	# Lcom/millennialmedia/android/MMAdImplController;
	.param p2, "x1"	# Lcom/millennialmedia/android/MMAdImplController$1;

	.prologue
	.line 441
	invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;-><init>(Lcom/millennialmedia/android/MMAdImplController;)V

	return-void
.end method

.method private isAdUrlBuildable()Z
	.locals 13

	.prologue
	const/4 v8, 0x1

	.line 523
	const/4 v7, 0x0

	iput-object v7, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

	.line 524
	const/4 v0, 0x0

	.line 525
	.local v0, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	iget-object v7, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v7, v7, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	if-eqz v7, :cond_0

	.line 527
	iget-object v7, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v7, v7, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	.end local v0	# "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

	.line 531
	.restart local v0	# "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	:cond_0
	if-eqz v0, :cond_2

	.line 533
	:try_start_0
	new-instance v6, Ljava/util/TreeMap;

	sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

	invoke-direct {v6, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

	.line 535
	.local v6, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	invoke-virtual {v0, v6}, Lcom/millennialmedia/android/MMAdImpl;->insertUrlAdMetaValues(Ljava/util/Map;)V

	.line 536
	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v7

	invoke-static {v7, v6}, Lcom/millennialmedia/android/MMSDK;->insertUrlCommonValues(Landroid/content/Context;Ljava/util/Map;)V

	.line 538
	const-string v7, "ua"

	iget-object v9, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	invoke-virtual {v9}, Lcom/millennialmedia/android/MMAdImplController;->getUserAgent()Ljava/lang/String;

	move-result-object v9

	invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 540
	new-instance v1, Ljava/lang/StringBuilder;

	invoke-static {}, Lcom/millennialmedia/android/HandShake;->getAdUrl()Ljava/lang/String;

	move-result-object v7

	invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

	.line 541
	.local v1, "adUrlBuilder":Ljava/lang/StringBuilder;
	invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

	move-result-object v3

	.line 542
	.local v3, "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
	invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

	move-result-object v7

	invoke-static {v7}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 543
	invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

	move-result-object v7

	invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

	move-result-object v5

	.local v5, "i$":Ljava/util/Iterator;
	:goto_0
	invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

	move-result v7

	if-eqz v7, :cond_1

	invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

	move-result-object v4

	check-cast v4, Ljava/util/Map$Entry;

	.line 544
	.local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
	const-string v9, "%s=%s&"

	const/4 v7, 0x2

	new-array v10, v7, [Ljava/lang/Object;

	const/4 v7, 0x0

	invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

	move-result-object v11

	aput-object v11, v10, v7

	const/4 v11, 0x1

	invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

	move-result-object v7

	check-cast v7, Ljava/lang/String;

	const-string v12, "UTF-8"

	invoke-static {v7, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

	move-result-object v7

	aput-object v7, v10, v11

	invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

	move-result-object v7

	invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
	:try_end_0
	.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 554
	.end local v1	# "adUrlBuilder":Ljava/lang/StringBuilder;
	.end local v3	# "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
	.end local v4	# "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
	.end local v5	# "i$":Ljava/util/Iterator;
	.end local v6	# "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	:catch_0
	move-exception v2

	.line 556
	.local v2, "e":Ljava/io/UnsupportedEncodingException;
	new-instance v7, Lcom/millennialmedia/android/MMException;

	invoke-direct {v7, v2}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/Exception;)V

	invoke-virtual {p0, v7}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithErrorMessage(Lcom/millennialmedia/android/MMException;)Z

	move-result v7

	.line 558
	.end local v2	# "e":Ljava/io/UnsupportedEncodingException;
	:goto_1
	return v7

	.line 545
	.restart local v1	# "adUrlBuilder":Ljava/lang/StringBuilder;
	.restart local v3	# "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
	.restart local v5	# "i$":Ljava/util/Iterator;
	.restart local v6	# "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	:cond_1
	:try_start_1
	invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

	move-result v7

	add-int/lit8 v7, v7, -0x1

	invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

	move-result v9

	invoke-virtual {v1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

	.line 546
	invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v7

	iput-object v7, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

	.line 547
	const-string v7, "Calling for an advertisement: %s"

	const/4 v9, 0x1

	new-array v9, v9, [Ljava/lang/Object;

	const/4 v10, 0x0

	iget-object v11, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

	aput-object v11, v9, v10

	invoke-static {v7, v9}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

	.end local v1	# "adUrlBuilder":Ljava/lang/StringBuilder;
	.end local v3	# "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
	.end local v5	# "i$":Ljava/util/Iterator;
	.end local v6	# "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	:goto_2
	move v7, v8

	.line 558
	goto :goto_1

	.line 551
	:cond_2
	new-instance v7, Lcom/millennialmedia/android/MMException;

	const/16 v9, 0x19

	invoke-direct {v7, v9}, Lcom/millennialmedia/android/MMException;-><init>(I)V

	invoke-virtual {p0, v7}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z
	:try_end_1
	.catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

	goto :goto_2
.end method

.method private isHandledHtmlResponse(Lorg/apache/http/HttpEntity;)Z
	.locals 9
	.param p1, "httpEntity"	# Lorg/apache/http/HttpEntity;

	.prologue
	const/4 v5, 0x1

	.line 719
	const/4 v1, 0x0

	.line 720
	.local v1, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	:try_start_0
	iget-object v4, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v4, v4, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	if-eqz v4, :cond_0

	.line 722
	iget-object v4, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v4, v4, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v4

	move-object v0, v4

	check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

	move-object v1, v0

	.line 724
	:cond_0
	if-eqz v1, :cond_2

	.line 726
	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

	move-result v4

	if-nez v4, :cond_3

	.line 728
	new-instance v2, Lcom/millennialmedia/android/InterstitialAd;

	invoke-direct {v2}, Lcom/millennialmedia/android/InterstitialAd;-><init>()V

	.line 729
	.local v2, "interstitialAd":Lcom/millennialmedia/android/InterstitialAd;
	invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

	move-result-object v4

	invoke-static {v4}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

	move-result-object v4

	iput-object v4, v2, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

	.line 730
	iget-object v4, v1, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

	invoke-virtual {v2, v4}, Lcom/millennialmedia/android/InterstitialAd;->setId(Ljava/lang/String;)V

	.line 731
	iget-object v4, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

	iput-object v4, v2, Lcom/millennialmedia/android/InterstitialAd;->adUrl:Ljava/lang/String;

	.line 732
	iget-object v4, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

	iput-object v4, v2, Lcom/millennialmedia/android/InterstitialAd;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

	.line 733
	sget v4, Lcom/millennialmedia/android/MMSDK;->logLevel:I

	const/4 v6, 0x5

	if-lt v4, v6, :cond_1

	.line 735
	const-string v4, "Received interstitial ad with url %s."

	const/4 v6, 0x1

	new-array v6, v6, [Ljava/lang/Object;

	const/4 v7, 0x0

	iget-object v8, v2, Lcom/millennialmedia/android/InterstitialAd;->adUrl:Ljava/lang/String;

	aput-object v8, v6, v7

	invoke-static {v4, v6}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

	.line 736
	iget-object v4, v2, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

	invoke-static {v4}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

	.line 738
	:cond_1
	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v4

	invoke-static {v4, v2}, Lcom/millennialmedia/android/AdCache;->save(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z

	.line 739
	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v4

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

	move-result-object v6

	invoke-virtual {v2}, Lcom/millennialmedia/android/InterstitialAd;->getId()Ljava/lang/String;

	move-result-object v7

	invoke-static {v4, v6, v7}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

	.line 740
	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->fetchStartedCaching(Lcom/millennialmedia/android/MMAdImpl;)V

	.line 741
	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestCompleted(Lcom/millennialmedia/android/MMAdImpl;)V

	.end local v2	# "interstitialAd":Lcom/millennialmedia/android/InterstitialAd;
	:cond_2
	:goto_0
	move v4, v5

	.line 756
	:goto_1
	return v4

	.line 746
	:cond_3
	iget-object v4, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	if-eqz v4, :cond_4

	.line 747
	iget-object v4, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

	move-result-object v6

	invoke-static {v6}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

	move-result-object v6

	iget-object v7, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

	invoke-virtual {v4, v6, v7}, Lcom/millennialmedia/android/MMAdImplController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;)V

	.line 748
	:cond_4
	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestCompleted(Lcom/millennialmedia/android/MMAdImpl;)V
	:try_end_0
	.catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

	goto :goto_0

	.line 752
	:catch_0
	move-exception v3

	.line 754
	.local v3, "ioe":Ljava/io/IOException;
	new-instance v4, Lcom/millennialmedia/android/MMException;

	new-instance v5, Ljava/lang/StringBuilder;

	invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

	const-string v6, "Exception raised in HTTP stream: "

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v5

	invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

	move-result-object v6

	invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v5

	invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v5

	invoke-direct {v4, v5, v3}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

	invoke-virtual {p0, v4}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithErrorMessage(Lcom/millennialmedia/android/MMException;)Z

	move-result v4

	goto :goto_1
.end method

.method private isHandledJsonResponse(Lorg/apache/http/HttpEntity;)Z
	.locals 9
	.param p1, "httpEntity"	# Lorg/apache/http/HttpEntity;

	.prologue
	const/16 v8, 0xf

	.line 641
	const/4 v5, 0x0

	.line 643
	.local v5, "videoAd":Lcom/millennialmedia/android/VideoAd;
	const/4 v1, 0x0

	.line 644
	.local v1, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	iget-object v6, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v6, v6, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	if-eqz v6, :cond_0

	.line 646
	iget-object v6, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v6, v6, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v1

	.end local v1	# "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	check-cast v1, Lcom/millennialmedia/android/MMAdImpl;

	.line 648
	.restart local v1	# "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	:cond_0
	if-eqz v1, :cond_2

	.line 650
	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

	move-result v6

	if-eqz v6, :cond_1

	.line 652
	new-instance v6, Lcom/millennialmedia/android/MMException;

	const-string v7, "Millennial ad return unsupported format."

	invoke-direct {v6, v7, v8}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

	invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithErrorMessage(Lcom/millennialmedia/android/MMException;)Z

	move-result v6

	.line 712
	:goto_0
	return v6

	.line 657
	:cond_1
	:try_start_0
	invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

	move-result-object v6

	invoke-static {v6}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

	move-result-object v4

	.line 658
	.local v4, "json":Ljava/lang/String;
	invoke-static {v4}, Lcom/millennialmedia/android/CachedAd;->parseJSON(Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

	move-result-object v6

	move-object v0, v6

	check-cast v0, Lcom/millennialmedia/android/VideoAd;

	move-object v5, v0
	:try_end_0
	.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
	.catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

	.line 671
	if-eqz v5, :cond_2

	invoke-virtual {v5}, Lcom/millennialmedia/android/VideoAd;->isValid()Z

	move-result v6

	if-eqz v6, :cond_2

	.line 673
	new-instance v6, Ljava/lang/StringBuilder;

	invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

	const-string v7, "Cached video ad JSON received: "

	invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	invoke-virtual {v5}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

	move-result-object v7

	invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v6

	invoke-static {v6}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

	.line 675
	invoke-virtual {v5}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

	move-result v6

	if-eqz v6, :cond_3

	.line 678
	const-string v6, "New ad has expiration date in the past. Not downloading ad content."

	invoke-static {v6}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

	.line 679
	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v6

	invoke-virtual {v5, v6}, Lcom/millennialmedia/android/VideoAd;->delete(Landroid/content/Context;)V

	.line 680
	new-instance v6, Lcom/millennialmedia/android/MMException;

	invoke-direct {v6, v8}, Lcom/millennialmedia/android/MMException;-><init>(I)V

	invoke-static {v1, v6}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

	.line 712
	.end local v4	# "json":Ljava/lang/String;
	:cond_2
	:goto_1
	const/4 v6, 0x1

	goto :goto_0

	.line 660
	:catch_0
	move-exception v2

	.line 662
	.local v2, "illegalE":Ljava/lang/IllegalStateException;
	invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

	.line 663
	new-instance v6, Lcom/millennialmedia/android/MMException;

	const-string v7, "Millennial ad return failed. Invalid response data."

	invoke-direct {v6, v7, v2}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

	invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z

	move-result v6

	goto :goto_0

	.line 665
	.end local v2	# "illegalE":Ljava/lang/IllegalStateException;
	:catch_1
	move-exception v3

	.line 667
	.local v3, "ioe":Ljava/io/IOException;
	invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

	.line 668
	new-instance v6, Lcom/millennialmedia/android/MMException;

	new-instance v7, Ljava/lang/StringBuilder;

	invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

	const-string v8, "Millennial ad return failed. "

	invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v7

	invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

	move-result-object v8

	invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v7

	invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v7

	invoke-direct {v6, v7, v3}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

	invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z

	move-result v6

	goto/16 :goto_0

	.line 682
	.end local v3	# "ioe":Ljava/io/IOException;
	.restart local v4	# "json":Ljava/lang/String;
	:cond_3
	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v6

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

	move-result-object v7

	invoke-static {v6, v7}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

	move-result-object v6

	if-eqz v6, :cond_4

	.line 685
	const-string v6, "Previously fetched ad exists in the playback queue. Not downloading ad content."

	invoke-static {v6}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

	.line 686
	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v6

	invoke-virtual {v5, v6}, Lcom/millennialmedia/android/VideoAd;->delete(Landroid/content/Context;)V

	.line 687
	new-instance v6, Lcom/millennialmedia/android/MMException;

	const/16 v7, 0x11

	invoke-direct {v6, v7}, Lcom/millennialmedia/android/MMException;-><init>(I)V

	invoke-static {v1, v6}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

	goto :goto_1

	.line 691
	:cond_4
	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v6

	invoke-static {v6, v5}, Lcom/millennialmedia/android/AdCache;->save(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z

	.line 692
	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v6

	invoke-virtual {v5, v6}, Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

	move-result v6

	if-nez v6, :cond_5

	.line 695
	iget-object v6, v5, Lcom/millennialmedia/android/VideoAd;->cacheMissURL:Ljava/lang/String;

	invoke-static {v6}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

	.line 696
	const-string v6, "Downloading ad..."

	invoke-static {v6}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 697
	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->fetchStartedCaching(Lcom/millennialmedia/android/MMAdImpl;)V

	.line 698
	const/4 v6, 0x3

	iput v6, v5, Lcom/millennialmedia/android/VideoAd;->downloadPriority:I

	.line 699
	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v6

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

	move-result-object v7

	iget-object v8, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

	invoke-static {v6, v7, v5, v8}, Lcom/millennialmedia/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z

	goto/16 :goto_1

	.line 704
	:cond_5
	const-string v6, "Cached ad is valid. Moving it to the front of the queue."

	invoke-static {v6}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

	.line 705
	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v6

	invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

	move-result-object v7

	invoke-virtual {v5}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

	move-result-object v8

	invoke-static {v6, v7, v8}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

	.line 706
	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->fetchStartedCaching(Lcom/millennialmedia/android/MMAdImpl;)V

	.line 707
	invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestCompleted(Lcom/millennialmedia/android/MMAdImpl;)V

	goto/16 :goto_1
.end method

.method private isHandledResponse(Lorg/apache/http/HttpResponse;)Z
	.locals 12
	.param p1, "httpResponse"	# Lorg/apache/http/HttpResponse;

	.prologue
	const/16 v11, 0xf

	const/16 v10, 0xe

	const/4 v5, 0x0

	.line 563
	invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

	move-result-object v2

	.line 564
	.local v2, "httpEntity":Lorg/apache/http/HttpEntity;
	if-nez v2, :cond_0

	.line 566
	new-instance v6, Lcom/millennialmedia/android/MMException;

	const-string v7, "Null HTTP entity"

	invoke-direct {v6, v7, v10}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

	invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z

	.line 619
	:goto_0
	return v5

	.line 570
	:cond_0
	invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

	move-result-wide v6

	const-wide/16 v8, 0x0

	cmp-long v6, v6, v8

	if-nez v6, :cond_1

	.line 572
	new-instance v6, Lcom/millennialmedia/android/MMException;

	const-string v7, "Millennial ad return failed. Zero content length returned."

	invoke-direct {v6, v7, v10}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

	invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z

	goto :goto_0

	.line 576
	:cond_1
	invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->saveMacId(Lorg/apache/http/HttpResponse;)V

	.line 578
	invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

	move-result-object v3

	.line 579
	.local v3, "httpHeader":Lorg/apache/http/Header;
	if-eqz v3, :cond_6

	invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

	move-result-object v6

	if-eqz v6, :cond_6

	.line 582
	invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

	move-result-object v6

	invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

	move-result-object v6

	const-string v7, "application/json"

	invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_2

	.line 584
	invoke-direct {p0, v2}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->isHandledJsonResponse(Lorg/apache/http/HttpEntity;)Z

	.line 619
	:goto_1
	const/4 v5, 0x1

	goto :goto_0

	.line 586
	:cond_2
	invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

	move-result-object v6

	invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

	move-result-object v6

	const-string v7, "text/html"

	invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

	move-result v6

	if-eqz v6, :cond_5

	.line 589
	const-string v5, "X-MM-Video"

	invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

	move-result-object v4

	.line 591
	.local v4, "xHeader":Lorg/apache/http/Header;
	new-instance v5, Lcom/millennialmedia/android/HttpMMHeaders;

	invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

	move-result-object v6

	invoke-direct {v5, v6}, Lcom/millennialmedia/android/HttpMMHeaders;-><init>([Lorg/apache/http/Header;)V

	iput-object v5, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

	.line 593
	if-eqz v4, :cond_4

	invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

	move-result-object v5

	const-string v6, "true"

	invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

	move-result v5

	if-eqz v5, :cond_4

	.line 595
	const/4 v0, 0x0

	.line 596
	.local v0, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	iget-object v5, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v5, v5, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	if-eqz v5, :cond_3

	.line 598
	iget-object v5, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v5, v5, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	.end local v0	# "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

	.line 600
	.restart local v0	# "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	:cond_3
	if-eqz v0, :cond_4

	.line 602
	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v1

	.line 603
	.local v1, "context":Landroid/content/Context;
	invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

	move-result-object v5

	iget-object v6, v0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

	invoke-virtual {v5, v1, v6}, Lcom/millennialmedia/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

	.line 606
	.end local v0	# "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	.end local v1	# "context":Landroid/content/Context;
	:cond_4
	invoke-direct {p0, v2}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->isHandledHtmlResponse(Lorg/apache/http/HttpEntity;)Z

	goto :goto_1

	.line 610
	.end local v4	# "xHeader":Lorg/apache/http/Header;
	:cond_5
	new-instance v6, Lcom/millennialmedia/android/MMException;

	const-string v7, "Millennial ad return failed. Invalid (JSON/HTML expected) mime type returned."

	invoke-direct {v6, v7, v11}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

	invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z

	goto/16 :goto_0

	.line 616
	:cond_6
	new-instance v6, Lcom/millennialmedia/android/MMException;

	const-string v7, "Millennial ad return failed. HTTP Header value null."

	invoke-direct {v6, v7, v11}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

	invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z

	goto/16 :goto_0
.end method

.method private saveMacId(Lorg/apache/http/HttpResponse;)V
	.locals 9
	.param p1, "httpResponse"	# Lorg/apache/http/HttpResponse;

	.prologue
	.line 624
	const-string v8, "Set-Cookie"

	invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

	move-result-object v2

	.line 625
	.local v2, "cookieHeaders":[Lorg/apache/http/Header;
	move-object v0, v2

	.local v0, "arr$":[Lorg/apache/http/Header;
	array-length v6, v0

	.local v6, "len$":I
	const/4 v4, 0x0

	.local v4, "i$":I
	:goto_0
	if-ge v4, v6, :cond_1

	aget-object v1, v0, v4

	.line 628
	.local v1, "cookieHeader":Lorg/apache/http/Header;
	invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

	move-result-object v7

	.line 629
	.local v7, "value":Ljava/lang/String;
	const-string v8, "MAC-ID="

	invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

	move-result v5

	.line 630
	.local v5, "index":I
	if-ltz v5, :cond_0

	.line 632
	const/16 v8, 0x3b

	invoke-virtual {v7, v8, v5}, Ljava/lang/String;->indexOf(II)I

	move-result v3

	.line 633
	.local v3, "endIndex":I
	if-le v3, v5, :cond_0

	.line 634
	add-int/lit8 v8, v5, 0x7

	invoke-virtual {v7, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

	move-result-object v8

	sput-object v8, Lcom/millennialmedia/android/MMSDK;->macId:Ljava/lang/String;

	.line 625
	.end local v3	# "endIndex":I
	:cond_0
	add-int/lit8 v4, v4, 0x1

	goto :goto_0

	.line 637
	.end local v1	# "cookieHeader":Lorg/apache/http/Header;
	.end local v5	# "index":I
	.end local v7	# "value":Ljava/lang/String;
	:cond_1
	return-void
.end method


# virtual methods
.method fail(Lcom/millennialmedia/android/MMException;)Z
	.locals 2
	.param p1, "mmError"	# Lcom/millennialmedia/android/MMException;

	.prologue
	.line 459
	const/4 v0, 0x0

	.line 460
	.local v0, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	if-eqz v1, :cond_0

	.line 462
	iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	.end local v0	# "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

	.line 464
	.restart local v0	# "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	:cond_0
	invoke-static {v0, p1}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

	.line 465
	const/4 v1, 0x0

	return v1
.end method

.method failWithErrorMessage(Lcom/millennialmedia/android/MMException;)Z
	.locals 1
	.param p1, "mmError"	# Lcom/millennialmedia/android/MMException;

	.prologue
	.line 447
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

	.line 448
	invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->fail(Lcom/millennialmedia/android/MMException;)Z

	move-result v0

	return v0
.end method

.method failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z
	.locals 1
	.param p1, "mmError"	# Lcom/millennialmedia/android/MMException;

	.prologue
	.line 453
	invoke-virtual {p1}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

	move-result-object v0

	invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

	.line 454
	invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->fail(Lcom/millennialmedia/android/MMException;)Z

	move-result v0

	return v0
.end method

.method public run()V
	.locals 7

	.prologue
	const/4 v6, 0x0

	.line 475
	:try_start_0
	iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v3, v3, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	if-eqz v3, :cond_3

	.line 477
	iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iget-object v3, v3, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

	invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

	.line 479
	.local v0, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	if-eqz v0, :cond_2

	invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

	move-result-object v3

	invoke-static {v3}, Lcom/millennialmedia/android/MMSDK;->isConnected(Landroid/content/Context;)Z

	move-result v3

	if-eqz v3, :cond_2

	.line 483
	invoke-direct {p0}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->isAdUrlBuildable()Z
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	move-result v3

	if-nez v3, :cond_0

	.line 517
	iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iput-object v6, v3, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

	.line 519
	.end local v0	# "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	:goto_0
	return-void

	.line 488
	.restart local v0	# "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	:cond_0
	:try_start_1
	new-instance v3, Lcom/millennialmedia/android/HttpGetRequest;

	invoke-direct {v3}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

	iget-object v4, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

	invoke-virtual {v3, v4}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

	move-result-object v2

	.line 489
	.local v2, "httpResponse":Lorg/apache/http/HttpResponse;
	if-nez v2, :cond_1

	.line 491
	new-instance v3, Lcom/millennialmedia/android/MMException;

	const-string v4, "HTTP response is null."

	const/16 v5, 0xe

	invoke-direct {v3, v4, v5}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

	invoke-virtual {p0, v3}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithErrorMessage(Lcom/millennialmedia/android/MMException;)Z
	:try_end_1
	.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	.line 517
	iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iput-object v6, v3, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

	goto :goto_0

	.line 495
	.end local v2	# "httpResponse":Lorg/apache/http/HttpResponse;
	:catch_0
	move-exception v1

	.line 497
	.local v1, "e":Ljava/lang/Exception;
	:try_start_2
	new-instance v3, Lcom/millennialmedia/android/MMException;

	new-instance v4, Ljava/lang/StringBuilder;

	invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

	const-string v5, "Ad request HTTP error. "

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

	move-result-object v5

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	const/16 v5, 0xe

	invoke-direct {v3, v4, v5}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

	invoke-virtual {p0, v3}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithErrorMessage(Lcom/millennialmedia/android/MMException;)Z
	:try_end_2
	.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
	.catchall {:try_start_2 .. :try_end_2} :catchall_0

	.line 517
	iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iput-object v6, v3, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

	goto :goto_0

	.line 501
	.end local v1	# "e":Ljava/lang/Exception;
	.restart local v2	# "httpResponse":Lorg/apache/http/HttpResponse;
	:cond_1
	:try_start_3
	invoke-direct {p0, v2}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->isHandledResponse(Lorg/apache/http/HttpResponse;)Z
	:try_end_3
	.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
	.catchall {:try_start_3 .. :try_end_3} :catchall_0

	move-result v3

	if-nez v3, :cond_3

	.line 517
	iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iput-object v6, v3, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

	goto :goto_0

	.line 506
	.end local v2	# "httpResponse":Lorg/apache/http/HttpResponse;
	:cond_2
	:try_start_4
	new-instance v3, Lcom/millennialmedia/android/MMException;

	const-string v4, "No network available, can\'t call for ads."

	const/16 v5, 0xb

	invoke-direct {v3, v4, v5}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

	invoke-virtual {p0, v3}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z
	:try_end_4
	.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
	.catchall {:try_start_4 .. :try_end_4} :catchall_0

	.line 517
	iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iput-object v6, v3, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

	goto :goto_0

	.end local v0	# "adImpl":Lcom/millennialmedia/android/MMAdImpl;
	:cond_3
	iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iput-object v6, v3, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

	goto :goto_0

	.line 511
	:catch_1
	move-exception v1

	.line 513
	.restart local v1	# "e":Ljava/lang/Exception;
	:try_start_5
	new-instance v3, Lcom/millennialmedia/android/MMException;

	const-string v4, "Request not filled, can\'t call for ads."

	const/16 v5, 0xe

	invoke-direct {v3, v4, v5}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

	invoke-virtual {p0, v3}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z
	:try_end_5
	.catchall {:try_start_5 .. :try_end_5} :catchall_0

	.line 517
	iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iput-object v6, v3, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

	goto :goto_0

	.end local v1	# "e":Ljava/lang/Exception;
	:catchall_0
	move-exception v3

	iget-object v4, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

	iput-object v6, v4, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

	throw v3
.end method
