.class public final Lcom/millennialmedia/android/MMRequest;
.super Ljava/lang/Object;
.source "MMRequest.java"


# static fields
.field public static final EDUCATION_ASSOCIATE:Ljava/lang/String; = "associate"

.field public static final EDUCATION_BACHELORS:Ljava/lang/String; = "bachelors"

.field public static final EDUCATION_HIGH_SCHOOL:Ljava/lang/String; = "highschool"

.field public static final EDUCATION_IN_COLLEGE:Ljava/lang/String; = "incollege"

.field public static final EDUCATION_MASTERS:Ljava/lang/String; = "masters"

.field public static final EDUCATION_PHD:Ljava/lang/String; = "phd"

.field public static final EDUCATION_PROFESSIONAL:Ljava/lang/String; = "professional"

.field public static final EDUCATION_SOME_COLLEGE:Ljava/lang/String; = "somecollege"

.field public static final ETHNICITY_ASIAN:Ljava/lang/String; = "asian"

.field public static final ETHNICITY_BLACK:Ljava/lang/String; = "black"

.field public static final ETHNICITY_HISPANIC:Ljava/lang/String; = "hispanic"

.field public static final ETHNICITY_INDIAN:Ljava/lang/String; = "indian"

.field public static final ETHNICITY_MIDDLE_EASTERN:Ljava/lang/String; = "middleeastern"

.field public static final ETHNICITY_NATIVE_AMERICAN:Ljava/lang/String; = "nativeamerican"

.field public static final ETHNICITY_OTHER:Ljava/lang/String; = "other"

.field public static final ETHNICITY_PACIFIC_ISLANDER:Ljava/lang/String; = "pacificislander"

.field public static final ETHNICITY_WHITE:Ljava/lang/String; = "white"

.field public static final GENDER_FEMALE:Ljava/lang/String; = "female"

.field public static final GENDER_MALE:Ljava/lang/String; = "male"

.field public static final KEY_AGE:Ljava/lang/String; = "age"

.field public static final KEY_CHILDREN:Ljava/lang/String; = "children"

.field public static final KEY_EDUCATION:Ljava/lang/String; = "education"

.field public static final KEY_ETHNICITY:Ljava/lang/String; = "ethnicity"

.field public static final KEY_GENDER:Ljava/lang/String; = "gender"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "hsht"

.field public static final KEY_INCOME:Ljava/lang/String; = "income"

.field public static final KEY_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final KEY_MARITAL_STATUS:Ljava/lang/String; = "marital"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final KEY_POLITICS:Ljava/lang/String; = "politics"

.field public static final KEY_VENDOR:Ljava/lang/String; = "vendor"

.field public static final KEY_WIDTH:Ljava/lang/String; = "hswd"

.field public static final KEY_ZIP_CODE:Ljava/lang/String; = "zip"

.field public static final MARITAL_DIVORCED:Ljava/lang/String; = "divorced"

.field public static final MARITAL_ENGAGED:Ljava/lang/String; = "engaged"

.field public static final MARITAL_MARRIED:Ljava/lang/String; = "married"

.field public static final MARITAL_RELATIONSHIP:Ljava/lang/String; = "relationship"

.field public static final MARITAL_SINGLE:Ljava/lang/String; = "single"

.field public static final ORIENTATION_BISEXUAL:Ljava/lang/String; = "bisexual"

.field public static final ORIENTATION_GAY:Ljava/lang/String; = "gay"

.field public static final ORIENTATION_STRAIGHT:Ljava/lang/String; = "straight"

.field static location:Landroid/location/Location;


# instance fields
.field age:Ljava/lang/String;

.field children:Ljava/lang/String;

.field education:Ljava/lang/String;

.field ethnicity:Ljava/lang/String;

.field gender:Ljava/lang/String;

.field income:Ljava/lang/String;

.field keywords:Ljava/lang/String;

.field marital:Ljava/lang/String;

.field orientation:Ljava/lang/String;

.field politics:Ljava/lang/String;

.field private values:Ljava/util/Map;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"Ljava/util/Map",
			"<",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			">;"
		}
	.end annotation
.end field

.field vendor:Ljava/lang/String;

.field zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
	.locals 1

	.prologue
	const/4 v0, 0x0

	.line 87
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 69
	iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->age:Ljava/lang/String;

	.line 70
	iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->children:Ljava/lang/String;

	.line 71
	iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->education:Ljava/lang/String;

	.line 72
	iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->ethnicity:Ljava/lang/String;

	.line 73
	iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->gender:Ljava/lang/String;

	.line 74
	iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->income:Ljava/lang/String;

	.line 75
	iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->keywords:Ljava/lang/String;

	.line 76
	iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->marital:Ljava/lang/String;

	.line 77
	iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->orientation:Ljava/lang/String;

	.line 78
	iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->politics:Ljava/lang/String;

	.line 79
	iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->vendor:Ljava/lang/String;

	.line 80
	iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->zip:Ljava/lang/String;

	.line 84
	new-instance v0, Ljava/util/HashMap;

	invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

	iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->values:Ljava/util/Map;

	.line 89
	return-void
