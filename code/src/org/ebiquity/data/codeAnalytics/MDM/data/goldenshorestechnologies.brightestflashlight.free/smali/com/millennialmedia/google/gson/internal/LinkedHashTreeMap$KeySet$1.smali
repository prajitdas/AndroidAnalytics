.class Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet$1;
.super Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap",
        "<TK;TV;>.",
        "LinkedTreeMapIterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet;


# direct methods
.method constructor <init>(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet;)V
    .locals 2

    .prologue
    .line 842
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet$1;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet.1;"
    iput-object p1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet$1;->this$1:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet;

    iget-object v0, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet;->this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$1;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 844
    .local p0, "this":Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet$1;, "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet.1;"
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet$1;->nextNode()Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method
