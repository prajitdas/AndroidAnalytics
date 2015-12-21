.class final Lcom/millennialmedia/google/gson/internal/bind/DateTypeAdapter$1;
.super Ljava/lang/Object;
.source "DateTypeAdapter.java"

# interfaces
.implements Lcom/millennialmedia/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/internal/bind/DateTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 2
    .param p1, "gson"    # Lcom/millennialmedia/google/gson/Gson;
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
    .line 46
    .local p2, "typeToken":Lcom/millennialmedia/google/gson/reflect/TypeToken;, "Lcom/millennialmedia/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/DateTypeAdapter;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/internal/bind/DateTypeAdapter;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
