.class Lcom/millennialmedia/android/BridgeMMMedia;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/BridgeMMMedia$Audio;,
        Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PICTURES:Ljava/lang/String; = "Pictures"

.field private static pickerActivityObject:Ljava/lang/Object;


# instance fields
.field mediaScanner:Landroid/media/MediaScannerConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    return-object v0
.end method

.method private static centerOfImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 329
    .local v0, "x":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 331
    .local v1, "y":F
    float-to-int v2, v0

    float-to-int v3, v1

    invoke-static {p0, v2, v3, p1, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->cropImage(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static cropImage(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 336
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private isCameraAvailable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 57
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.permission.CAMERA"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 61
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 63
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 66
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return v3
.end method

.method private isPictureChooserAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 72
    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 73
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 79
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 81
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return v3
.end method

.method private moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 7
    .param p1, "source"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 536
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 538
    .local v0, "inChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 539
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 540
    .local v5, "outChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    const/4 v1, 0x1

    .line 546
    .end local v0    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v5    # "outChannel":Ljava/nio/channels/FileChannel;
    :goto_0
    return v1

    .line 543
    :catch_0
    move-exception v6

    .line 545
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 546
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "newW"    # I
    .param p2, "newH"    # I
    .param p3, "quality"    # I

    .prologue
    .line 322
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "contentMode"    # Ljava/lang/String;
    .param p2, "toW"    # I
    .param p3, "toH"    # I
    .param p4, "quality"    # I

    .prologue
    const/4 v7, 0x0

    .line 291
    int-to-float v5, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 292
    .local v0, "horizontalRatio":F
    int-to-float v5, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 297
    .local v4, "verticalRatio":F
    const-string v5, "Center"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 299
    invoke-static {p0, p2, p3}, Lcom/millennialmedia/android/BridgeMMMedia;->centerOfImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 317
    :goto_0
    return-object v5

    .line 301
    :cond_0
    const-string v5, "ScaleToAspectFit"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 303
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 304
    .local v3, "ratio":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v2, v5

    .line 305
    .local v2, "newW":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v1, v5

    .line 306
    .local v1, "newH":I
    invoke-static {p0, v2, v1, p4}, Lcom/millennialmedia/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 308
    .end local v1    # "newH":I
    .end local v2    # "newW":I
    .end local v3    # "ratio":F
    :cond_1
    const-string v5, "ScaleToAspectFill"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 310
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 311
    .restart local v3    # "ratio":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v2, v5

    .line 312
    .restart local v2    # "newW":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v1, v5

    .line 315
    .restart local v1    # "newH":I
    invoke-static {p0, v2, v1, p4}, Lcom/millennialmedia/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v7, v7, p2, p3}, Lcom/millennialmedia/android/BridgeMMMedia;->cropImage(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 317
    .end local v1    # "newH":I
    .end local v2    # "newW":I
    .end local v3    # "ratio":F
    :cond_2
    invoke-static {p0, p2, p3, p4}, Lcom/millennialmedia/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
.end method

.method private static final scaleBitmapToBytes(Ljava/io/File;IILjava/lang/String;)[B
    .locals 21
    .param p0, "file"    # Ljava/io/File;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "contentMode"    # Ljava/lang/String;

    .prologue
    .line 341
    const/4 v10, 0x0

    .line 342
    .local v10, "fis":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 343
    .local v12, "fis2":Ljava/io/FileInputStream;
    const/16 v17, 0x0

    .line 346
    .local v17, "scaledBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 349
    .local v16, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 350
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v11, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 352
    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 353
    .local v14, "height":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    .line 354
    .local v18, "width":I
    const/4 v15, 0x1

    .line 356
    .local v15, "inSampleSize":I
    move/from16 v0, p2

    if-gt v14, v0, :cond_0

    move/from16 v0, v18

    move/from16 v1, p1

    if-le v0, v1, :cond_1

    .line 358
    :cond_0
    move/from16 v0, v18

    if-le v0, v14, :cond_8

    .line 360
    int-to-float v0, v14

    move/from16 v19, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 369
    :cond_1
    :goto_0
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 371
    .end local v12    # "fis2":Ljava/io/FileInputStream;
    .local v13, "fis2":Ljava/io/FileInputStream;
    const/16 v19, 0x0

    :try_start_2
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 372
    move-object/from16 v0, v16

    iput v15, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 373
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v13, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v17

    .line 382
    if-eqz v11, :cond_2

    .line 383
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 384
    :cond_2
    if-eqz v13, :cond_3

    .line 385
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    move-object v12, v13

    .end local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v12    # "fis2":Ljava/io/FileInputStream;
    move-object v10, v11

    .line 392
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "height":I
    .end local v15    # "inSampleSize":I
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "width":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :cond_4
    :goto_1
    const/4 v7, 0x0

    .line 393
    .local v7, "contents":[B
    if-eqz v17, :cond_7

    .line 395
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/millennialmedia/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 396
    .local v9, "finalBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 400
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_4
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 401
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    const-string v19, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 402
    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 405
    :goto_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v7

    .line 416
    if-eqz v17, :cond_5

    .line 417
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 418
    :cond_5
    if-eqz v9, :cond_6

    .line 419
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 420
    :cond_6
    if-eqz v6, :cond_7

    .line 421
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 429
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "finalBitmap":Landroid/graphics/Bitmap;
    :cond_7
    :goto_3
    return-object v7

    .line 364
    .end local v7    # "contents":[B
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "height":I
    .restart local v15    # "inSampleSize":I
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v18    # "width":I
    :cond_8
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    :try_start_7
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v15

    goto :goto_0

    .line 387
    .end local v12    # "fis2":Ljava/io/FileInputStream;
    .restart local v13    # "fis2":Ljava/io/FileInputStream;
    :catch_0
    move-exception v19

    move-object v12, v13

    .end local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v12    # "fis2":Ljava/io/FileInputStream;
    move-object v10, v11

    .line 390
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 375
    .end local v14    # "height":I
    .end local v15    # "inSampleSize":I
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "width":I
    :catch_1
    move-exception v19

    .line 382
    :goto_4
    if-eqz v10, :cond_9

    .line 383
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 384
    :cond_9
    if-eqz v12, :cond_4

    .line 385
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 387
    :catch_2
    move-exception v19

    goto :goto_1

    .line 380
    :catchall_0
    move-exception v19

    .line 382
    :goto_5
    if-eqz v10, :cond_a

    .line 383
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 384
    :cond_a
    if-eqz v12, :cond_b

    .line 385
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 389
    :cond_b
    :goto_6
    throw v19

    .line 404
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "contents":[B
    .restart local v9    # "finalBitmap":Landroid/graphics/Bitmap;
    :cond_c
    :try_start_a
    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x64

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    .line 407
    :catch_3
    move-exception v8

    move-object v5, v6

    .line 409
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v8, "e":Ljava/lang/Exception;
    :goto_7
    const/4 v7, 0x0

    .line 410
    :try_start_b
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 416
    if-eqz v17, :cond_d

    .line 417
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 418
    :cond_d
    if-eqz v9, :cond_e

    .line 419
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 420
    :cond_e
    if-eqz v5, :cond_7

    .line 421
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_3

    .line 423
    :catch_4
    move-exception v8

    .line 425
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 423
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v8

    .line 425
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 414
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v19

    .line 416
    :goto_8
    if-eqz v17, :cond_f

    .line 417
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 418
    :cond_f
    if-eqz v9, :cond_10

    .line 419
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 420
    :cond_10
    if-eqz v5, :cond_11

    .line 421
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 426
    :cond_11
    :goto_9
    throw v19

    .line 423
    :catch_6
    move-exception v8

    .line 425
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 414
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v19

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .line 407
    :catch_7
    move-exception v8

    goto :goto_7

    .line 387
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "contents":[B
    .end local v9    # "finalBitmap":Landroid/graphics/Bitmap;
    :catch_8
    move-exception v20

    goto :goto_6

    .line 380
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v19

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fis2":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v14    # "height":I
    .restart local v15    # "inSampleSize":I
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v18    # "width":I
    :catchall_4
    move-exception v19

    move-object v12, v13

    .end local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v12    # "fis2":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 375
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "height":I
    .end local v15    # "inSampleSize":I
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "width":I
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v19

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fis2":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v14    # "height":I
    .restart local v15    # "inSampleSize":I
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v18    # "width":I
    :catch_a
    move-exception v19

    move-object v12, v13

    .end local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v12    # "fis2":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private scanMedia(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 554
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 555
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 557
    new-instance v1, Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/millennialmedia/android/BridgeMMMedia$1;

    invoke-direct {v3, p0, p1}, Lcom/millennialmedia/android/BridgeMMMedia$1;-><init>(Lcom/millennialmedia/android/BridgeMMMedia;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    .line 573
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 576
    :cond_0
    return-void
.end method


# virtual methods
.method public availableSourceTypes(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 110
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const-string v2, "Camera"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isPictureChooserAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    const-string v2, "Photo Library"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 115
    :cond_1
    new-instance v1, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v1}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 116
    .local v1, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v2, 0x1

    iput v2, v1, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 117
    iput-object v0, v1, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 118
    return-object v1
.end method

.method public declared-synchronized getPicture(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 441
    .local v3, "context":Landroid/content/Context;
    const-string v12, "sourceType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 442
    .local v9, "type":Ljava/lang/String;
    const-string v12, "constrainHeight"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 443
    .local v7, "height":Ljava/lang/String;
    const-string v12, "constrainWidth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 445
    .local v11, "width":Ljava/lang/String;
    const-string v12, "contentMode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 446
    .local v1, "contentMode":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 447
    const-string v1, ""

    .line 448
    :cond_0
    if-eqz v7, :cond_1

    if-nez v11, :cond_2

    .line 449
    :cond_1
    const-string v12, "Missing constrainHeight and/or constrainWidth"

    invoke-static {v12}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 495
    :goto_0
    monitor-exit p0

    return-object v8

    .line 452
    :cond_2
    :try_start_1
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    float-to-int v6, v12

    .line 453
    .local v6, "h":I
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    float-to-int v10, v12

    .line 454
    .local v10, "w":I
    mul-int v12, v6, v10

    const v13, 0x57e40

    if-le v12, v13, :cond_3

    .line 455
    const-string v12, "constrainHeight * constrainWidth > 360000"

    invoke-static {v12}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v8

    goto :goto_0

    .line 458
    :cond_3
    if-eqz v3, :cond_7

    if-eqz v9, :cond_7

    .line 460
    new-instance v5, Ljava/io/File;

    invoke-static {v3}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tmp_mm_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".jpg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 461
    .local v5, "file":Ljava/io/File;
    const-string v12, "Camera"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isCameraAvailable()Z

    move-result v12

    if-nez v12, :cond_6

    :cond_4
    const-string v12, "Photo Library"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "PhotoLibrary"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isPictureChooserAvailable()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    if-eqz v12, :cond_7

    .line 465
    :cond_6
    :try_start_2
    new-instance v12, Ljava/lang/Object;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    sput-object v12, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    .line 466
    sget-object v13, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    monitor-enter v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 468
    :try_start_3
    invoke-static {v3, v5, v9}, Lcom/millennialmedia/android/Utils$IntentUtils;->startPickerActivity(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 469
    sget-object v12, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->wait()V

    .line 470
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 478
    const/4 v12, 0x0

    :try_start_4
    sput-object v12, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    .line 481
    :goto_1
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_7

    .line 483
    invoke-static {v5, v10, v6, v1}, Lcom/millennialmedia/android/BridgeMMMedia;->scaleBitmapToBytes(Ljava/io/File;IILjava/lang/String;)[B

    move-result-object v2

    .line 484
    .local v2, "contents":[B
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 485
    if-eqz v2, :cond_7

    .line 487
    new-instance v8, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v8}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 488
    .local v8, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v12, 0x1

    iput v12, v8, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 489
    iput-object v2, v8, Lcom/millennialmedia/android/MMJSResponse;->dataResponse:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 440
    .end local v1    # "contentMode":Ljava/lang/String;
    .end local v2    # "contents":[B
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "h":I
    .end local v7    # "height":Ljava/lang/String;
    .end local v8    # "response":Lcom/millennialmedia/android/MMJSResponse;
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "w":I
    .end local v11    # "width":Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 470
    .restart local v1    # "contentMode":Ljava/lang/String;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "h":I
    .restart local v7    # "height":Ljava/lang/String;
    .restart local v9    # "type":Ljava/lang/String;
    .restart local v10    # "w":I
    .restart local v11    # "width":Ljava/lang/String;
    :catchall_1
    move-exception v12

    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 472
    :catch_0
    move-exception v4

    .line 474
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 478
    const/4 v12, 0x0

    :try_start_8
    sput-object v12, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v12

    const/4 v13, 0x0

    sput-object v13, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    throw v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 495
    .end local v5    # "file":Ljava/io/File;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public isSourceTypeAvailable(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sourceType"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 93
    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isCameraAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "true"

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 98
    :goto_0
    return-object v1

    .line 95
    :cond_0
    const-string v1, "Photo Library"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isPictureChooserAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const-string v1, "true"

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    goto :goto_0

    .line 98
    :cond_1
    const-string v1, "false"

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    goto :goto_0
.end method

.method public playAudio(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 615
    .local v0, "context":Landroid/content/Context;
    const-string v3, "path"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 616
    .local v2, "path":Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 618
    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    const-string v3, "Audio already playing."

    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 635
    :goto_0
    return-object v3

    .line 621
    :cond_0
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 623
    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v3, "repeat"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v5, v3}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->playAudio(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    goto :goto_0

    .line 627
    :cond_1
    invoke-static {v0, v2}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 628
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 630
    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v4

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v3, "repeat"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v5, v3}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->playAudio(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    goto :goto_0

    .line 635
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public playSound(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 646
    .local v0, "context":Landroid/content/Context;
    const-string v3, "path"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 647
    .local v2, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 649
    invoke-static {v0, v2}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 650
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->playSound(Ljava/io/File;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 655
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public playVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 585
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 586
    .local v0, "context":Landroid/content/Context;
    const-string v3, "path"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 587
    .local v2, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 589
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 591
    invoke-static {v0, v2}, Lcom/millennialmedia/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/lang/String;)V

    .line 592
    invoke-static {v2}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 604
    :goto_0
    return-object v3

    .line 596
    :cond_0
    invoke-static {v0, v2}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 597
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 599
    invoke-static {v0, v1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/io/File;)V

    .line 600
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    goto :goto_0

    .line 604
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public stopAudio(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 661
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->stop()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized writeToPhotoLibrary(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 508
    .local v0, "context":Landroid/content/Context;
    const-string v6, "path"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 509
    .local v3, "path":Landroid/net/Uri;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Pictures"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .local v4, "scheme":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v6, "http"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 513
    const-string v6, "url"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v6, "path"

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    new-instance v2, Lcom/millennialmedia/android/BridgeMMFileManager;

    invoke-direct {v2}, Lcom/millennialmedia/android/BridgeMMFileManager;-><init>()V

    .line 516
    .local v2, "fileManager":Lcom/millennialmedia/android/BridgeMMFileManager;
    invoke-virtual {v2, v0}, Lcom/millennialmedia/android/BridgeMMFileManager;->setContext(Landroid/content/Context;)V

    .line 517
    invoke-virtual {v2, p1}, Lcom/millennialmedia/android/BridgeMMFileManager;->downloadFile(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v6

    if-nez v6, :cond_0

    .line 518
    const-string v6, "Failed to download"

    invoke-static {v6}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 525
    .end local v2    # "fileManager":Lcom/millennialmedia/android/BridgeMMFileManager;
    :goto_0
    monitor-exit p0

    return-object v6

    .line 521
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 522
    .local v5, "source":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 523
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No file at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v6

    goto :goto_0

    .line 524
    :cond_1
    invoke-direct {p0, v5, v1}, Lcom/millennialmedia/android/BridgeMMMedia;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-direct {p0, v6}, Lcom/millennialmedia/android/BridgeMMMedia;->scanMedia(Ljava/lang/String;)V

    .line 525
    const-string v6, "Image saved to photo library"

    invoke-static {v6}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v6

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_1

    .line 507
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "dest":Ljava/io/File;
    .end local v3    # "path":Landroid/net/Uri;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "source":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
