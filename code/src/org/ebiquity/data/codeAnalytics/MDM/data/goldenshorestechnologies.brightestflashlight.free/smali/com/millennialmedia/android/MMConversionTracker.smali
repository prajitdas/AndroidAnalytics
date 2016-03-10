.class final Lcom/millennialmedia/android/MMConversionTracker;
.super Ljava/lang/Object;
.source "MMConversionTracker.java"


# static fields
.field private static final KEY_REFERRER:Ljava/lang/String; = "installReferrer"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized trackConversion(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/MMRequest;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "goalId"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/millennialmedia/android/MMRequest;

    .prologue
    .line 30
    const-class v21, Lcom/millennialmedia/android/MMConversionTracker;

    monitor-enter v21

    const-wide/16 v14, 0x0

    .line 34
    .local v14, "installTime":J
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    monitor-exit v21

    return-void

    .line 37
    :cond_1
    :try_start_1
    const-string v1, "MillennialMediaSettings"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 38
    .local v19, "settings":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstLaunch_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 39
    .local v3, "isFirstLaunch":Z
    const-string v1, "installReferrer"

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 41
    .local v18, "referrerString":Ljava/lang/String;
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 42
    .local v6, "extraParams":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 44
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/millennialmedia/android/MMRequest;->getUrlParams(Ljava/util/Map;)V

    .line 45
    invoke-static {v6}, Lcom/millennialmedia/android/MMRequest;->insertLocation(Ljava/util/Map;)V

    .line 47
    :cond_2
    if-eqz v18, :cond_4

    .line 52
    const-string v1, "&"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 53
    .local v9, "components":[Ljava/lang/String;
    move-object v7, v9

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    aget-object v17, v7, v12

    .line 55
    .local v17, "param":Ljava/lang/String;
    const-string v1, "="

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 56
    .local v20, "subComponents":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 57
    const/4 v1, 0x0

    aget-object v1, v20, v1

    const/4 v2, 0x1

    aget-object v2, v20, v2

    invoke-virtual {v6, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 61
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "components":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "param":Ljava/lang/String;
    .end local v20    # "subComponents":[Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_5

    .line 63
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 64
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstLaunch_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    .line 73
    .local v13, "info":Landroid/content/pm/PackageInfo;
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "firstInstallTime"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 74
    .local v11, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v11, v13}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v14

    .line 84
    .end local v11    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "info":Landroid/content/pm/PackageInfo;
    :goto_2
    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-lez v1, :cond_6

    .line 86
    :try_start_4
    new-instance v8, Ljava/util/GregorianCalendar;

    invoke-direct {v8}, Ljava/util/GregorianCalendar;-><init>()V

    .line 87
    .local v8, "calendar":Ljava/util/GregorianCalendar;
    invoke-virtual {v8, v14, v15}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 88
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 89
    invoke-virtual {v8}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v14

    .line 92
    .end local v8    # "calendar":Ljava/util/GregorianCalendar;
    :cond_6
    move-wide v4, v14

    .line 93
    .local v4, "installTimeUTC":J
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 95
    const-string v1, "ua"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Android:"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v22, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "apid"

    sget-object v2, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/millennialmedia/android/MMSDK;->insertUrlCommonValues(Landroid/content/Context;Ljava/util/Map;)V

    .line 99
    new-instance v1, Lcom/millennialmedia/android/MMConversionTracker$1;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/millennialmedia/android/MMConversionTracker$1;-><init>(Ljava/lang/String;ZJLjava/util/TreeMap;)V

    invoke-static {v1}, Lcom/millennialmedia/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 30
    .end local v3    # "isFirstLaunch":Z
    .end local v4    # "installTimeUTC":J
    .end local v6    # "extraParams":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "referrerString":Ljava/lang/String;
    .end local v19    # "settings":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v21

    throw v1

    .line 118
    .restart local v3    # "isFirstLaunch":Z
    .restart local v4    # "installTimeUTC":J
    .restart local v6    # "extraParams":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "referrerString":Ljava/lang/String;
    .restart local v19    # "settings":Landroid/content/SharedPreferences;
    :cond_7
    :try_start_5
    const-string v1, "No network available for conversion tracking."

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 80
    .end local v4    # "installTimeUTC":J
    :catch_0
    move-exception v1

    goto :goto_2

    .line 76
    .restart local v13    # "info":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v1

    goto :goto_2
.end method
