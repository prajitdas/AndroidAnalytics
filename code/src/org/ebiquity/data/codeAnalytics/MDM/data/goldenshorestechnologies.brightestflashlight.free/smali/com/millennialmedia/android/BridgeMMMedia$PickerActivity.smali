.class Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;
.super Lcom/millennialmedia/android/MMBaseActivity;
.source "BridgeMMMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/BridgeMMMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PickerActivity"
.end annotation


# instance fields
.field private fileUri:Landroid/net/Uri;

.field hasRequestedPic:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/millennialmedia/android/MMBaseActivity;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 24
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 181
    invoke-super/range {p0 .. p3}, Lcom/millennialmedia/android/MMBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 182
    if-eqz p3, :cond_1

    .line 184
    const/16 v18, 0x0

    .line 185
    .local v18, "in":Ljava/io/InputStream;
    const/16 v22, 0x0

    .line 189
    .local v22, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 191
    .local v3, "contentUri":Landroid/net/Uri;
    if-nez v3, :cond_7

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 194
    .local v13, "bundle":Landroid/os/Bundle;
    if-eqz v13, :cond_1

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 199
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v17, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v17, "file":Ljava/io/File;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    .local v10, "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v6, 0x0

    invoke-virtual {v8, v5, v6, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 202
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 203
    .local v9, "bitmapdata":[B
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 204
    .local v11, "bs":Ljava/io/ByteArrayInputStream;
    new-instance v23, Ljava/io/FileOutputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .end local v22    # "out":Ljava/io/OutputStream;
    .local v23, "out":Ljava/io/OutputStream;
    const/16 v5, 0x400

    :try_start_2
    new-array v12, v5, [B

    .line 207
    .local v12, "buf":[B
    :goto_0
    invoke-virtual {v11, v12}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v21

    .local v21, "len":I
    if-lez v21, :cond_2

    .line 208
    const/4 v5, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v12, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    goto :goto_0

    .line 210
    .end local v12    # "buf":[B
    .end local v21    # "len":I
    :catch_0
    move-exception v5

    move-object/from16 v22, v23

    .line 217
    .end local v9    # "bitmapdata":[B
    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "bs":Ljava/io/ByteArrayInputStream;
    .end local v17    # "file":Ljava/io/File;
    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    :goto_1
    if-eqz v18, :cond_0

    .line 218
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 219
    :cond_0
    if-eqz v22, :cond_1

    .line 220
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    .line 281
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v22    # "out":Ljava/io/OutputStream;
    :cond_1
    :goto_2
    # getter for: Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMMedia;->access$000()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 283
    :try_start_4
    # getter for: Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMMedia;->access$000()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 284
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->finish()V

    .line 286
    return-void

    .line 217
    .restart local v3    # "contentUri":Landroid/net/Uri;
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "bitmapdata":[B
    .restart local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "bs":Ljava/io/ByteArrayInputStream;
    .restart local v12    # "buf":[B
    .restart local v13    # "bundle":Landroid/os/Bundle;
    .restart local v17    # "file":Ljava/io/File;
    .restart local v18    # "in":Ljava/io/InputStream;
    .restart local v21    # "len":I
    .restart local v23    # "out":Ljava/io/OutputStream;
    :cond_2
    if-eqz v18, :cond_3

    .line 218
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 219
    :cond_3
    if-eqz v23, :cond_4

    .line 220
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    move-object/from16 v22, v23

    .line 224
    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 222
    .end local v22    # "out":Ljava/io/OutputStream;
    .restart local v23    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v5

    move-object/from16 v22, v23

    .line 225
    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 215
    .end local v9    # "bitmapdata":[B
    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "bs":Ljava/io/ByteArrayInputStream;
    .end local v12    # "buf":[B
    .end local v17    # "file":Ljava/io/File;
    .end local v21    # "len":I
    :catchall_0
    move-exception v5

    .line 217
    :goto_3
    if-eqz v18, :cond_5

    .line 218
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 219
    :cond_5
    if-eqz v22, :cond_6

    .line 220
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 224
    :cond_6
    :goto_4
    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 276
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "bundle":Landroid/os/Bundle;
    :catch_2
    move-exception v16

    .line 278
    .local v16, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error with picture: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 228
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v3    # "contentUri":Landroid/net/Uri;
    :cond_7
    if-eqz v3, :cond_1

    .line 230
    const/4 v5, 0x1

    :try_start_8
    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    .line 231
    .local v4, "proj":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 232
    .local v2, "resolver":Landroid/content/ContentResolver;
    if-eqz v2, :cond_1

    .line 234
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 235
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz v15, :cond_1

    .line 237
    const-string v5, "_data"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 238
    .local v20, "index":I
    const/4 v5, -0x1

    move/from16 v0, v20

    if-eq v0, v5, :cond_1

    .line 240
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 241
    new-instance v14, Ljava/io/File;

    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v14, "chosenFile":Ljava/io/File;
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 247
    :try_start_9
    new-instance v17, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .restart local v17    # "file":Ljava/io/File;
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 249
    .end local v18    # "in":Ljava/io/InputStream;
    .local v19, "in":Ljava/io/InputStream;
    :try_start_a
    new-instance v23, Ljava/io/FileOutputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 250
    .end local v22    # "out":Ljava/io/OutputStream;
    .restart local v23    # "out":Ljava/io/OutputStream;
    const/16 v5, 0x400

    :try_start_b
    new-array v12, v5, [B

    .line 252
    .restart local v12    # "buf":[B
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/io/InputStream;->read([B)I

    move-result v21

    .restart local v21    # "len":I
    if-lez v21, :cond_9

    .line 253
    const/4 v5, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v12, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_5

    .line 255
    .end local v12    # "buf":[B
    .end local v21    # "len":I
    :catch_3
    move-exception v5

    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .line 262
    .end local v17    # "file":Ljava/io/File;
    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v18    # "in":Ljava/io/InputStream;
    :goto_6
    if-eqz v18, :cond_8

    .line 263
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 264
    :cond_8
    if-eqz v22, :cond_1

    .line 265
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_2

    .line 267
    :catch_4
    move-exception v5

    goto/16 :goto_2

    .line 262
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v22    # "out":Ljava/io/OutputStream;
    .restart local v12    # "buf":[B
    .restart local v17    # "file":Ljava/io/File;
    .restart local v19    # "in":Ljava/io/InputStream;
    .restart local v21    # "len":I
    .restart local v23    # "out":Ljava/io/OutputStream;
    :cond_9
    if-eqz v19, :cond_a

    .line 263
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 264
    :cond_a
    if-eqz v23, :cond_b

    .line 265
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    :cond_b
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .line 269
    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v18    # "in":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 267
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v22    # "out":Ljava/io/OutputStream;
    .restart local v19    # "in":Ljava/io/InputStream;
    .restart local v23    # "out":Ljava/io/OutputStream;
    :catch_5
    move-exception v5

    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .line 270
    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v18    # "in":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 260
    .end local v12    # "buf":[B
    .end local v17    # "file":Ljava/io/File;
    .end local v21    # "len":I
    :catchall_1
    move-exception v5

    .line 262
    :goto_7
    if-eqz v18, :cond_c

    .line 263
    :try_start_e
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 264
    :cond_c
    if-eqz v22, :cond_d

    .line 265
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 269
    :cond_d
    :goto_8
    :try_start_f
    throw v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 284
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v4    # "proj":[Ljava/lang/String;
    .end local v14    # "chosenFile":Ljava/io/File;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v20    # "index":I
    .end local v22    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v5

    :try_start_10
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v5

    .line 267
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "contentUri":Landroid/net/Uri;
    .restart local v4    # "proj":[Ljava/lang/String;
    .restart local v14    # "chosenFile":Ljava/io/File;
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "in":Ljava/io/InputStream;
    .restart local v20    # "index":I
    .restart local v22    # "out":Ljava/io/OutputStream;
    :catch_6
    move-exception v6

    goto :goto_8

    .line 260
    .end local v18    # "in":Ljava/io/InputStream;
    .restart local v17    # "file":Ljava/io/File;
    .restart local v19    # "in":Ljava/io/InputStream;
    :catchall_3
    move-exception v5

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v18    # "in":Ljava/io/InputStream;
    goto :goto_7

    .end local v18    # "in":Ljava/io/InputStream;
    .end local v22    # "out":Ljava/io/OutputStream;
    .restart local v19    # "in":Ljava/io/InputStream;
    .restart local v23    # "out":Ljava/io/OutputStream;
    :catchall_4
    move-exception v5

    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v18    # "in":Ljava/io/InputStream;
    goto :goto_7

    .line 255
    .end local v17    # "file":Ljava/io/File;
    :catch_7
    move-exception v5

    goto :goto_6

    .end local v18    # "in":Ljava/io/InputStream;
    .restart local v17    # "file":Ljava/io/File;
    .restart local v19    # "in":Ljava/io/InputStream;
    :catch_8
    move-exception v5

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v18    # "in":Ljava/io/InputStream;
    goto :goto_6

    .line 222
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "proj":[Ljava/lang/String;
    .end local v14    # "chosenFile":Ljava/io/File;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v17    # "file":Ljava/io/File;
    .end local v20    # "index":I
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "bundle":Landroid/os/Bundle;
    :catch_9
    move-exception v6

    goto/16 :goto_4

    .line 215
    .end local v22    # "out":Ljava/io/OutputStream;
    .restart local v9    # "bitmapdata":[B
    .restart local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "bs":Ljava/io/ByteArrayInputStream;
    .restart local v17    # "file":Ljava/io/File;
    .restart local v23    # "out":Ljava/io/OutputStream;
    :catchall_5
    move-exception v5

    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    goto/16 :goto_3

    .line 222
    .end local v9    # "bitmapdata":[B
    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "bs":Ljava/io/ByteArrayInputStream;
    .end local v17    # "file":Ljava/io/File;
    :catch_a
    move-exception v5

    goto/16 :goto_2

    .line 210
    :catch_b
    move-exception v5

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 142
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 147
    .local v0, "inState":Landroid/os/Bundle;
    const-string v2, "hasRequestedPic"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    .line 151
    .end local v0    # "inState":Landroid/os/Bundle;
    :cond_0
    iget-boolean v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    if-nez v2, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->fileUri:Landroid/net/Uri;

    .line 162
    const-string v2, "return-data"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    iput-boolean v4, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    .line 165
    invoke-virtual {p0, v1, v5}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 176
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 170
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iput-boolean v4, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    .line 173
    invoke-virtual {p0, v1, v5}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, "outState":Landroid/os/Bundle;
    const-string v1, "hasRequestedPic"

    iget-boolean v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    return-object v0
.end method
