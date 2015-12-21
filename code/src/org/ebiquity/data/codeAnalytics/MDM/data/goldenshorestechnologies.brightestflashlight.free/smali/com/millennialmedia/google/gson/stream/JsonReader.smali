.class public Lcom/millennialmedia/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NON_EXECUTE_PREFIX:[C

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    .line 1533
    new-instance v0, Lcom/millennialmedia/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/millennialmedia/google/gson/internal/JsonReaderInternalAccess;

    .line 1555
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-boolean v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lenient:Z

    .line 239
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    .line 240
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 241
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 243
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    .line 244
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    .line 246
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 270
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    .line 271
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    .line 273
    iget-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 280
    if-nez p1, :cond_0

    .line 281
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 284
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/google/gson/stream/JsonReader;

    .prologue
    .line 191
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    return v0
.end method

.method static synthetic access$002(Lcom/millennialmedia/google/gson/stream/JsonReader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/google/gson/stream/JsonReader;
    .param p1, "x1"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    return p1
.end method

.method static synthetic access$100(Lcom/millennialmedia/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/millennialmedia/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/google/gson/stream/JsonReader;

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/millennialmedia/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/google/gson/stream/JsonReader;

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1386
    iget-boolean v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lenient:Z

    if-nez v0, :cond_0

    .line 1387
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1389
    :cond_0
    return-void
.end method

.method private consumeNonExecutePrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1515
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1516
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1518
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/millennialmedia/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_1

    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1523
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/millennialmedia/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 1522
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1529
    :cond_2
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/millennialmedia/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method private doPeek()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v8, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 452
    iget-object v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v1, v6, v7

    .line 453
    .local v1, "peekStack":I
    if-ne v1, v4, :cond_3

    .line 454
    iget-object v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v3, v6, v7

    .line 539
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 540
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 569
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 572
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    if-ne v3, v4, :cond_1

    .line 573
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 576
    :cond_1
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v2

    .line 577
    .local v2, "result":I
    if-eqz v2, :cond_14

    .line 591
    .end local v2    # "result":I
    :cond_2
    :goto_1
    return v2

    .line 455
    .end local v0    # "c":I
    :cond_3
    if-ne v1, v3, :cond_4

    .line 457
    invoke-direct {p0, v4}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 458
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_1

    .line 466
    const-string v3, "Unterminated array"

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 460
    :sswitch_1
    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 462
    :sswitch_2
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_0

    .line 468
    .end local v0    # "c":I
    :cond_4
    const/4 v6, 0x3

    if-eq v1, v6, :cond_5

    if-ne v1, v8, :cond_9

    .line 469
    :cond_5
    iget-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v2, v5, v6

    .line 471
    if-ne v1, v8, :cond_6

    .line 472
    invoke-direct {p0, v4}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 473
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_2

    .line 481
    const-string v3, "Unterminated object"

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 475
    :sswitch_3
    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    move v2, v3

    goto :goto_1

    .line 477
    :sswitch_4
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 484
    .end local v0    # "c":I
    :cond_6
    :sswitch_5
    invoke-direct {p0, v4}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 485
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_3

    .line 498
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 499
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 500
    int-to-char v3, v0

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 501
    const/16 v2, 0xe

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 487
    :sswitch_6
    const/16 v2, 0xd

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 489
    :sswitch_7
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 490
    const/16 v2, 0xc

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 492
    :sswitch_8
    if-eq v1, v8, :cond_7

    .line 493
    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    move v2, v3

    goto :goto_1

    .line 495
    :cond_7
    const-string v3, "Expected name"

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 503
    :cond_8
    const-string v3, "Expected name"

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 506
    .end local v0    # "c":I
    :cond_9
    if-ne v1, v2, :cond_b

    .line 507
    iget-object v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v8, v6, v7

    .line 509
    invoke-direct {p0, v4}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 510
    .restart local v0    # "c":I
    packed-switch v0, :pswitch_data_0

    .line 520
    :pswitch_1
    const-string v3, "Expected \':\'"

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 514
    :pswitch_2
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 515
    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_a

    invoke-direct {p0, v4}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_a
    iget-object v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v6, v7

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_0

    .line 516
    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_0

    .line 522
    .end local v0    # "c":I
    :cond_b
    const/4 v6, 0x6

    if-ne v1, v6, :cond_d

    .line 523
    iget-boolean v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v6, :cond_c

    .line 524
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 526
    :cond_c
    iget-object v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v5, v6, v7

    goto/16 :goto_0

    .line 527
    :cond_d
    if-ne v1, v5, :cond_f

    .line 528
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 529
    .restart local v0    # "c":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_e

    .line 530
    const/16 v2, 0x11

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 532
    :cond_e
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 533
    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_0

    .line 535
    .end local v0    # "c":I
    :cond_f
    const/16 v6, 0x8

    if-ne v1, v6, :cond_0

    .line 536
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 542
    .restart local v0    # "c":I
    :sswitch_9
    if-ne v1, v4, :cond_10

    .line 543
    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 549
    :cond_10
    :sswitch_a
    if-eq v1, v4, :cond_11

    if-ne v1, v3, :cond_12

    .line 550
    :cond_11
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 551
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 552
    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    move v2, v5

    goto/16 :goto_1

    .line 554
    :cond_12
    const-string v3, "Unexpected value"

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 557
    :sswitch_b
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 558
    const/16 v2, 0x8

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 560
    :sswitch_c
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    if-ne v3, v4, :cond_13

    .line 561
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 563
    :cond_13
    const/16 v2, 0x9

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 565
    :sswitch_d
    const/4 v2, 0x3

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 567
    :sswitch_e
    iput v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    move v2, v4

    goto/16 :goto_1

    .line 581
    .restart local v2    # "result":I
    :cond_14
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekNumber()I

    move-result v2

    .line 582
    if-nez v2, :cond_2

    .line 586
    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-nez v3, :cond_15

    .line 587
    const-string v3, "Expected value"

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 590
    :cond_15
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 591
    const/16 v2, 0xa

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 540
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    .line 458
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    .line 473
    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    .line 485
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    .line 510
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private fillBuffer(I)Z
    .locals 7
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1253
    iget-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    .line 1254
    .local v0, "buffer":[C
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    .line 1255
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    if-eq v3, v4, :cond_3

    .line 1256
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 1257
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    invoke-static {v0, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1262
    :goto_0
    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1264
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    array-length v5, v0

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, "total":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 1265
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 1268
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-lez v3, :cond_1

    aget-char v3, v0, v2

    const v4, 0xfeff

    if-ne v3, v4, :cond_1

    .line 1269
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1270
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    .line 1271
    add-int/lit8 p1, p1, 0x1

    .line 1274
    :cond_1
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-lt v3, p1, :cond_0

    .line 1275
    const/4 v2, 0x1

    .line 1278
    :cond_2
    return v2

    .line 1259
    .end local v1    # "total":I
    :cond_3
    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    goto :goto_0
.end method

.method private getColumnNumber()I
    .locals 2

    .prologue
    .line 1286
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getLineNumber()I
    .locals 1

    .prologue
    .line 1282
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isLiteral(C)Z
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    sparse-switch p1, :sswitch_data_0

    .line 762
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 748
    :sswitch_0
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 760
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 742
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 10
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    .line 1305
    .local v0, "buffer":[C
    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1306
    .local v4, "p":I
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 1308
    .local v3, "l":I
    :goto_0
    if-ne v4, v3, :cond_1

    .line 1309
    iput v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1310
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1377
    if-eqz p1, :cond_8

    .line 1378
    new-instance v7, Ljava/io/EOFException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "End of input at line "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " column "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1313
    :cond_0
    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1314
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 1317
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "p":I
    .local v5, "p":I
    aget-char v1, v0, v4

    .line 1318
    .local v1, "c":I
    const/16 v7, 0xa

    if-ne v1, v7, :cond_2

    .line 1319
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    .line 1320
    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    move v4, v5

    .line 1321
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1322
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_2
    const/16 v7, 0x20

    if-eq v1, v7, :cond_9

    const/16 v7, 0xd

    if-eq v1, v7, :cond_9

    const/16 v7, 0x9

    if-ne v1, v7, :cond_3

    move v4, v5

    .line 1323
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1326
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_3
    const/16 v7, 0x2f

    if-ne v1, v7, :cond_6

    .line 1327
    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1328
    if-ne v5, v3, :cond_4

    .line 1329
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1330
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    .line 1331
    .local v2, "charsLoaded":Z
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1332
    if-nez v2, :cond_4

    move v4, v5

    .line 1381
    .end local v1    # "c":I
    .end local v2    # "charsLoaded":Z
    .end local v5    # "p":I
    .restart local v4    # "p":I
    :goto_1
    return v1

    .line 1337
    .end local v4    # "p":I
    .restart local v1    # "c":I
    .restart local v5    # "p":I
    :cond_4
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 1338
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v0, v7

    .line 1339
    .local v6, "peek":C
    sparse-switch v6, :sswitch_data_0

    move v4, v5

    .line 1359
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_1

    .line 1342
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :sswitch_0
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1343
    const-string v7, "*/"

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1344
    const-string v7, "Unterminated comment"

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 1346
    :cond_5
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v7, 0x2

    .line 1347
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 1348
    goto/16 :goto_0

    .line 1352
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :sswitch_1
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1353
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1354
    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1355
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 1356
    goto/16 :goto_0

    .line 1361
    .end local v4    # "p":I
    .end local v6    # "peek":C
    .restart local v5    # "p":I
    :cond_6
    const/16 v7, 0x23

    if-ne v1, v7, :cond_7

    .line 1362
    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1368
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 1369
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1370
    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1371
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_0

    .line 1373
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_7
    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    move v4, v5

    .line 1374
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_1

    .line 1381
    .end local v1    # "c":I
    :cond_8
    const/4 v1, -0x1

    goto :goto_1

    .end local v4    # "p":I
    .restart local v1    # "c":I
    .restart local v5    # "p":I
    :cond_9
    move v4, v5

    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto/16 :goto_0

    .line 1339
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .locals 8
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 977
    iget-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    .line 978
    .local v0, "buffer":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 980
    .local v1, "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 981
    .local v4, "p":I
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 983
    .local v3, "l":I
    move v6, v4

    .local v6, "start":I
    move v5, v4

    .line 984
    .end local v4    # "p":I
    .local v5, "p":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 985
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "p":I
    .restart local v4    # "p":I
    aget-char v2, v0, v5

    .line 987
    .local v2, "c":I
    if-ne v2, p1, :cond_1

    .line 988
    iput v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 989
    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 991
    :cond_1
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_3

    .line 992
    iput v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 993
    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 994
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 995
    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 996
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 997
    move v6, v4

    :cond_2
    :goto_1
    move v5, v4

    .line 1002
    .end local v4    # "p":I
    .restart local v5    # "p":I
    goto :goto_0

    .line 998
    .end local v5    # "p":I
    .restart local v4    # "p":I
    :cond_3
    const/16 v7, 0xa

    if-ne v2, v7, :cond_2

    .line 999
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    .line 1000
    iput v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1

    .line 1004
    .end local v2    # "c":I
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_4
    sub-int v7, v5, v6

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1005
    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1006
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1007
    const-string v7, "Unterminated string"

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1017
    const/4 v0, 0x0

    .line 1018
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1022
    .local v1, "i":I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_2

    .line 1023
    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1022
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1029
    :sswitch_0
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 1067
    :cond_1
    :goto_1
    :sswitch_1
    if-nez v0, :cond_5

    .line 1068
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1073
    .local v2, "result":Ljava/lang/String;
    :goto_2
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1074
    return-object v2

    .line 1046
    .end local v2    # "result":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1047
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1055
    :cond_3
    if-nez v0, :cond_4

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1058
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1059
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1060
    const/4 v1, 0x0

    .line 1061
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1070
    :cond_5
    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1071
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_2

    .line 1023
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private peekKeyword()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 596
    iget-object v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v7, v8

    .line 600
    .local v0, "c":C
    const/16 v7, 0x74

    if-eq v0, v7, :cond_0

    const/16 v7, 0x54

    if-ne v0, v7, :cond_1

    .line 601
    :cond_0
    const-string v2, "true"

    .line 602
    .local v2, "keyword":Ljava/lang/String;
    const-string v3, "TRUE"

    .line 603
    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x5

    .line 617
    .local v5, "peeking":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 618
    .local v4, "length":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_8

    .line 619
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v1

    iget v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_6

    add-int/lit8 v7, v1, 0x1

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_6

    move v5, v6

    .line 635
    .end local v1    # "i":I
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "peeking":I
    :goto_2
    return v5

    .line 604
    :cond_1
    const/16 v7, 0x66

    if-eq v0, v7, :cond_2

    const/16 v7, 0x46

    if-ne v0, v7, :cond_3

    .line 605
    :cond_2
    const-string v2, "false"

    .line 606
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "FALSE"

    .line 607
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x6

    .restart local v5    # "peeking":I
    goto :goto_0

    .line 608
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_3
    const/16 v7, 0x6e

    if-eq v0, v7, :cond_4

    const/16 v7, 0x4e

    if-ne v0, v7, :cond_5

    .line 609
    :cond_4
    const-string v2, "null"

    .line 610
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "NULL"

    .line 611
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x7

    .restart local v5    # "peeking":I
    goto :goto_0

    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_5
    move v5, v6

    .line 613
    goto :goto_2

    .line 622
    .restart local v1    # "i":I
    .restart local v2    # "keyword":Ljava/lang/String;
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    .restart local v4    # "length":I
    .restart local v5    # "peeking":I
    :cond_6
    iget-object v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v1

    aget-char v0, v7, v8

    .line 623
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    move v5, v6

    .line 624
    goto :goto_2

    .line 618
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 628
    :cond_8
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v4

    iget v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_9

    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    iget-object v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v4

    aget-char v7, v7, v8

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v7

    if-eqz v7, :cond_a

    move v5, v6

    .line 630
    goto :goto_2

    .line 634
    :cond_a
    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 635
    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2
.end method

.method private peekNumber()I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    .line 641
    .local v1, "buffer":[C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 642
    .local v10, "p":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 644
    .local v5, "l":I
    const-wide/16 v11, 0x0

    .line 645
    .local v11, "value":J
    const/4 v7, 0x0

    .line 646
    .local v7, "negative":Z
    const/4 v3, 0x1

    .line 647
    .local v3, "fitsInLong":Z
    const/4 v6, 0x0

    .line 649
    .local v6, "last":I
    const/4 v4, 0x0

    .line 653
    .local v4, "i":I
    :goto_0
    add-int v13, v10, v4

    if-ne v13, v5, :cond_4

    .line 654
    array-length v13, v1

    if-ne v4, v13, :cond_0

    .line 657
    const/4 v13, 0x0

    .line 737
    .end local v11    # "value":J
    :goto_1
    return v13

    .line 659
    .restart local v11    # "value":J
    :cond_0
    add-int/lit8 v13, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 728
    :cond_1
    const/4 v13, 0x2

    if-ne v6, v13, :cond_17

    if-eqz v3, :cond_17

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v13, v11, v13

    if-nez v13, :cond_2

    if-eqz v7, :cond_17

    .line 729
    :cond_2
    if-eqz v7, :cond_16

    .end local v11    # "value":J
    :goto_2
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedLong:J

    .line 730
    move-object/from16 v0, p0

    iget v13, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v13, v4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 731
    const/16 v13, 0xf

    move-object/from16 v0, p0

    iput v13, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 662
    .restart local v11    # "value":J
    :cond_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 663
    move-object/from16 v0, p0

    iget v5, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 666
    :cond_4
    add-int v13, v10, v4

    aget-char v2, v1, v13

    .line 667
    .local v2, "c":C
    sparse-switch v2, :sswitch_data_0

    .line 702
    const/16 v13, 0x30

    if-lt v2, v13, :cond_5

    const/16 v13, 0x39

    if-le v2, v13, :cond_d

    .line 703
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 706
    const/4 v13, 0x0

    goto :goto_1

    .line 669
    :sswitch_0
    if-nez v6, :cond_7

    .line 670
    const/4 v7, 0x1

    .line 671
    const/4 v6, 0x1

    .line 652
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 673
    :cond_7
    const/4 v13, 0x5

    if-ne v6, v13, :cond_8

    .line 674
    const/4 v6, 0x6

    .line 675
    goto :goto_3

    .line 677
    :cond_8
    const/4 v13, 0x0

    goto :goto_1

    .line 680
    :sswitch_1
    const/4 v13, 0x5

    if-ne v6, v13, :cond_9

    .line 681
    const/4 v6, 0x6

    .line 682
    goto :goto_3

    .line 684
    :cond_9
    const/4 v13, 0x0

    goto :goto_1

    .line 688
    :sswitch_2
    const/4 v13, 0x2

    if-eq v6, v13, :cond_a

    const/4 v13, 0x4

    if-ne v6, v13, :cond_b

    .line 689
    :cond_a
    const/4 v6, 0x5

    .line 690
    goto :goto_3

    .line 692
    :cond_b
    const/4 v13, 0x0

    goto :goto_1

    .line 695
    :sswitch_3
    const/4 v13, 0x2

    if-ne v6, v13, :cond_c

    .line 696
    const/4 v6, 0x3

    .line 697
    goto :goto_3

    .line 699
    :cond_c
    const/4 v13, 0x0

    goto :goto_1

    .line 708
    :cond_d
    const/4 v13, 0x1

    if-eq v6, v13, :cond_e

    if-nez v6, :cond_f

    .line 709
    :cond_e
    add-int/lit8 v13, v2, -0x30

    neg-int v13, v13

    int-to-long v11, v13

    .line 710
    const/4 v6, 0x2

    goto :goto_3

    .line 711
    :cond_f
    const/4 v13, 0x2

    if-ne v6, v13, :cond_13

    .line 712
    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-nez v13, :cond_10

    .line 713
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 715
    :cond_10
    const-wide/16 v13, 0xa

    mul-long/2addr v13, v11

    add-int/lit8 v15, v2, -0x30

    int-to-long v15, v15

    sub-long v8, v13, v15

    .line 716
    .local v8, "newValue":J
    const-wide v13, -0xcccccccccccccccL

    cmp-long v13, v11, v13

    if-gtz v13, :cond_11

    const-wide v13, -0xcccccccccccccccL

    cmp-long v13, v11, v13

    if-nez v13, :cond_12

    cmp-long v13, v8, v11

    if-gez v13, :cond_12

    :cond_11
    const/4 v13, 0x1

    :goto_4
    and-int/2addr v3, v13

    .line 718
    move-wide v11, v8

    .line 719
    goto :goto_3

    .line 716
    :cond_12
    const/4 v13, 0x0

    goto :goto_4

    .line 719
    .end local v8    # "newValue":J
    :cond_13
    const/4 v13, 0x3

    if-ne v6, v13, :cond_14

    .line 720
    const/4 v6, 0x4

    goto :goto_3

    .line 721
    :cond_14
    const/4 v13, 0x5

    if-eq v6, v13, :cond_15

    const/4 v13, 0x6

    if-ne v6, v13, :cond_6

    .line 722
    :cond_15
    const/4 v6, 0x7

    goto :goto_3

    .line 729
    .end local v2    # "c":C
    :cond_16
    neg-long v11, v11

    goto/16 :goto_2

    .line 732
    :cond_17
    const/4 v13, 0x2

    if-eq v6, v13, :cond_18

    const/4 v13, 0x4

    if-eq v6, v13, :cond_18

    const/4 v13, 0x7

    if-ne v6, v13, :cond_19

    .line 734
    :cond_18
    move-object/from16 v0, p0

    iput v4, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 735
    const/16 v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 737
    :cond_19
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 667
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private push(I)V
    .locals 4
    .param p1, "newTop"    # I

    .prologue
    const/4 v3, 0x0

    .line 1239
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    iget-object v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 1240
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 1241
    .local v0, "newStack":[I
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1242
    iput-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    .line 1244
    .end local v0    # "newStack":[I
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v1, v2

    .line 1245
    return-void
.end method

.method private readEscapeCharacter()C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 1445
    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1446
    const-string v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1449
    :cond_0
    iget-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v5, v6

    .line 1450
    .local v2, "escaped":C
    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v4, v2

    .line 1497
    :goto_1
    return v4

    .line 1452
    :sswitch_0
    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-le v5, v6, :cond_1

    invoke-direct {p0, v10}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1453
    const-string v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1456
    :cond_1
    const/4 v4, 0x0

    .line 1457
    .local v4, "result":C
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .local v3, "i":I
    add-int/lit8 v1, v3, 0x4

    .local v1, "end":I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 1458
    iget-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    aget-char v0, v5, v3

    .line 1459
    .local v0, "c":C
    shl-int/lit8 v5, v4, 0x4

    int-to-char v4, v5

    .line 1460
    const/16 v5, 0x30

    if-lt v0, v5, :cond_2

    const/16 v5, 0x39

    if-gt v0, v5, :cond_2

    .line 1461
    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v4

    int-to-char v4, v5

    .line 1457
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1462
    :cond_2
    const/16 v5, 0x61

    if-lt v0, v5, :cond_3

    const/16 v5, 0x66

    if-gt v0, v5, :cond_3

    .line 1463
    add-int/lit8 v5, v0, -0x61

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_3

    .line 1464
    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_4

    const/16 v5, 0x46

    if-gt v0, v5, :cond_4

    .line 1465
    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_3

    .line 1467
    :cond_4
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v9, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1470
    .end local v0    # "c":C
    :cond_5
    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    goto :goto_1

    .line 1474
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "result":C
    :sswitch_1
    const/16 v4, 0x9

    goto :goto_1

    .line 1477
    :sswitch_2
    const/16 v4, 0x8

    goto :goto_1

    .line 1480
    :sswitch_3
    const/16 v4, 0xa

    goto/16 :goto_1

    .line 1483
    :sswitch_4
    const/16 v4, 0xd

    goto/16 :goto_1

    .line 1486
    :sswitch_5
    const/16 v4, 0xc

    goto/16 :goto_1

    .line 1489
    :sswitch_6
    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    .line 1490
    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    goto/16 :goto_0

    .line 1450
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipQuotedValue(C)V
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    .line 1081
    .local v0, "buffer":[C
    :cond_0
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1082
    .local v3, "p":I
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .local v2, "l":I
    move v4, v3

    .line 1084
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 1085
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-char v1, v0, v4

    .line 1086
    .local v1, "c":I
    if-ne v1, p1, :cond_1

    .line 1087
    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1088
    return-void

    .line 1089
    :cond_1
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_3

    .line 1090
    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1091
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1092
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1093
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    :cond_2
    :goto_1
    move v4, v3

    .line 1098
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1094
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_3
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    .line 1095
    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    .line 1096
    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1

    .line 1099
    .end local v1    # "c":I
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_4
    iput v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1100
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1101
    const-string v5, "Unterminated string"

    invoke-direct {p0, v5}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1414
    :goto_0
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1415
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 1416
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    .line 1417
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    .line 1414
    :cond_1
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 1420
    :cond_2
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1421
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1420
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1425
    :cond_3
    const/4 v1, 0x1

    .line 1427
    .end local v0    # "c":I
    :goto_2
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1397
    :cond_0
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1398
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v1, v2

    .line 1399
    .local v0, "c":C
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1400
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    .line 1401
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    .line 1407
    .end local v0    # "c":C
    :cond_2
    :goto_0
    return-void

    .line 1403
    .restart local v0    # "c":C
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1106
    :cond_0
    const/4 v0, 0x0

    .line 1107
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-ge v1, v2, :cond_1

    .line 1108
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1114
    :sswitch_0
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 1126
    :sswitch_1
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1132
    :goto_1
    return-void

    .line 1130
    :cond_1
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1131
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1108
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1506
    new-instance v0, Lcom/millennialmedia/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 332
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 335
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 336
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->push(I)V

    .line 337
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 342
    return-void

    .line 339
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 368
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 371
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 372
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->push(I)V

    .line 373
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 378
    return-void

    .line 375
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1194
    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 1195
    iget-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    .line 1196
    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    .line 1197
    iget-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1198
    return-void
.end method

.method public endArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 350
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 353
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 354
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    .line 355
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 360
    return-void

    .line 357
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 386
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 389
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 390
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    .line 391
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 396
    return-void

    .line 393
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 403
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 406
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isLenient()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 837
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 838
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 839
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 841
    :cond_0
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 842
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 843
    const/4 v1, 0x1

    .line 846
    :goto_0
    return v1

    .line 844
    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 845
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto :goto_0

    .line 848
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xb

    const/16 v4, 0x8

    const/4 v7, 0x0

    .line 882
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 883
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 884
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 887
    :cond_0
    const/16 v3, 0xf

    if-ne v0, v3, :cond_1

    .line 888
    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 889
    iget-wide v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v1, v3

    .line 912
    :goto_0
    return-wide v1

    .line 892
    :cond_1
    const/16 v3, 0x10

    if-ne v0, v3, :cond_4

    .line 893
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 894
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 904
    :cond_2
    :goto_1
    iput v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 905
    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 906
    .local v1, "result":D
    iget-boolean v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lenient:Z

    if-nez v3, :cond_9

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 907
    :cond_3
    new-instance v3, Lcom/millennialmedia/google/gson/stream/MalformedJsonException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/millennialmedia/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 895
    .end local v1    # "result":D
    :cond_4
    if-eq v0, v4, :cond_5

    const/16 v3, 0x9

    if-ne v0, v3, :cond_7

    .line 896
    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v3, 0x27

    :goto_2
    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v3, 0x22

    goto :goto_2

    .line 897
    :cond_7
    const/16 v3, 0xa

    if-ne v0, v3, :cond_8

    .line 898
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 899
    :cond_8
    if-eq v0, v8, :cond_2

    .line 900
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a double but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 910
    .restart local v1    # "result":D
    :cond_9
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 911
    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_0
.end method

.method public nextInt()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x0

    .line 1145
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 1146
    .local v2, "p":I
    if-nez v2, :cond_0

    .line 1147
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    .line 1151
    :cond_0
    const/16 v5, 0xf

    if-ne v2, v5, :cond_2

    .line 1152
    iget-wide v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v3, v5

    .line 1153
    .local v3, "result":I
    iget-wide v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedLong:J

    int-to-long v7, v3

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 1154
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1157
    :cond_1
    iput v9, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    move v4, v3

    .line 1187
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_0
    return v4

    .line 1161
    .end local v4    # "result":I
    :cond_2
    const/16 v5, 0x10

    if-ne v2, v5, :cond_3

    .line 1162
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1163
    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1178
    :goto_1
    const/16 v5, 0xb

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 1179
    iget-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1180
    .local v0, "asDouble":D
    double-to-int v3, v0

    .line 1181
    .restart local v3    # "result":I
    int-to-double v5, v3

    cmpl-double v5, v5, v0

    if-eqz v5, :cond_7

    .line 1182
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1164
    .end local v0    # "asDouble":D
    .end local v3    # "result":I
    :cond_3
    if-eq v2, v6, :cond_4

    const/16 v5, 0x9

    if-ne v2, v5, :cond_6

    .line 1165
    :cond_4
    if-ne v2, v6, :cond_5

    const/16 v5, 0x27

    :goto_2
    invoke-direct {p0, v5}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1167
    :try_start_0
    iget-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1168
    .restart local v3    # "result":I
    const/4 v5, 0x0

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .line 1169
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0

    .line 1165
    .end local v4    # "result":I
    :cond_5
    const/16 v5, 0x22

    goto :goto_2

    .line 1174
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1185
    .restart local v0    # "asDouble":D
    .restart local v3    # "result":I
    :cond_7
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1186
    iput v9, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    move v4, v3

    .line 1187
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto/16 :goto_0

    .line 1170
    .end local v0    # "asDouble":D
    .end local v4    # "result":I
    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method

.method public nextLong()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x0

    .line 926
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 927
    .local v2, "p":I
    if-nez v2, :cond_0

    .line 928
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    .line 931
    :cond_0
    const/16 v5, 0xf

    if-ne v2, v5, :cond_1

    .line 932
    iput v9, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 933
    iget-wide v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedLong:J

    .line 962
    :goto_0
    return-wide v3

    .line 936
    :cond_1
    const/16 v5, 0x10

    if-ne v2, v5, :cond_2

    .line 937
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 938
    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 953
    :goto_1
    const/16 v5, 0xb

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 954
    iget-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 955
    .local v0, "asDouble":D
    double-to-long v3, v0

    .line 956
    .local v3, "result":J
    long-to-double v5, v3

    cmpl-double v5, v5, v0

    if-eqz v5, :cond_6

    .line 957
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 939
    .end local v0    # "asDouble":D
    .end local v3    # "result":J
    :cond_2
    if-eq v2, v6, :cond_3

    const/16 v5, 0x9

    if-ne v2, v5, :cond_5

    .line 940
    :cond_3
    if-ne v2, v6, :cond_4

    const/16 v5, 0x27

    :goto_2
    invoke-direct {p0, v5}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 942
    :try_start_0
    iget-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 943
    .restart local v3    # "result":J
    const/4 v5, 0x0

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 945
    .end local v3    # "result":J
    :catch_0
    move-exception v5

    goto :goto_1

    .line 940
    :cond_4
    const/16 v5, 0x22

    goto :goto_2

    .line 949
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 960
    .restart local v0    # "asDouble":D
    .restart local v3    # "result":J
    :cond_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 961
    iput v9, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_0
.end method

.method public nextName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 775
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 776
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 779
    :cond_0
    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    .line 780
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 790
    return-object v1

    .line 781
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 782
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 783
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    .line 784
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 786
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a name but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextNull()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 861
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 862
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 864
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 865
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 870
    return-void

    .line 867
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 803
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 804
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 807
    :cond_0
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 808
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 826
    return-object v1

    .line 809
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 810
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 811
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    .line 812
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 813
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v2, 0xb

    if-ne v0, v2, :cond_4

    .line 814
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 815
    .restart local v1    # "result":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 816
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    const/16 v2, 0xf

    if-ne v0, v2, :cond_5

    .line 817
    iget-wide v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 818
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    const/16 v2, 0x10

    if-ne v0, v2, :cond_6

    .line 819
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 820
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 822
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a string but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public peek()Lcom/millennialmedia/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 414
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 418
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 447
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 420
    :pswitch_0
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/millennialmedia/google/gson/stream/JsonToken;

    .line 445
    :goto_0
    return-object v1

    .line 422
    :pswitch_1
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_OBJECT:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 424
    :pswitch_2
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 426
    :pswitch_3
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_ARRAY:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 430
    :pswitch_4
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->NAME:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 433
    :pswitch_5
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->BOOLEAN:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 435
    :pswitch_6
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->NULL:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 440
    :pswitch_7
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->STRING:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 443
    :pswitch_8
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->NUMBER:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 445
    :pswitch_9
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lenient:Z

    .line 317
    return-void
.end method

.method public skipValue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1206
    const/4 v0, 0x0

    .line 1208
    .local v0, "count":I
    :cond_0
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 1209
    .local v1, "p":I
    if-nez v1, :cond_1

    .line 1210
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    .line 1213
    :cond_1
    if-ne v1, v5, :cond_3

    .line 1214
    invoke-direct {p0, v4}, Lcom/millennialmedia/google/gson/stream/JsonReader;->push(I)V

    .line 1215
    add-int/lit8 v0, v0, 0x1

    .line 1234
    :cond_2
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 1235
    if-nez v0, :cond_0

    .line 1236
    return-void

    .line 1216
    :cond_3
    if-ne v1, v4, :cond_4

    .line 1217
    invoke-direct {p0, v5}, Lcom/millennialmedia/google/gson/stream/JsonReader;->push(I)V

    .line 1218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1219
    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 1220
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    .line 1221
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1222
    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1223
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    .line 1224
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1225
    :cond_6
    const/16 v2, 0xe

    if-eq v1, v2, :cond_7

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    .line 1226
    :cond_7
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->skipUnquotedValue()V

    goto :goto_0

    .line 1227
    :cond_8
    const/16 v2, 0x8

    if-eq v1, v2, :cond_9

    const/16 v2, 0xc

    if-ne v1, v2, :cond_a

    .line 1228
    :cond_9
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_0

    .line 1229
    :cond_a
    const/16 v2, 0x9

    if-eq v1, v2, :cond_b

    const/16 v2, 0xd

    if-ne v1, v2, :cond_c

    .line 1230
    :cond_b
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_0

    .line 1231
    :cond_c
    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 1232
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
