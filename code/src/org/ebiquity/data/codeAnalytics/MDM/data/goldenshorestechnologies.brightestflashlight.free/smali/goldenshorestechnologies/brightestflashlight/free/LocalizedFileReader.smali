.class Lgoldenshorestechnologies/brightestflashlight/free/LocalizedFileReader;
.super Ljava/lang/Object;
.source "LocalizedFileReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalizedFileReader"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadExactFile(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "strFilePathName"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, "bufReader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 71
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 72
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-16"

    invoke-direct {v7, v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .local v2, "bufReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "strLine":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 79
    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 83
    :cond_0
    const-string v7, "LocalizedFileReader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Text read  of "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " succeeded.  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 88
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "bufReader":Ljava/io/BufferedReader;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "strLine":Ljava/lang/String;
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    :goto_1
    return-object v6

    .line 76
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "bufReader":Ljava/io/BufferedReader;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "strLine":Ljava/lang/String;
    .restart local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 86
    .end local v5    # "strLine":Ljava/lang/String;
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 87
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "bufReader":Ljava/io/BufferedReader;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    const-string v7, "LocalizedFileReader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Text read  of "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed.  Exception data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v6, ""

    goto :goto_1

    .line 86
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static LoadLocalizedFile(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "strFileName"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 29
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, "strLanguageCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "strFullLocale":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "strFilePath":Ljava/lang/String;
    invoke-static {v2, p1}, Lgoldenshorestechnologies/brightestflashlight/free/LocalizedFileReader;->LoadExactFile(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 46
    .local v0, "charSequence":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v2, p1}, Lgoldenshorestechnologies/brightestflashlight/free/LocalizedFileReader;->LoadExactFile(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 53
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 54
    invoke-static {p0, p1}, Lgoldenshorestechnologies/brightestflashlight/free/LocalizedFileReader;->LoadExactFile(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 57
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 58
    const-string v5, "LocalizedFileReader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Text read  of "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " FAILED.  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_2
    return-object v0
.end method
