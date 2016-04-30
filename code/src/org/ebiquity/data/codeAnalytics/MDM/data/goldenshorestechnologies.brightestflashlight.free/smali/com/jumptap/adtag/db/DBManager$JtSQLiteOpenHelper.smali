.class Lcom/jumptap/adtag/db/DBManager$JtSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/jumptap/adtag/db/DBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0xa
	name = "JtSQLiteOpenHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
	.locals 3
	.param p1, "context"	# Landroid/content/Context;

	.prologue
	.line 314
	const-string v0, "jt_ad_view.db"

	const/4 v1, 0x0

	const/4 v2, 0x5

	invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

	.line 315
	return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
	.locals 2
	.param p1, "db"	# Landroid/database/sqlite/SQLiteDatabase;

	.prologue
	.line 319
	const-string v0, "JtAd"

	const-string v1, "Creating database."

	invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

	.line 321
	const-string v0, "CREATE TABLE IF NOT EXISTS pending_events(id INTEGER PRIMARY KEY, eventType TEXT, date TEXT, url TEXT);"

	invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

	.line 322
	const-string v0, "CREATE TABLE IF NOT EXISTS video_cache(id INTEGER PRIMARY KEY, adid INTEGER,date TEXT);"

	invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

	.line 323
	return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
	.locals 2
	.param p1, "db"	# Landroid/database/sqlite/SQLiteDatabase;
	.param p2, "oldVersion"	# I
	.param p3, "newVersion"	# I

	.prologue
	.line 327
	const-string v0, "JtAd"

	const-string v1, "Upgrading database, this will drop tables and recreate."

	invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

	.line 328
	const-string v0, "DROP TABLE IF EXISTS pending_events; DROP TABLE IF EXISTS video_cache;"

	invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

	.line 329
	invoke-virtual {p0, p1}, Lcom/jumptap/adtag/db/DBManager$JtSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

	.line 330
	return-void
.end method