.end method

.method public static getUserLocation()Landroid/location/Location;
	.locals 1

	.prologue
	.line 138
	sget-object v0, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	return-object v0
.end method

.method static insertLocation(Ljava/util/Map;)V
	.locals 3
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Ljava/util/Map",
			"<",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			">;)V"
		}
	.end annotation

	.prologue
	.line 320
	.local p0, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	sget-object v0, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	if-eqz v0, :cond_4

	.line 322
	const-string v0, "lat"

	sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

	move-result-wide v1

	invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

	move-result-object v1

	invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 323
	const-string v0, "long"

	sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

	move-result-wide v1

	invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

	move-result-object v1

	invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 324
	sget-object v0, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

	move-result v0

	if-eqz v0, :cond_0

	.line 326
	const-string v0, "ha"

	sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

	move-result v1

	invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

	move-result-object v1

	invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 327
	const-string v0, "va"

	sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

	move-result v1

	invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

	move-result-object v1

	invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 329
	:cond_0
	sget-object v0, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

	move-result v0

	if-eqz v0, :cond_1

	.line 330
	const-string v0, "spd"

	sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

	move-result v1

	invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

	move-result-object v1

	invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 331
	:cond_1
	sget-object v0, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

	move-result v0

	if-eqz v0, :cond_2

	.line 332
	const-string v0, "brg"

	sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

	move-result v1

	invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

	move-result-object v1

	invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 333
	:cond_2
	sget-object v0, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

	move-result v0

	if-eqz v0, :cond_3

	.line 334
	const-string v0, "alt"

	sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

	move-result-wide v1

	invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

	move-result-object v1

	invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 335
	:cond_3
	const-string v0, "tslr"

	sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	invoke-virtual {v1}, Landroid/location/Location;->getTime()J

	move-result-wide v1

	invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

	move-result-object v1

	invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 336
	const-string v0, "loc"

	const-string v1, "true"

	invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 337
	const-string v0, "lsrc"

	sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

	move-result-object v1

	invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 343
	:goto_0
	return-void

	.line 341
	:cond_4
	const-string v0, "loc"

	const-string v1, "false"

	invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	goto :goto_0
.end method

.method public static setUserLocation(Landroid/location/Location;)V
	.locals 0
	.param p0, "userLocation"	# Landroid/location/Location;

	.prologue
	.line 131
	if-nez p0, :cond_0

	.line 134
	:goto_0
	return-void

	.line 133
	:cond_0
	sput-object p0, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

	goto :goto_0
.end method


