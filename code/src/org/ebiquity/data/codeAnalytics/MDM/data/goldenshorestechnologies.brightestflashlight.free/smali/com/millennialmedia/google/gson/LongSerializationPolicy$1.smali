.class final enum Lcom/millennialmedia/google/gson/LongSerializationPolicy$1;
.super Lcom/millennialmedia/google/gson/LongSerializationPolicy;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/LongSerializationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/google/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILcom/millennialmedia/google/gson/LongSerializationPolicy$1;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lcom/millennialmedia/google/gson/JsonElement;
    .locals 1
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 36
    new-instance v0, Lcom/millennialmedia/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/millennialmedia/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
