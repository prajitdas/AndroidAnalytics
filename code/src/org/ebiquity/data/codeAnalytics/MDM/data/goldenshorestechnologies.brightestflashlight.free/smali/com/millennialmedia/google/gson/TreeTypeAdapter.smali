.class final Lcom/millennialmedia/google/gson/TreeTypeAdapter;
.super Lcom/millennialmedia/google/gson/TypeAdapter;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/google/gson/TreeTypeAdapter$1;,
        Lcom/millennialmedia/google/gson/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/millennialmedia/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/millennialmedia/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/millennialmedia/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/millennialmedia/google/gson/Gson;

.field private final serializer:Lcom/millennialmedia/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/millennialmedia/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/millennialmedia/google/gson/JsonSerializer;Lcom/millennialmedia/google/gson/JsonDeserializer;Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/reflect/TypeToken;Lcom/millennialmedia/google/gson/TypeAdapterFactory;)V
    .locals 0
    .param p3, "gson"    # Lcom/millennialmedia/google/gson/Gson;
    .param p5, "skipPast"    # Lcom/millennialmedia/google/gson/TypeAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/JsonSerializer",
            "<TT;>;",
            "Lcom/millennialmedia/google/gson/JsonDeserializer",
            "<TT;>;",
            "Lcom/millennialmedia/google/gson/Gson;",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<TT;>;",
            "Lcom/millennialmedia/google/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/millennialmedia/google/gson/TreeTypeAdapter;, "Lcom/millennialmedia/google/gson/TreeTypeAdapter<TT;>;"
    .local p1, "serializer":Lcom/millennialmedia/google/gson/JsonSerializer;, "Lcom/millennialmedia/google/gson/JsonSerializer<TT;>;"
    .local p2, "deserializer":Lcom/millennialmedia/google/gson/JsonDeserializer;, "Lcom/millennialmedia/google/gson/JsonDeserializer<TT;>;"
    .local p4, "typeToken":Lcom/millennialmedia/google/gson/reflect/TypeToken;, "Lcom/millennialmedia/google/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/TypeAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->serializer:Lcom/millennialmedia/google/gson/JsonSerializer;

    .line 45
    iput-object p2, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->deserializer:Lcom/millennialmedia/google/gson/JsonDeserializer;

    .line 46
    iput-object p3, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->gson:Lcom/millennialmedia/google/gson/Gson;

    .line 47
    iput-object p4, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->typeToken:Lcom/millennialmedia/google/gson/reflect/TypeToken;

    .line 48
    iput-object p5, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->skipPast:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/google/gson/JsonSerializer;Lcom/millennialmedia/google/gson/JsonDeserializer;Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/reflect/TypeToken;Lcom/millennialmedia/google/gson/TypeAdapterFactory;Lcom/millennialmedia/google/gson/TreeTypeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/millennialmedia/google/gson/JsonSerializer;
    .param p2, "x1"    # Lcom/millennialmedia/google/gson/JsonDeserializer;
    .param p3, "x2"    # Lcom/millennialmedia/google/gson/Gson;
    .param p4, "x3"    # Lcom/millennialmedia/google/gson/reflect/TypeToken;
    .param p5, "x4"    # Lcom/millennialmedia/google/gson/TypeAdapterFactory;
    .param p6, "x5"    # Lcom/millennialmedia/google/gson/TreeTypeAdapter$1;

    .prologue
    .line 32
    .local p0, "this":Lcom/millennialmedia/google/gson/TreeTypeAdapter;, "Lcom/millennialmedia/google/gson/TreeTypeAdapter<TT;>;"
    invoke-direct/range {p0 .. p5}, Lcom/millennialmedia/google/gson/TreeTypeAdapter;-><init>(Lcom/millennialmedia/google/gson/JsonSerializer;Lcom/millennialmedia/google/gson/JsonDeserializer;Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/reflect/TypeToken;Lcom/millennialmedia/google/gson/TypeAdapterFactory;)V

    return-void
.end method

