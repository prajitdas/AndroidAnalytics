.class public final Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/millennialmedia/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
	value = {
		Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
	}
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;)V
	.locals 0
	.param p1, "constructorConstructor"	# Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

	.prologue
	.line 40
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 41
	iput-object p1, p0, Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

	.line 42
	return-void
.end method


# virtual methods
.method public create(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;
	.locals 7
	.param p1, "gson"	# Lcom/millennialmedia/google/gson/Gson;
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"<T:",
			"Ljava/lang/Object;",
			">(",
			"Lcom/millennialmedia/google/gson/Gson;",
			"Lcom/millennialmedia/google/gson/reflect/TypeToken",
			"<TT;>;)",
			"Lcom/millennialmedia/google/gson/TypeAdapter",
			"<TT;>;"
		}
	.end annotation

	.prologue
	.line 45
	.local p2, "typeToken":Lcom/millennialmedia/google/gson/reflect/TypeToken;, "Lcom/millennialmedia/google/gson/reflect/TypeToken<TT;>;"
	invoke-virtual {p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

	move-result-object v5

	.line 47
	.local v5, "type":Ljava/lang/reflect/Type;
	invoke-virtual {p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

	move-result-object v3

	.line 48
	.local v3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
	const-class v6, Ljava/util/Collection;

	invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

	move-result v6

	if-nez v6, :cond_0

	.line 49
	const/4 v4, 0x0

	.line 58
	:goto_0
	return-object v4

	.line 52
	:cond_0
	invoke-static {v5, v3}, Lcom/millennialmedia/google/gson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

	move-result-object v1

	.line 53
	.local v1, "elementType":Ljava/lang/reflect/Type;
	invoke-static {v1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

	move-result-object v6

	invoke-virtual {p1, v6}, Lcom/millennialmedia/google/gson/Gson;->getAdapter(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;

	move-result-object v2

	.line 54
	.local v2, "elementTypeAdapter":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<*>;"
	iget-object v6, p0, Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

	invoke-virtual {v6, p2}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;->get(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/internal/ObjectConstructor;

	move-result-object v0

	.line 57
	.local v0, "constructor":Lcom/millennialmedia/google/gson/internal/ObjectConstructor;, "Lcom/millennialmedia/google/gson/internal/ObjectConstructor<TT;>;"
	new-instance v4, Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;

	invoke-direct {v4, p1, v1, v2, v0}, Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lcom/millennialmedia/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/TypeAdapter;Lcom/millennialmedia/google/gson/internal/ObjectConstructor;)V

	.line 58
	.local v4, "result":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
	goto :goto_0
.end method
