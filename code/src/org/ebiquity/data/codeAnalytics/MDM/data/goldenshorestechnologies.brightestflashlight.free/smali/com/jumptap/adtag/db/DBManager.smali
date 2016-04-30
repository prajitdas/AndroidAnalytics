.class public Lcom/jumptap/adtag/db/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
	value = {
		Lcom/jumptap/adtag/db/DBManager$JtSQLiteOpenHelper;
	}
.end annotation


# static fields
.field private static final ADID_COLUMN:Ljava/lang/String; = "adid"

.field private static final CREATE_PENDING_EVENTS_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS pending_events(id INTEGER PRIMARY KEY, eventType TEXT, date TEXT, url TEXT);"

.field private static final CREATE_VIDEO_CACHE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS video_cache(id INTEGER PRIMARY KEY, adid INTEGER,date TEXT);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "jt_ad_view.db"

.field private static final DATABASE_VERSION:I = 0x5

.field private static final DATE_COLUMN:Ljava/lang/String; = "date"

.field private static final DROP_QUERY:Ljava/lang/String; = "DROP TABLE IF EXISTS pending_events; DROP TABLE IF EXISTS video_cache;"

.field private static final EVENT_TYPE_COLUMN:Ljava/lang/String; = "eventType"

.field private static final ID_COLUMN:Ljava/lang/String; = "id"

.field private static final INSERT_EVENT_QUERY:Ljava/lang/String; = "insert into pending_events(eventType,date,url) values (?,?,?)"

.field private static final INSERT_VIDEO_CACHE_QUERY:Ljava/lang/String; = "insert into video_cache(adid,date) values (?,?)"

.field private static final PENDING_EVENTS_TABLE_NAME:Ljava/lang/String; = "pending_events"

.field private static final URL_COLUMN:Ljava/lang/String; = "url"

.field private static final VIDEO_CACHE_TABLE_NAME:Ljava/lang/String; = "video_cache"

.field private static dbManagerInstance:Lcom/jumptap/adtag/db/DBManager;


# instance fields
.field private context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private insertStmt:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
	.locals 0
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	.line 49
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 50
	iput-object p1, p0, Lcom/jumptap/adtag/db/DBManager;->context:Landroid/content/Context;

	.line 51
	invoke-direct {p0}, Lcom/jumptap/adtag/db/DBManager;->openDB()V

	.line 52
	return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jumptap/adtag/db/DBManager;
	.locals 1
	.param p0, "context"	# Landroid/content/Context;

	.prologue
	.line 60
	sget-object v0, Lcom/jumptap/adtag/db/DBManager;->dbManagerInstance:Lcom/jumptap/adtag/db/DBManager;

	if-nez v0, :cond_0

	.line 61
	new-instance v0, Lcom/jumptap/adtag/db/DBManager;

	invoke-direct {v0, p0}, Lcom/jumptap/adtag/db/DBManager;-><init>(Landroid/content/Context;)V

	sput-object v0, Lcom/jumptap/adtag/db/DBManager;->dbManagerInstance:Lcom/jumptap/adtag/db/DBManager;

	.line 63
	:cond_0
	sget-object v0, Lcom/jumptap/adtag/db/DBManager;->dbManagerInstance:Lcom/jumptap/adtag/db/DBManager;

	return-object v0
.end method

.method private openDB()V
	.locals 2

	.prologue
	.line 306
	new-instance v0, Lcom/jumptap/adtag/db/DBManager$JtSQLiteOpenHelper;

	iget-object v1, p0, Lcom/jumptap/adtag/db/DBManager;->context:Landroid/content/Context;

	invoke-direct {v0, v1}, Lcom/jumptap/adtag/db/DBManager$JtSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

	.line 307
	.local v0, "openHelper":Lcom/jumptap/adtag/db/DBManager$JtSQLiteOpenHelper;
	invoke-virtual {v0}, Lcom/jumptap/adtag/db/DBManager$JtSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

	move-result-object v1

	iput-object v1, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	.line 308
	return-void
.end method


