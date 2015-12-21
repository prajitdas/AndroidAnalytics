.class final Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
.super Lcom/millennialmedia/google/gson/TypeAdapter;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/millennialmedia/google/gson/TypeAdapter",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/millennialmedia/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final elementTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/TypeAdapter;Lcom/millennialmedia/google/gson/internal/ObjectConstructor;)V
    .locals 1
    .param p1, "context"    # Lcom/millennialmedia/google/gson/Gson;
    .param p2, "elementType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TE;>;",
            "Lcom/millennialmedia/google/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;, "Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    .local p3, "elementTypeAdapter":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TE;>;"
    .local p4, "constructor":Lcom/millennialmedia/google/gson/internal/ObjectConstructor;, "Lcom/millennialmedia/google/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;"
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/TypeAdapter;-><init>()V

    .line 68
    new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p1, p3, p2}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    .line 70
    iput-object p4, p0, Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcom/millennialmedia/google/gson/internal/ObjectConstructor;

    .line 71
    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/millennialmedia/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;, "Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/util/Collection;
    .locals 4
    .param p1, "in"    # Lcom/millennialmedia/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;, "Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/google/gson/stream/JsonToken;->NULL:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNull()V

    .line 76
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcom/millennialmedia/google/gson/internal/ObjectConstructor;

    invoke-interface {v2}, Lcom/millennialmedia/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 80
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->beginArray()V

    .line 81
    :goto_1
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/millennialmedia/google/gson/TypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    .local v1, "instance":Ljava/lang/Object;, "TE;"
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    .end local v1    # "instance":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->endArray()V

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/millennialmedia/google/gson/stream/JsonWriter;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;, "Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/util/Collection;)V

    return-void
.end method

.method public write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/util/Collection;)V
    .locals 3
    .param p1, "out"    # Lcom/millennialmedia/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/stream/JsonWriter;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;, "Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-nez p2, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->nullValue()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->beginArray()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 96
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "element":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-virtual {v2, p1, v0}, Lcom/millennialmedia/google/gson/TypeAdapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->endArray()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    goto :goto_0
.end method
