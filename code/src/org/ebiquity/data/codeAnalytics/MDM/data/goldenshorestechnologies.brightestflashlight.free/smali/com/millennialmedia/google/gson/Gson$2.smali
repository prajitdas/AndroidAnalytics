.class Lcom/millennialmedia/google/gson/Gson$2;
.super Ljava/lang/Object;
.source "Gson.java"

# interfaces
.implements Lcom/millennialmedia/google/gson/JsonSerializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/millennialmedia/google/gson/Gson;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/millennialmedia/google/gson/Gson$2;->this$0:Lcom/millennialmedia/google/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/JsonElement;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/millennialmedia/google/gson/Gson$2;->this$0:Lcom/millennialmedia/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/JsonElement;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/millennialmedia/google/gson/Gson$2;->this$0:Lcom/millennialmedia/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