.method private delegate()Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/millennialmedia/google/gson/TreeTypeAdapter;, "Lcom/millennialmedia/google/gson/TreeTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->delegate:Lcom/millennialmedia/google/gson/TypeAdapter;

    .line 77
    .local v0, "d":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .end local v0    # "d":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "d":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->gson:Lcom/millennialmedia/google/gson/Gson;

    iget-object v2, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->skipPast:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    iget-object v3, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->typeToken:Lcom/millennialmedia/google/gson/reflect/TypeToken;

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/google/gson/Gson;->getDelegateAdapter(Lcom/millennialmedia/google/gson/TypeAdapterFactory;Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v0

    .end local v0    # "d":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
    iput-object v0, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->delegate:Lcom/millennialmedia/google/gson/TypeAdapter;

    goto :goto_0
.end method

.method public static newFactory(Lcom/millennialmedia/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;
    .locals 6
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/millennialmedia/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, "exactType":Lcom/millennialmedia/google/gson/reflect/TypeToken;, "Lcom/millennialmedia/google/gson/reflect/TypeToken<*>;"
    const/4 v4, 0x0

    .line 86
    new-instance v0, Lcom/millennialmedia/google/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/millennialmedia/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/millennialmedia/google/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/millennialmedia/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;
    .locals 6
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/millennialmedia/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, "exactType":Lcom/millennialmedia/google/gson/reflect/TypeToken;, "Lcom/millennialmedia/google/gson/reflect/TypeToken<*>;"
    const/4 v4, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    .line 97
    .local v3, "matchRawType":Z
    :goto_0
    new-instance v0, Lcom/millennialmedia/google/gson/TreeTypeAdapter$SingleTypeFactory;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/millennialmedia/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/millennialmedia/google/gson/TreeTypeAdapter$1;)V

    return-object v0

    .line 96
    .end local v3    # "matchRawType":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;
    .locals 6
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/millennialmedia/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, "hierarchyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/millennialmedia/google/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/millennialmedia/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/millennialmedia/google/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Lcom/millennialmedia/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/millennialmedia/google/gson/TreeTypeAdapter;, "Lcom/millennialmedia/google/gson/TreeTypeAdapter<TT;>;"
    iget-object v1, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->deserializer:Lcom/millennialmedia/google/gson/JsonDeserializer;

    if-nez v1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->delegate()Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/millennialmedia/google/gson/TypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/millennialmedia/google/gson/internal/Streams;->parse(Lcom/millennialmedia/google/gson/stream/JsonReader;)Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v0

    .line 56
    .local v0, "value":Lcom/millennialmedia/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const/4 v1, 0x0

    goto :goto_0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->deserializer:Lcom/millennialmedia/google/gson/JsonDeserializer;

    iget-object v2, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->typeToken:Lcom/millennialmedia/google/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->gson:Lcom/millennialmedia/google/gson/Gson;

    iget-object v3, v3, Lcom/millennialmedia/google/gson/Gson;->deserializationContext:Lcom/millennialmedia/google/gson/JsonDeserializationContext;

    invoke-interface {v1, v0, v2, v3}, Lcom/millennialmedia/google/gson/JsonDeserializer;->deserialize(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4
    .param p1, "out"    # Lcom/millennialmedia/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/millennialmedia/google/gson/TreeTypeAdapter;, "Lcom/millennialmedia/google/gson/TreeTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->serializer:Lcom/millennialmedia/google/gson/JsonSerializer;

    if-nez v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->delegate()Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/millennialmedia/google/gson/TypeAdapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    if-nez p2, :cond_1

    .line 68
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->nullValue()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->serializer:Lcom/millennialmedia/google/gson/JsonSerializer;

    iget-object v2, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->typeToken:Lcom/millennialmedia/google/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->gson:Lcom/millennialmedia/google/gson/Gson;

    iget-object v3, v3, Lcom/millennialmedia/google/gson/Gson;->serializationContext:Lcom/millennialmedia/google/gson/JsonSerializationContext;

    invoke-interface {v1, p2, v2, v3}, Lcom/millennialmedia/google/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/JsonSerializationContext;)Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v0

    .line 72
    .local v0, "tree":Lcom/millennialmedia/google/gson/JsonElement;
    invoke-static {v0, p1}, Lcom/millennialmedia/google/gson/internal/Streams;->write(Lcom/millennialmedia/google/gson/JsonElement;Lcom/millennialmedia/google/gson/stream/JsonWriter;)V

    goto :goto_0
.end method
