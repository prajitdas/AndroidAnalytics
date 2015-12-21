.class public interface abstract Lcom/millennialmedia/google/gson/JsonDeserializationContext;
.super Ljava/lang/Object;
.source "JsonDeserializationContext.java"


# virtual methods
.method public abstract deserialize(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
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
            Lcom/millennialmedia/google/gson/JsonParseException;
        }
    .end annotation
.end method
