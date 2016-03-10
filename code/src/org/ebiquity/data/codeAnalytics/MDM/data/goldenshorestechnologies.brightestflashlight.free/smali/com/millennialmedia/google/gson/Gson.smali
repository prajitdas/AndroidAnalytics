.class public final Lcom/millennialmedia/google/gson/Gson;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;
    }
.end annotation


# static fields
.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"


# instance fields
.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

.field final deserializationContext:Lcom/millennialmedia/google/gson/JsonDeserializationContext;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final generateNonExecutableJson:Z

.field private final htmlSafe:Z

.field private final prettyPrinting:Z

.field final serializationContext:Lcom/millennialmedia/google/gson/JsonSerializationContext;

.field private final serializeNulls:Z

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 175
    sget-object v1, Lcom/millennialmedia/google/gson/internal/Excluder;->DEFAULT:Lcom/millennialmedia/google/gson/internal/Excluder;

    sget-object v2, Lcom/millennialmedia/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/millennialmedia/google/gson/FieldNamingPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/millennialmedia/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/millennialmedia/google/gson/LongSerializationPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/millennialmedia/google/gson/Gson;-><init>(Lcom/millennialmedia/google/gson/internal/Excluder;Lcom/millennialmedia/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/millennialmedia/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    .line 179
    return-void
.end method

.method constructor <init>(Lcom/millennialmedia/google/gson/internal/Excluder;Lcom/millennialmedia/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/millennialmedia/google/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 4
    .param p1, "excluder"    # Lcom/millennialmedia/google/gson/internal/Excluder;
    .param p2, "fieldNamingPolicy"    # Lcom/millennialmedia/google/gson/FieldNamingStrategy;
    .param p4, "serializeNulls"    # Z
    .param p5, "complexMapKeySerialization"    # Z
    .param p6, "generateNonExecutableGson"    # Z
    .param p7, "htmlSafe"    # Z
    .param p8, "prettyPrinting"    # Z
    .param p9, "serializeSpecialFloatingPointValues"    # Z
    .param p10, "longSerializationPolicy"    # Lcom/millennialmedia/google/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/internal/Excluder;",
            "Lcom/millennialmedia/google/gson/FieldNamingStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/millennialmedia/google/gson/InstanceCreator",
            "<*>;>;ZZZZZZ",
            "Lcom/millennialmedia/google/gson/LongSerializationPolicy;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p3, "instanceCreators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/InstanceCreator<*>;>;"
    .local p11, "typeAdapterFactories":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/google/gson/TypeAdapterFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/millennialmedia/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    .line 124
    new-instance v1, Lcom/millennialmedia/google/gson/Gson$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/google/gson/Gson$1;-><init>(Lcom/millennialmedia/google/gson/Gson;)V

    iput-object v1, p0, Lcom/millennialmedia/google/gson/Gson;->deserializationContext:Lcom/millennialmedia/google/gson/JsonDeserializationContext;

    .line 131
    new-instance v1, Lcom/millennialmedia/google/gson/Gson$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/google/gson/Gson$2;-><init>(Lcom/millennialmedia/google/gson/Gson;)V

    iput-object v1, p0, Lcom/millennialmedia/google/gson/Gson;->serializationContext:Lcom/millennialmedia/google/gson/JsonSerializationContext;

    .line 187
    new-instance v1, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, p3}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/millennialmedia/google/gson/Gson;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    .line 188
    iput-boolean p4, p0, Lcom/millennialmedia/google/gson/Gson;->serializeNulls:Z

    .line 189
    iput-boolean p6, p0, Lcom/millennialmedia/google/gson/Gson;->generateNonExecutableJson:Z

    .line 190
    iput-boolean p7, p0, Lcom/millennialmedia/google/gson/Gson;->htmlSafe:Z

    .line 191
    iput-boolean p8, p0, Lcom/millennialmedia/google/gson/Gson;->prettyPrinting:Z

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/google/gson/TypeAdapterFactory;>;"
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/millennialmedia/google/gson/Gson;->longAdapter(Lcom/millennialmedia/google/gson/LongSerializationPolicy;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/millennialmedia/google/gson/TypeAdapter;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/millennialmedia/google/gson/Gson;->doubleAdapter(Z)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/millennialmedia/google/gson/TypeAdapter;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/millennialmedia/google/gson/Gson;->floatAdapter(Z)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/millennialmedia/google/gson/TypeAdapter;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-static {v1, v2}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/millennialmedia/google/gson/TypeAdapter;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-static {v1, v2}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/millennialmedia/google/gson/TypeAdapter;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object v2, p0, Lcom/millennialmedia/google/gson/Gson;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2}, Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v1, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;

    iget-object v2, p0, Lcom/millennialmedia/google/gson/Gson;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2, p5}, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v1, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v2, p0, Lcom/millennialmedia/google/gson/Gson;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2, p2, p1}, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;Lcom/millennialmedia/google/gson/FieldNamingStrategy;Lcom/millennialmedia/google/gson/internal/Excluder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/google/gson/Gson;->factories:Ljava/util/List;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/google/gson/Gson;D)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/google/gson/Gson;
    .param p1, "x1"    # D

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/google/gson/Gson;->checkValidFloatingPoint(D)V

    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/millennialmedia/google/gson/stream/JsonReader;)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "reader"    # Lcom/millennialmedia/google/gson/stream/JsonReader;

    .prologue
    .line 776
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    .line 777
    new-instance v1, Lcom/millennialmedia/google/gson/JsonIOException;

    const-string v2, "JSON document was not fully consumed."

    invoke-direct {v1, v2}, Lcom/millennialmedia/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/millennialmedia/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Lcom/millennialmedia/google/gson/stream/MalformedJsonException;
    new-instance v1, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 781
    .end local v0    # "e":Lcom/millennialmedia/google/gson/stream/MalformedJsonException;
    :catch_1
    move-exception v0

    .line 782
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/millennialmedia/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/millennialmedia/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 784
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method private checkValidFloatingPoint(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 296
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_1
    return-void
.end method

.method private doubleAdapter(Z)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 1
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    if-eqz p1, :cond_0

    .line 249
    sget-object v0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/millennialmedia/google/gson/TypeAdapter;

    .line 251
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/millennialmedia/google/gson/Gson$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/Gson$3;-><init>(Lcom/millennialmedia/google/gson/Gson;)V

    goto :goto_0
.end method

.method private floatAdapter(Z)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 1
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    sget-object v0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/millennialmedia/google/gson/TypeAdapter;

    .line 275
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/millennialmedia/google/gson/Gson$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/Gson$4;-><init>(Lcom/millennialmedia/google/gson/Gson;)V

    goto :goto_0
.end method

.method private longAdapter(Lcom/millennialmedia/google/gson/LongSerializationPolicy;)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 1
    .param p1, "longSerializationPolicy"    # Lcom/millennialmedia/google/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/LongSerializationPolicy;",
            ")",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    sget-object v0, Lcom/millennialmedia/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/millennialmedia/google/gson/LongSerializationPolicy;

    if-ne p1, v0, :cond_0

    .line 305
    sget-object v0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->LONG:Lcom/millennialmedia/google/gson/TypeAdapter;

    .line 307
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/millennialmedia/google/gson/Gson$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/Gson$5;-><init>(Lcom/millennialmedia/google/gson/Gson;)V

    goto :goto_0
.end method

.method private newJsonWriter(Ljava/io/Writer;)Lcom/millennialmedia/google/gson/stream/JsonWriter;
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    iget-boolean v1, p0, Lcom/millennialmedia/google/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v1, :cond_0

    .line 640
    const-string v1, ")]}\'\n"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 642
    :cond_0
    new-instance v0, Lcom/millennialmedia/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 643
    .local v0, "jsonWriter":Lcom/millennialmedia/google/gson/stream/JsonWriter;
    iget-boolean v1, p0, Lcom/millennialmedia/google/gson/Gson;->prettyPrinting:Z

    if-eqz v1, :cond_1

    .line 644
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 646
    :cond_1
    iget-boolean v1, p0, Lcom/millennialmedia/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 647
    return-object v0
.end method


# virtual methods
.method public fromJson(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Lcom/millennialmedia/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/google/gson/JsonElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 842
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 843
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p2}, Lcom/millennialmedia/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "json"    # Lcom/millennialmedia/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 866
    if-nez p1, :cond_0

    .line 867
    const/4 v0, 0x0

    .line 869
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;-><init>(Lcom/millennialmedia/google/gson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Lcom/millennialmedia/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public fromJson(Lcom/millennialmedia/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 7
    .param p1, "reader"    # Lcom/millennialmedia/google/gson/stream/JsonReader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/google/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonIOException;,
            Lcom/millennialmedia/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 796
    const/4 v1, 0x1

    .line 797
    .local v1, "isEmpty":Z
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->isLenient()Z

    move-result v3

    .line 798
    .local v3, "oldLenient":Z
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/millennialmedia/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 800
    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    .line 801
    const/4 v1, 0x0

    .line 802
    invoke-static {p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v5

    .line 803
    .local v5, "typeToken":Lcom/millennialmedia/google/gson/reflect/TypeToken;, "Lcom/millennialmedia/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p0, v5}, Lcom/millennialmedia/google/gson/Gson;->getAdapter(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v4

    .line 804
    .local v4, "typeAdapter":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
    invoke-virtual {v4, p1}, Lcom/millennialmedia/google/gson/TypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 821
    .local v2, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->setLenient(Z)V

    .end local v2    # "object":Ljava/lang/Object;, "TT;"
    .end local v4    # "typeAdapter":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
    .end local v5    # "typeToken":Lcom/millennialmedia/google/gson/reflect/TypeToken;, "Lcom/millennialmedia/google/gson/reflect/TypeToken<TT;>;"
    :goto_0
    return-object v2

    .line 806
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/io/EOFException;
    if-eqz v1, :cond_0

    .line 812
    const/4 v2, 0x0

    .line 821
    invoke-virtual {p1, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->setLenient(Z)V

    goto :goto_0

    .line 814
    :cond_0
    :try_start_1
    new-instance v6, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    invoke-direct {v6, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    .end local v0    # "e":Ljava/io/EOFException;
    :catchall_0
    move-exception v6

    invoke-virtual {p1, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->setLenient(Z)V

    throw v6

    .line 815
    :catch_1
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    new-instance v6, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    invoke-direct {v6, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 817
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 819
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    invoke-direct {v6, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "json"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonSyntaxException;,
            Lcom/millennialmedia/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 741
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/millennialmedia/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 742
    .local v0, "jsonReader":Lcom/millennialmedia/google/gson/stream/JsonReader;
    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Lcom/millennialmedia/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 743
    .local v1, "object":Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/millennialmedia/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/millennialmedia/google/gson/stream/JsonReader;)V

    .line 744
    invoke-static {p2}, Lcom/millennialmedia/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/io/Reader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonIOException;,
            Lcom/millennialmedia/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 768
    new-instance v0, Lcom/millennialmedia/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 769
    .local v0, "jsonReader":Lcom/millennialmedia/google/gson/stream/JsonReader;
    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Lcom/millennialmedia/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 770
    .local v1, "object":Ljava/lang/Object;, "TT;"
    invoke-static {v1, v0}, Lcom/millennialmedia/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/millennialmedia/google/gson/stream/JsonReader;)V

    .line 771
    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 690
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 691
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p2}, Lcom/millennialmedia/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 714
    if-nez p1, :cond_0

    .line 715
    const/4 v1, 0x0

    .line 719
    :goto_0
    return-object v1

    .line 717
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 718
    .local v0, "reader":Ljava/io/StringReader;
    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 719
    .local v1, "target":Ljava/lang/Object;, "TT;"
    goto :goto_0
.end method

.method public getAdapter(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "type":Lcom/millennialmedia/google/gson/reflect/TypeToken;, "Lcom/millennialmedia/google/gson/reflect/TypeToken<TT;>;"
    iget-object v8, p0, Lcom/millennialmedia/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/TypeAdapter;

    .line 334
    .local v0, "cached":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<*>;"
    if-eqz v0, :cond_0

    .line 369
    .end local v0    # "cached":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<*>;"
    :goto_0
    return-object v0

    .line 338
    .restart local v0    # "cached":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<*>;"
    :cond_0
    iget-object v8, p0, Lcom/millennialmedia/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 339
    .local v7, "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/millennialmedia/google/gson/reflect/TypeToken<*>;Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter<*>;>;"
    const/4 v6, 0x0

    .line 340
    .local v6, "requiresThreadLocalCleanup":Z
    if-nez v7, :cond_1

    .line 341
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/millennialmedia/google/gson/reflect/TypeToken<*>;Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter<*>;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 342
    .restart local v7    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/millennialmedia/google/gson/reflect/TypeToken<*>;Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter<*>;>;"
    iget-object v8, p0, Lcom/millennialmedia/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 343
    const/4 v6, 0x1

    .line 347
    :cond_1
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;

    .line 348
    .local v5, "ongoingCall":Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;, "Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter<TT;>;"
    if-eqz v5, :cond_2

    move-object v0, v5

    .line 349
    goto :goto_0

    .line 353
    :cond_2
    :try_start_0
    new-instance v1, Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;

    invoke-direct {v1}, Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;-><init>()V

    .line 354
    .local v1, "call":Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;, "Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-interface {v7, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v8, p0, Lcom/millennialmedia/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    .line 357
    .local v3, "factory":Lcom/millennialmedia/google/gson/TypeAdapterFactory;
    invoke-interface {v3, p0, p1}, Lcom/millennialmedia/google/gson/TypeAdapterFactory;->create(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v2

    .line 358
    .local v2, "candidate":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
    if-eqz v2, :cond_3

    .line 359
    invoke-virtual {v1, v2}, Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;->setDelegate(Lcom/millennialmedia/google/gson/TypeAdapter;)V

    .line 360
    iget-object v8, p0, Lcom/millennialmedia/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v8, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    if-eqz v6, :cond_4

    .line 369
    iget-object v8, p0, Lcom/millennialmedia/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    move-object v0, v2

    goto :goto_0

    .line 364
    .end local v2    # "candidate":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
    .end local v3    # "factory":Lcom/millennialmedia/google/gson/TypeAdapterFactory;
    :cond_5
    :try_start_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GSON cannot handle "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    .end local v1    # "call":Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;, "Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    if-eqz v6, :cond_6

    .line 369
    iget-object v9, p0, Lcom/millennialmedia/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->remove()V

    :cond_6
    throw v8
.end method

.method public getAdapter(Ljava/lang/Class;)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/google/gson/Gson;->getAdapter(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateAdapter(Lcom/millennialmedia/google/gson/TypeAdapterFactory;Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 7
    .param p1, "skipPast"    # Lcom/millennialmedia/google/gson/TypeAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/google/gson/TypeAdapterFactory;",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 421
    .local p2, "type":Lcom/millennialmedia/google/gson/reflect/TypeToken;, "Lcom/millennialmedia/google/gson/reflect/TypeToken<TT;>;"
    const/4 v3, 0x0

    .line 423
    .local v3, "skipPastFound":Z
    iget-object v4, p0, Lcom/millennialmedia/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    .line 424
    .local v1, "factory":Lcom/millennialmedia/google/gson/TypeAdapterFactory;
    if-nez v3, :cond_1

    .line 425
    if-ne v1, p1, :cond_0

    .line 426
    const/4 v3, 0x1

    goto :goto_0

    .line 431
    :cond_1
    invoke-interface {v1, p0, p2}, Lcom/millennialmedia/google/gson/TypeAdapterFactory;->create(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v0

    .line 432
    .local v0, "candidate":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .line 433
    return-object v0

    .line 436
    .end local v0    # "candidate":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
    .end local v1    # "factory":Lcom/millennialmedia/google/gson/TypeAdapterFactory;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GSON cannot serialize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public toJson(Lcom/millennialmedia/google/gson/JsonElement;)Ljava/lang/String;
    .locals 2
    .param p1, "jsonElement"    # Lcom/millennialmedia/google/gson/JsonElement;

    .prologue
    .line 612
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 613
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/google/gson/Gson;->toJson(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 614
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 505
    if-nez p1, :cond_0

    .line 506
    sget-object v0, Lcom/millennialmedia/google/gson/JsonNull;->INSTANCE:Lcom/millennialmedia/google/gson/JsonNull;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/google/gson/Gson;->toJson(Lcom/millennialmedia/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    .line 508
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 527
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 528
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 529
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Lcom/millennialmedia/google/gson/JsonElement;Lcom/millennialmedia/google/gson/stream/JsonWriter;)V
    .locals 5
    .param p1, "jsonElement"    # Lcom/millennialmedia/google/gson/JsonElement;
    .param p2, "writer"    # Lcom/millennialmedia/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 655
    invoke-virtual {p2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v2

    .line 656
    .local v2, "oldLenient":Z
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 657
    invoke-virtual {p2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v1

    .line 658
    .local v1, "oldHtmlSafe":Z
    iget-boolean v4, p0, Lcom/millennialmedia/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v4}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 659
    invoke-virtual {p2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    .line 660
    .local v3, "oldSerializeNulls":Z
    iget-boolean v4, p0, Lcom/millennialmedia/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, v4}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 662
    :try_start_0
    invoke-static {p1, p2}, Lcom/millennialmedia/google/gson/internal/Streams;->write(Lcom/millennialmedia/google/gson/JsonElement;Lcom/millennialmedia/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    invoke-virtual {p2, v2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 667
    invoke-virtual {p2, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 668
    invoke-virtual {p2, v3}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 670
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lcom/millennialmedia/google/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/millennialmedia/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {p2, v2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 667
    invoke-virtual {p2, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 668
    invoke-virtual {p2, v3}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v4
.end method

.method public toJson(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 3
    .param p1, "jsonElement"    # Lcom/millennialmedia/google/gson/JsonElement;
    .param p2, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 627
    :try_start_0
    invoke-static {p2}, Lcom/millennialmedia/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    move-result-object v1

    .line 628
    .local v1, "jsonWriter":Lcom/millennialmedia/google/gson/stream/JsonWriter;
    invoke-virtual {p0, p1, v1}, Lcom/millennialmedia/google/gson/Gson;->toJson(Lcom/millennialmedia/google/gson/JsonElement;Lcom/millennialmedia/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    return-void

    .line 629
    .end local v1    # "jsonWriter":Lcom/millennialmedia/google/gson/stream/JsonWriter;
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 547
    if-eqz p1, :cond_0

    .line 548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    sget-object v0, Lcom/millennialmedia/google/gson/JsonNull;->INSTANCE:Lcom/millennialmedia/google/gson/JsonNull;

    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/google/gson/Gson;->toJson(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/Appendable;)V

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/stream/JsonWriter;)V
    .locals 6
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Lcom/millennialmedia/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-static {p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/millennialmedia/google/gson/Gson;->getAdapter(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v0

    .line 587
    .local v0, "adapter":Lcom/millennialmedia/google/gson/TypeAdapter;, "Lcom/millennialmedia/google/gson/TypeAdapter<*>;"
    invoke-virtual {p3}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v3

    .line 588
    .local v3, "oldLenient":Z
    const/4 v5, 0x1

    invoke-virtual {p3, v5}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 589
    invoke-virtual {p3}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    .line 590
    .local v2, "oldHtmlSafe":Z
    iget-boolean v5, p0, Lcom/millennialmedia/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v5}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 591
    invoke-virtual {p3}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v4

    .line 592
    .local v4, "oldSerializeNulls":Z
    iget-boolean v5, p0, Lcom/millennialmedia/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p3, v5}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 594
    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/millennialmedia/google/gson/TypeAdapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-virtual {p3, v3}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 599
    invoke-virtual {p3, v2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 600
    invoke-virtual {p3, v4}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 602
    return-void

    .line 595
    :catch_0
    move-exception v1

    .line 596
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Lcom/millennialmedia/google/gson/JsonIOException;

    invoke-direct {v5, v1}, Lcom/millennialmedia/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {p3, v3}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 599
    invoke-virtual {p3, v2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 600
    invoke-virtual {p3, v4}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v5
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 3
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 572
    :try_start_0
    invoke-static {p3}, Lcom/millennialmedia/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    move-result-object v1

    .line 573
    .local v1, "jsonWriter":Lcom/millennialmedia/google/gson/stream/JsonWriter;
    invoke-virtual {p0, p1, p2, v1}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    return-void

    .line 574
    .end local v1    # "jsonWriter":Lcom/millennialmedia/google/gson/stream/JsonWriter;
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/millennialmedia/google/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/millennialmedia/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toJsonTree(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/JsonElement;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 463
    if-nez p1, :cond_0

    .line 464
    sget-object v0, Lcom/millennialmedia/google/gson/JsonNull;->INSTANCE:Lcom/millennialmedia/google/gson/JsonNull;

    .line 466
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/JsonElement;
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 486
    new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 487
    .local v0, "writer":Lcom/millennialmedia/google/gson/internal/bind/JsonTreeWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/stream/JsonWriter;)V

    .line 488
    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeWriter;->get()Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/millennialmedia/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/google/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/google/gson/Gson;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