# virtual methods
.method public close()V
	.locals 1

	.prologue
	.line 70
	iget-object v0, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

	.line 71
	return-void
.end method

.method public deleteAllPendingEvents()V
	.locals 7

	.prologue
	.line 102
	sget-object v3, Lcom/jumptap/adtag/db/DBManager;->dbManagerInstance:Lcom/jumptap/adtag/db/DBManager;

	monitor-enter v3

	.line 104
	:try_start_0
	iget-object v2, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

	move-result v1

	.line 105
	.local v1, "isOpen":Z
	if-nez v1, :cond_0

	.line 106
	invoke-direct {p0}, Lcom/jumptap/adtag/db/DBManager;->openDB()V

	.line 108
	:cond_0
	iget-object v2, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	const-string v4, "pending_events"

	const/4 v5, 0x0

	const/4 v6, 0x0

	invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 113
	.end local v1	# "isOpen":Z
	:goto_0
	:try_start_1
	monitor-exit v3

	.line 114
	return-void

	.line 109
	:catch_0
	move-exception v0

	.line 110
	.local v0, "e":Ljava/lang/IllegalStateException;
	const-string v2, "JtAd"

	const-string v4, "Failed to delete all pending events table"

	invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	goto :goto_0

	.line 113
	.end local v0	# "e":Ljava/lang/IllegalStateException;
	:catchall_0
	move-exception v2

	monitor-exit v3
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	throw v2
.end method

.method public deleteAllVideoCacheItems()V
	.locals 7

	.prologue
	.line 248
	sget-object v3, Lcom/jumptap/adtag/db/DBManager;->dbManagerInstance:Lcom/jumptap/adtag/db/DBManager;

	monitor-enter v3

	.line 250
	:try_start_0
	iget-object v2, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

	move-result v1

	.line 251
	.local v1, "isOpen":Z
	if-nez v1, :cond_0

	.line 252
	invoke-direct {p0}, Lcom/jumptap/adtag/db/DBManager;->openDB()V

	.line 254
	:cond_0
	iget-object v2, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	const-string v4, "video_cache"

	const/4 v5, 0x0

	const/4 v6, 0x0

	invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 259
	.end local v1	# "isOpen":Z
	:goto_0
	:try_start_1
	monitor-exit v3

	.line 260
	return-void

	.line 255
	:catch_0
	move-exception v0

	.line 256
	.local v0, "e":Ljava/lang/IllegalStateException;
	const-string v2, "JtAd"

	const-string v4, "Failed to delete all video cache items table"

	invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	goto :goto_0

	.line 259
	.end local v0	# "e":Ljava/lang/IllegalStateException;
	:catchall_0
	move-exception v2

	monitor-exit v3
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	throw v2
.end method