# virtual methods
.method getUrlParams(Ljava/util/Map;)V
	.locals 4
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Ljava/util/Map",
			"<",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			">;)V"
		}
	.end annotation

	.prologue
	.line 143
	.local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	iget-object v2, p0, Lcom/millennialmedia/android/MMRequest;->values:Ljava/util/Map;

	invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

	move-result-object v2

	invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

	move-result-object v1

	.local v1, "i$":Ljava/util/Iterator;
	:goto_0
	invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

	move-result v2

	if-eqz v2, :cond_0

	invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/util/Map$Entry;

	.line 144
	.local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
	invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

	move-result-object v2

	invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

	move-result-object v3

	invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	goto :goto_0

	.line 146
	.end local v0	# "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
	:cond_0
	iget-object v2, p0, Lcom/millennialmedia/android/MMRequest;->age:Ljava/lang/String;

	if-eqz v2, :cond_1

	.line 147
	const-string v2, "age"

	iget-object v3, p0, Lcom/millennialmedia/android/MMRequest;->age:Ljava/lang/String;

	invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 148
	:cond_1
	iget-object v2, p0, Lcom/millennialmedia/android/MMRequest;->children:Ljava/lang/String;

	if-eqz v2, :cond_2

	.line 149
	const-string v2, "children"

	iget-object v3, p0, Lcom/millennialmedia/android/MMRequest;->children:Ljava/lang/String;

	invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 150
	:cond_2
	iget-object v2, p0, Lcom/millennialmedia/android/MMRequest;->education:Ljava/lang/String;

	if-eqz v2, :cond_3

	.line 151
	const-string v2, "education"

	iget-object v3, p0, Lcom/millennialmedia/android/MMRequest;->education:Ljava/lang/String;

	invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 152
	:cond_3
	iget-object v2, p0, Lcom/millennialmedia/android/MMRequest;->ethnicity:Ljava/lang/String;

	if-eqz v2, :cond_4

	.line 153
	const-string v2, "ethnicity"

	iget-object v3, p0, Lcom/millennialmedia/android/MMRequest;->ethnicity:Ljava/lang/String;

	invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 154
	:cond_4
	iget-object v2, p0, Lcom/millennialmedia/android/MMRequest;->gender:Ljava/lang/String;

	if-eqz v2, :cond_5

	.line 155
	const-string v2, "gender"

	iget-object v3, p0, Lcom/millennialmedia/android/MMRequest;->gender:Ljava/lang/String;

	invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 156
	:cond_5
	iget-object v2, p0, Lcom/millennialmedia/android/MMRequest;->income:Ljava/lang/String;

	if-eqz v2, :cond_6

	.line 157
	const-string v2, "income"

	iget-object v3, p0, Lcom/millennialmedia/android/MMRequest;->income:Ljava/lang/String;

	invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 158
	:cond_6
	iget-object v2, p0, Lcom/millennialmedia/android/MMRequest;->keywords:Ljava/lang/String;

	if-eqz v2, :cond_7

	.line 159
	const-string v2, "keywords"

	iget-object v3, p0, Lcom/millennialmedia/android/MMRequest;->keywords:Ljava/lang/String;

	invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 160
	:cond_7
	iget-object v2, p0, Lcom/millennialmedia/android/MMRequest;->marital:Ljava/lang/String;

	if-eqz v2, :cond_8

	.line 161
	const-string v2, "marital"

	iget-object v3, p0, Lcom/millennialmedia/android/MMRequest;->marital:Ljava/lang/String;

	invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 162
	:cond_8
	iget-object v2, p0, Lcom/millennialmedia/android/MMRequest;->orientation:Ljava/lang/String;

	if-eqz v2, :cond_9

	.line 163
	const-string v2, "orientation"

	iget-object v3, p0, Lcom/millennialmedia/android/MMRequest;->orientation:Ljava/lang/String;

	invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 164
	:cond_9
	iget-object v2, p0, Lcom/millennialmedia/android/MMRequest;->politics:Ljava/lang/String;

	if-eqz v2, :cond_a

	.line 165
	const-string v2, "politics"

	iget-object v3, p0, Lcom/millennialmedia/android/MMRequest;->politics:Ljava/lang/String;

	invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 166
	:cond_a
	iget-object v2, p0, Lcom/millennialmedia/android/MMRequest;->vendor:Ljava/lang/String;

	if-eqz v2, :cond_b

	.line 167
	const-string v2, "vendor"

	iget-object v3, p0, Lcom/millennialmedia/android/MMRequest;->vendor:Ljava/lang/String;

	invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 168
	:cond_b
	iget-object v2, p0, Lcom/millennialmedia/android/MMRequest;->zip:Ljava/lang/String;

	if-eqz v2, :cond_c

	.line 169
	const-string v2, "zip"

	iget-object v3, p0, Lcom/millennialmedia/android/MMRequest;->zip:Ljava/lang/String;

	invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	.line 170
	:cond_c
	return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/android/MMRequest;
	.locals 1
	.param p1, "key"	# Ljava/lang/String;
	.param p2, "value"	# Ljava/lang/String;

	.prologue
	.line 93
	const-string v0, "age"

	invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_0

	.line 94
	iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->age:Ljava/lang/String;

	.line 122
	:goto_0
	return-object p0

	.line 95
	:cond_0
	const-string v0, "children"

	invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_1

	.line 96
	iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->children:Ljava/lang/String;

	goto :goto_0

	.line 97
	:cond_1
	const-string v0, "education"

	invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_2

	.line 98
	iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->education:Ljava/lang/String;

	goto :goto_0

	.line 99
	:cond_2
	const-string v0, "ethnicity"

	invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_3

	.line 100
	iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->ethnicity:Ljava/lang/String;

	goto :goto_0

	.line 101
	:cond_3
	const-string v0, "gender"

	invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_4

	.line 102
	iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->gender:Ljava/lang/String;

	goto :goto_0

	.line 103
	:cond_4
	const-string v0, "income"

	invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_5

	.line 104
	iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->income:Ljava/lang/String;

	goto :goto_0

	.line 105
	:cond_5
	const-string v0, "keywords"

	invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_6

	.line 106
	iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->keywords:Ljava/lang/String;

	goto :goto_0

	.line 107
	:cond_6
	const-string v0, "marital"

	invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_7

	.line 108
	iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->marital:Ljava/lang/String;

	goto :goto_0

	.line 109
	:cond_7
	const-string v0, "orientation"

	invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_8

	.line 110
	iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->orientation:Ljava/lang/String;

	goto :goto_0

	.line 111
	:cond_8
	const-string v0, "politics"

	invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_9

	.line 112
	iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->politics:Ljava/lang/String;

	goto :goto_0

	.line 113
	:cond_9
	const-string v0, "vendor"

	invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_a

	.line 114
	iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->vendor:Ljava/lang/String;

	goto :goto_0

	.line 115
	:cond_a
	const-string v0, "zip"

	invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

	move-result v0

	if-eqz v0, :cond_b

	.line 116
	iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->zip:Ljava/lang/String;

	goto :goto_0

	.line 117
	:cond_b
	if-eqz p2, :cond_c

	.line 118
	iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->values:Ljava/util/Map;

	invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

	goto/16 :goto_0

	.line 120
	:cond_c
	iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->values:Ljava/util/Map;

	invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

	goto/16 :goto_0