.method public deleteEventById(I)V
	.locals 9
	.param p1, "id"	# I

	.prologue
	.line 122
	sget-object v3, Lcom/jumptap/adtag/db/DBManager;->dbManagerInstance:Lcom/jumptap/adtag/db/DBManager;

	monitor-enter v3

	.line 124
	:try_start_0
	iget-object v2, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

	move-result v1

	.line 125
	.local v1, "isOpen":Z
	if-nez v1, :cond_0

	.line 126
	invoke-direct {p0}, Lcom/jumptap/adtag/db/DBManager;->openDB()V

	.line 128
	:cond_0
	iget-object v2, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	const-string v4, "pending_events"

	const-string v5, "id=?"

	const/4 v6, 0x1

	new-array v6, v6, [Ljava/lang/String;

	const/4 v7, 0x0

	invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

	move-result-object v8

	aput-object v8, v6, v7

	invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 134
	.end local v1	# "isOpen":Z
	:goto_0
	:try_start_1
	monitor-exit v3

	.line 135
	return-void

	.line 130
	:catch_0
	move-exception v0

	.line 131
	.local v0, "e":Ljava/lang/IllegalStateException;
	const-string v2, "JtAd"

	new-instance v4, Ljava/lang/StringBuilder;

	invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

	const-string v5, "Failed to delete event by id="

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	goto :goto_0

	.line 134
	.end local v0	# "e":Ljava/lang/IllegalStateException;
	:catchall_0
	move-exception v2

	monitor-exit v3
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	throw v2
.end method

.method public deleteVideoCacheItemByAdId(Ljava/lang/String;)V
	.locals 8
	.param p1, "adid"	# Ljava/lang/String;

	.prologue
	.line 268
	sget-object v3, Lcom/jumptap/adtag/db/DBManager;->dbManagerInstance:Lcom/jumptap/adtag/db/DBManager;

	monitor-enter v3

	.line 270
	:try_start_0
	iget-object v2, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

	move-result v1

	.line 271
	.local v1, "isOpen":Z
	if-nez v1, :cond_0

	.line 272
	invoke-direct {p0}, Lcom/jumptap/adtag/db/DBManager;->openDB()V

	.line 274
	:cond_0
	iget-object v2, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	const-string v4, "video_cache"

	const-string v5, "adid=?"

	const/4 v6, 0x1

	new-array v6, v6, [Ljava/lang/String;

	const/4 v7, 0x0

	aput-object p1, v6, v7

	invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 282
	.end local v1	# "isOpen":Z
	:goto_0
	:try_start_1
	monitor-exit v3

	.line 283
	return-void

	.line 276
	:catch_0
	move-exception v0

	.line 277
	.local v0, "e":Ljava/lang/IllegalStateException;
	const-string v2, "JtAd"

	new-instance v4, Ljava/lang/StringBuilder;

	invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

	const-string v5, "Failed to delete video chache item by adid="

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	goto :goto_0

	.line 282
	.end local v0	# "e":Ljava/lang/IllegalStateException;
	:catchall_0
	move-exception v2

	monitor-exit v3
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	throw v2
.end method

.method public deleteVideoCacheItemById(I)V
	.locals 9
	.param p1, "id"	# I

	.prologue
	.line 286
	sget-object v3, Lcom/jumptap/adtag/db/DBManager;->dbManagerInstance:Lcom/jumptap/adtag/db/DBManager;

	monitor-enter v3

	.line 288
	:try_start_0
	iget-object v2, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

	move-result v1

	.line 289
	.local v1, "isOpen":Z
	if-nez v1, :cond_0

	.line 290
	invoke-direct {p0}, Lcom/jumptap/adtag/db/DBManager;->openDB()V

	.line 292
	:cond_0
	iget-object v2, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	const-string v4, "video_cache"

	const-string v5, "id=?"

	const/4 v6, 0x1

	new-array v6, v6, [Ljava/lang/String;

	const/4 v7, 0x0

	invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

	move-result-object v8

	aput-object v8, v6, v7

	invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
	:try_end_0
	.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	.line 299
	.end local v1	# "isOpen":Z
	:goto_0
	:try_start_1
	monitor-exit v3

	.line 300
	return-void

	.line 294
	:catch_0
	move-exception v0

	.line 295
	.local v0, "e":Ljava/lang/IllegalStateException;
	const-string v2, "JtAd"

	new-instance v4, Ljava/lang/StringBuilder;

	invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

	const-string v5, "Failed to delete video chache item by id="

	invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

	move-result-object v4

	invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v4

	invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

	goto :goto_0

	.line 299
	.end local v0	# "e":Ljava/lang/IllegalStateException;
	:catchall_0
	move-exception v2

	monitor-exit v3
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_0

	throw v2
.end method

.method public insertEvent(Lcom/jumptap/adtag/events/JtEvent;)J
	.locals 5
	.param p1, "event"	# Lcom/jumptap/adtag/events/JtEvent;

	.prologue
	.line 82
	sget-object v2, Lcom/jumptap/adtag/db/DBManager;->dbManagerInstance:Lcom/jumptap/adtag/db/DBManager;

	monitor-enter v2

	.line 83
	:try_start_0
	iget-object v1, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

	move-result v0

	.line 84
	.local v0, "isOpen":Z
	if-nez v0, :cond_0

	.line 85
	invoke-direct {p0}, Lcom/jumptap/adtag/db/DBManager;->openDB()V

	.line 87
	:cond_0
	iget-object v1, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	const-string v3, "insert into pending_events(eventType,date,url) values (?,?,?)"

	invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

	move-result-object v1

	iput-object v1, p0, Lcom/jumptap/adtag/db/DBManager;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

	.line 88
	iget-object v1, p0, Lcom/jumptap/adtag/db/DBManager;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

	const/4 v3, 0x1

	invoke-virtual {p1}, Lcom/jumptap/adtag/events/JtEvent;->getEventType()Lcom/jumptap/adtag/events/EventType;

	move-result-object v4

	invoke-virtual {v4}, Lcom/jumptap/adtag/events/EventType;->name()Ljava/lang/String;

	move-result-object v4

	invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

	.line 91
	iget-object v1, p0, Lcom/jumptap/adtag/db/DBManager;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

	const/4 v3, 0x2

	invoke-virtual {p1}, Lcom/jumptap/adtag/events/JtEvent;->getDate()Ljava/lang/String;

	move-result-object v4

	invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

	.line 92
	iget-object v1, p0, Lcom/jumptap/adtag/db/DBManager;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

	const/4 v3, 0x3

	invoke-virtual {p1}, Lcom/jumptap/adtag/events/JtEvent;->getUrl()Ljava/lang/String;

	move-result-object v4

	invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

	.line 93
	iget-object v1, p0, Lcom/jumptap/adtag/db/DBManager;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

	invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

	move-result-wide v3

	monitor-exit v2

	return-wide v3

	.line 94
	.end local v0	# "isOpen":Z
	:catchall_0
	move-exception v1

	monitor-exit v2
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	throw v1
.end method

.method public insertVideoCacheItem(Lcom/jumptap/adtag/media/VideoCacheItem;)J
	.locals 5
	.param p1, "item"	# Lcom/jumptap/adtag/media/VideoCacheItem;

	.prologue
	.line 200
	sget-object v2, Lcom/jumptap/adtag/db/DBManager;->dbManagerInstance:Lcom/jumptap/adtag/db/DBManager;

	monitor-enter v2

	.line 201
	:try_start_0
	iget-object v1, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

	move-result v0

	.line 202
	.local v0, "isOpen":Z
	if-nez v0, :cond_0

	.line 203
	invoke-direct {p0}, Lcom/jumptap/adtag/db/DBManager;->openDB()V

	.line 206
	:cond_0
	iget-object v1, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	const-string v3, "insert into video_cache(adid,date) values (?,?)"

	invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

	move-result-object v1

	iput-object v1, p0, Lcom/jumptap/adtag/db/DBManager;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

	.line 208
	iget-object v1, p0, Lcom/jumptap/adtag/db/DBManager;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

	const/4 v3, 0x1

	invoke-virtual {p1}, Lcom/jumptap/adtag/media/VideoCacheItem;->getAdID()Ljava/lang/String;

	move-result-object v4

	invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

	.line 209
	iget-object v1, p0, Lcom/jumptap/adtag/db/DBManager;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

	const/4 v3, 0x2

	invoke-virtual {p1}, Lcom/jumptap/adtag/media/VideoCacheItem;->getDate()Ljava/lang/String;

	move-result-object v4

	invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

	.line 210
	iget-object v1, p0, Lcom/jumptap/adtag/db/DBManager;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

	invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

	move-result-wide v3

	monitor-exit v2

	return-wide v3

	.line 211
	.end local v0	# "isOpen":Z
	:catchall_0
	move-exception v1

	monitor-exit v2
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	throw v1
.end method

.method public selectAllEvents()Ljava/util/List;
	.locals 23
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"()",
			"Ljava/util/List",
			"<",
			"Lcom/jumptap/adtag/events/JtEvent;",
			">;"
		}
	.end annotation

	.prologue
	.line 144
	sget-object v22, Lcom/jumptap/adtag/db/DBManager;->dbManagerInstance:Lcom/jumptap/adtag/db/DBManager;

	monitor-enter v22

	.line 145
	const/4 v12, 0x0

	.line 146
	.local v12, "cursor":Landroid/database/Cursor;
	const/4 v10, 0x0

	.line 148
	.local v10, "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	:try_start_0
	new-instance v19, Ljava/util/ArrayList;

	invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

	.line 149
	.local v19, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jumptap/adtag/events/JtEvent;>;"
	move-object/from16 v0, p0

	iget-object v2, v0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

	move-result v18

	.line 150
	.local v18, "isOpen":Z
	if-nez v18, :cond_0

	.line 151
	invoke-direct/range {p0 .. p0}, Lcom/jumptap/adtag/db/DBManager;->openDB()V

	.line 153
	:cond_0
	move-object/from16 v0, p0

	iget-object v2, v0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	const-string v3, "pending_events"

	const/4 v4, 0x4

	new-array v4, v4, [Ljava/lang/String;

	const/4 v5, 0x0

	const-string v6, "id"

	aput-object v6, v4, v5

	const/4 v5, 0x1

	const-string v6, "eventType"

	aput-object v6, v4, v5

	const/4 v5, 0x2

	const-string v6, "date"

	aput-object v6, v4, v5

	const/4 v5, 0x3

	const-string v6, "url"

	aput-object v6, v4, v5

	const/4 v5, 0x0

	const/4 v6, 0x0

	const/4 v7, 0x0

	const/4 v8, 0x0

	const-string v9, "id asc"

	invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

	move-result-object v12

	.line 157
	invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_1

	move-result v2

	if-eqz v2, :cond_2

	:cond_1
	move-object v11, v10

	.line 159
	.end local v10	# "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	.local v11, "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	const/4 v2, 0x0

	:try_start_1
	invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

	move-result v17

	.line 160
	.local v17, "id":I
	const/4 v2, 0x1

	invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

	move-result-object v20

	.line 161
	.local v20, "s":Ljava/lang/String;
	if-eqz v20, :cond_4

	.line 162
	const/4 v2, 0x1

	invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

	move-result-object v2

	invoke-static {v2}, Lcom/jumptap/adtag/events/EventType;->valueOf(Ljava/lang/String;)Lcom/jumptap/adtag/events/EventType;

	move-result-object v14

	.line 164
	.local v14, "eventType":Lcom/jumptap/adtag/events/EventType;
	const/4 v2, 0x2

	invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

	move-result-object v13

	.line 165
	.local v13, "date":Ljava/lang/String;
	const/4 v2, 0x3

	invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

	move-result-object v21

	.line 166
	.local v21, "url":Ljava/lang/String;
	new-instance v2, Lcom/jumptap/adtag/events/JtEvent;

	move/from16 v0, v17

	move-object/from16 v1, v21

	invoke-direct {v2, v0, v1, v14, v13}, Lcom/jumptap/adtag/events/JtEvent;-><init>(ILjava/lang/String;Lcom/jumptap/adtag/events/EventType;Ljava/lang/String;)V

	move-object/from16 v0, v19

	invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
	:try_end_1
	.catchall {:try_start_1 .. :try_end_1} :catchall_2

	move-object v10, v11

	.line 173
	.end local v11	# "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	.end local v13	# "date":Ljava/lang/String;
	.end local v14	# "eventType":Lcom/jumptap/adtag/events/EventType;
	.end local v21	# "url":Ljava/lang/String;
	.restart local v10	# "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	:goto_0
	:try_start_2
	invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
	:try_end_2
	.catchall {:try_start_2 .. :try_end_2} :catchall_1

	move-result v2

	if-nez v2, :cond_1

	.line 177
	.end local v17	# "id":I
	.end local v20	# "s":Ljava/lang/String;
	:cond_2
	if-eqz v12, :cond_3

	:try_start_3
	invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

	move-result v2

	if-nez v2, :cond_3

	.line 178
	invoke-interface {v12}, Landroid/database/Cursor;->close()V

	.line 181
	:cond_3
	if-eqz v10, :cond_6

	invoke-interface {v10}, Ljava/util/List;->size()I

	move-result v2

	const/16 v3, 0xa

	if-le v2, v3, :cond_6

	.line 184
	invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

	move-result-object v16

	.local v16, "i$":Ljava/util/Iterator;
	:goto_1
	invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

	move-result v2

	if-eqz v2, :cond_6

	invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

	move-result-object v15

	check-cast v15, Ljava/lang/Integer;

	.line 185
	.local v15, "i":Ljava/lang/Integer;
	invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

	move-result v2

	move-object/from16 v0, p0

	invoke-virtual {v0, v2}, Lcom/jumptap/adtag/db/DBManager;->deleteEventById(I)V

	goto :goto_1

	.line 189
	.end local v15	# "i":Ljava/lang/Integer;
	.end local v16	# "i$":Ljava/util/Iterator;
	.end local v18	# "isOpen":Z
	.end local v19	# "list":Ljava/util/List;, "Ljava/util/List<Lcom/jumptap/adtag/events/JtEvent;>;"
	:catchall_0
	move-exception v2

	monitor-exit v22
	:try_end_3
	.catchall {:try_start_3 .. :try_end_3} :catchall_0

	throw v2

	.line 168
	.end local v10	# "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	.restart local v11	# "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	.restart local v17	# "id":I
	.restart local v18	# "isOpen":Z
	.restart local v19	# "list":Ljava/util/List;, "Ljava/util/List<Lcom/jumptap/adtag/events/JtEvent;>;"
	.restart local v20	# "s":Ljava/lang/String;
	:cond_4
	if-nez v11, :cond_8

	.line 169
	:try_start_4
	new-instance v10, Ljava/util/ArrayList;

	invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
	:try_end_4
	.catchall {:try_start_4 .. :try_end_4} :catchall_2

	.line 171
	.end local v11	# "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	.restart local v10	# "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	:goto_2
	:try_start_5
	new-instance v2, Ljava/lang/Integer;

	move/from16 v0, v17

	invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

	invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
	:try_end_5
	.catchall {:try_start_5 .. :try_end_5} :catchall_1

	goto :goto_0

	.line 177
	.end local v17	# "id":I
	.end local v18	# "isOpen":Z
	.end local v19	# "list":Ljava/util/List;, "Ljava/util/List<Lcom/jumptap/adtag/events/JtEvent;>;"
	.end local v20	# "s":Ljava/lang/String;
	:catchall_1
	move-exception v2

	:goto_3
	if-eqz v12, :cond_5

	:try_start_6
	invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

	move-result v3

	if-nez v3, :cond_5

	.line 178
	invoke-interface {v12}, Landroid/database/Cursor;->close()V

	.line 181
	:cond_5
	if-eqz v10, :cond_7

	invoke-interface {v10}, Ljava/util/List;->size()I

	move-result v3

	const/16 v4, 0xa

	if-le v3, v4, :cond_7

	.line 184
	invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

	move-result-object v16

	.restart local v16	# "i$":Ljava/util/Iterator;
	:goto_4
	invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

	move-result v3

	if-eqz v3, :cond_7

	invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

	move-result-object v15

	check-cast v15, Ljava/lang/Integer;

	.line 185
	.restart local v15	# "i":Ljava/lang/Integer;
	invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

	move-result v3

	move-object/from16 v0, p0

	invoke-virtual {v0, v3}, Lcom/jumptap/adtag/db/DBManager;->deleteEventById(I)V

	goto :goto_4

	.end local v15	# "i":Ljava/lang/Integer;
	.end local v16	# "i$":Ljava/util/Iterator;
	.restart local v18	# "isOpen":Z
	.restart local v19	# "list":Ljava/util/List;, "Ljava/util/List<Lcom/jumptap/adtag/events/JtEvent;>;"
	:cond_6
	monitor-exit v22

	return-object v19

	.end local v18	# "isOpen":Z
	.end local v19	# "list":Ljava/util/List;, "Ljava/util/List<Lcom/jumptap/adtag/events/JtEvent;>;"
	:cond_7
	throw v2
	:try_end_6
	.catchall {:try_start_6 .. :try_end_6} :catchall_0

	.line 177
	.end local v10	# "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	.restart local v11	# "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	.restart local v18	# "isOpen":Z
	.restart local v19	# "list":Ljava/util/List;, "Ljava/util/List<Lcom/jumptap/adtag/events/JtEvent;>;"
	:catchall_2
	move-exception v2

	move-object v10, v11

	.end local v11	# "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	.restart local v10	# "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	goto :goto_3

	.end local v10	# "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	.restart local v11	# "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	.restart local v17	# "id":I
	.restart local v20	# "s":Ljava/lang/String;
	:cond_8
	move-object v10, v11

	.end local v11	# "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	.restart local v10	# "bads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
	goto :goto_2
.end method

.method public selectAllVideoCacheItems()Ljava/util/List;
	.locals 15
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"()",
			"Ljava/util/List",
			"<",
			"Lcom/jumptap/adtag/media/VideoCacheItem;",
			">;"
		}
	.end annotation

	.prologue
	.line 220
	sget-object v14, Lcom/jumptap/adtag/db/DBManager;->dbManagerInstance:Lcom/jumptap/adtag/db/DBManager;

	monitor-enter v14

	.line 221
	:try_start_0
	new-instance v13, Ljava/util/ArrayList;

	invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

	.line 222
	.local v13, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jumptap/adtag/media/VideoCacheItem;>;"
	iget-object v0, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

	move-result v12

	.line 223
	.local v12, "isOpen":Z
	if-nez v12, :cond_0

	.line 224
	invoke-direct {p0}, Lcom/jumptap/adtag/db/DBManager;->openDB()V

	.line 226
	:cond_0
	iget-object v0, p0, Lcom/jumptap/adtag/db/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

	const-string v1, "video_cache"

	const/4 v2, 0x3

	new-array v2, v2, [Ljava/lang/String;

	const/4 v3, 0x0

	const-string v4, "id"

	aput-object v4, v2, v3

	const/4 v3, 0x1

	const-string v4, "adid"

	aput-object v4, v2, v3

	const/4 v3, 0x2

	const-string v4, "date"

	aput-object v4, v2, v3

	const/4 v3, 0x0

	const/4 v4, 0x0

	const/4 v5, 0x0

	const/4 v6, 0x0

	const-string v7, "id desc"

	invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

	move-result-object v9

	.line 229
	.local v9, "cursor":Landroid/database/Cursor;
	invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

	move-result v0

	if-eqz v0, :cond_2

	.line 231
	:cond_1
	const/4 v0, 0x0

	invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

	move-result v11

	.line 232
	.local v11, "id":I
	const/4 v0, 0x1

	invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

	move-result-object v8

	.line 233
	.local v8, "adid":Ljava/lang/String;
	const/4 v0, 0x2

	invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

	move-result-object v10

	.line 234
	.local v10, "date":Ljava/lang/String;
	new-instance v0, Lcom/jumptap/adtag/media/VideoCacheItem;

	invoke-direct {v0, v11, v8, v10}, Lcom/jumptap/adtag/media/VideoCacheItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

	invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

	.line 235
	invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

	move-result v0

	if-nez v0, :cond_1

	.line 237
	.end local v8	# "adid":Ljava/lang/String;
	.end local v10	# "date":Ljava/lang/String;
	.end local v11	# "id":I
	:cond_2
	if-eqz v9, :cond_3

	invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

	move-result v0

	if-nez v0, :cond_3

	.line 238
	invoke-interface {v9}, Landroid/database/Cursor;->close()V

	.line 240
	:cond_3
	monitor-exit v14

	return-object v13

	.line 241
	.end local v9	# "cursor":Landroid/database/Cursor;
	.end local v12	# "isOpen":Z
	.end local v13	# "list":Ljava/util/List;, "Ljava/util/List<Lcom/jumptap/adtag/media/VideoCacheItem;>;"
	:catchall_0
	move-exception v0

	monitor-exit v14
	:try_end_0
	.catchall {:try_start_0 .. :try_end_0} :catchall_0

	throw v0
.end method