.end method

.method public setAge(Ljava/lang/String;)V
	.locals 0
	.param p1, "age"	# Ljava/lang/String;

	.prologue
	.line 179
	iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->age:Ljava/lang/String;

	.line 180
	return-void
.end method

.method public setChildren(Ljava/lang/String;)V
	.locals 0
	.param p1, "children"	# Ljava/lang/String;

	.prologue
	.line 189
	iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->children:Ljava/lang/String;

	.line 190
	return-void
.end method

.method public setEducation(Ljava/lang/String;)V
	.locals 0
	.param p1, "education"	# Ljava/lang/String;

	.prologue
	.line 199
	iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->education:Ljava/lang/String;

	.line 200
	return-void
.end method

.method public setEthnicity(Ljava/lang/String;)V
	.locals 0
	.param p1, "ethnicity"	# Ljava/lang/String;

	.prologue
	.line 209
	iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->ethnicity:Ljava/lang/String;

	.line 210
	return-void
.end method

.method public setGender(Ljava/lang/String;)V
	.locals 0
	.param p1, "gender"	# Ljava/lang/String;

	.prologue
	.line 219
	iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->gender:Ljava/lang/String;

	.line 220
	return-void
.end method

.method public setIncome(Ljava/lang/String;)V
	.locals 0
	.param p1, "income"	# Ljava/lang/String;

	.prologue
	.line 229
	iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->income:Ljava/lang/String;

	.line 230
	return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
	.locals 0
	.param p1, "keywords"	# Ljava/lang/String;

	.prologue
	.line 239
	iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->keywords:Ljava/lang/String;

	.line 240
	return-void
.end method

.method public setMarital(Ljava/lang/String;)V
	.locals 0
	.param p1, "marital"	# Ljava/lang/String;

	.prologue
	.line 249
	iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->marital:Ljava/lang/String;

	.line 250
	return-void
.end method

.method public setMetaValues(Ljava/util/Map;)V
	.locals 4
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"(",
			"Ljava/util/Map",
			"<",
			"Ljava/lang/String;",
			"Ljava/lang/String;",
			">;)V"
		}
	.end annotation

	.prologue
	.line 311
	.local p1, "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
	if-nez p1, :cond_1

	.line 316
	:cond_0
	return-void

	.line 314
	:cond_1
	invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

	move-result-object v2

	invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

	move-result-object v1

	.local v1, "i$":Ljava/util/Iterator;
	:goto_0
	invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

	move-result v2

	if-eqz v2, :cond_0

	invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

	move-result-object v0

	check-cast v0, Ljava/util/Map$Entry;

	.line 315
	.local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
	invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

	move-result-object v2

	check-cast v2, Ljava/lang/String;

	invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

	move-result-object v3

	check-cast v3, Ljava/lang/String;

	invoke-virtual {p0, v2, v3}, Lcom/millennialmedia/android/MMRequest;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/android/MMRequest;

	goto :goto_0
.end method

.method public setOrientation(Ljava/lang/String;)V
	.locals 0
	.param p1, "sexualOrientation"	# Ljava/lang/String;

	.prologue
	.line 259
	iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->orientation:Ljava/lang/String;

	.line 260
	return-void
.end method

.method public setPolitics(Ljava/lang/String;)V
	.locals 0
	.param p1, "politics"	# Ljava/lang/String;

	.prologue
	.line 268
	iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->politics:Ljava/lang/String;

	.line 269
	return-void
.end method

.method public setVendor(Ljava/lang/String;)V
	.locals 0
	.param p1, "vendor"	# Ljava/lang/String;

	.prologue
	.line 278
	iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->vendor:Ljava/lang/String;

	.line 279
	return-void
.end method

.method public setZip(Ljava/lang/String;)V
	.locals 0
	.param p1, "zipCode"	# Ljava/lang/String;

	.prologue
	.line 289
	iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->zip:Ljava/lang/String;

	.line 290
	return-void
.end method
