.class public final Lcom/millennialmedia/google/gson/FieldAttributes;
.super Ljava/lang/Object;
.source "FieldAttributes.java"


# instance fields
.field private final field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
	.locals 0
	.param p1, "f"	# Ljava/lang/reflect/Field;

	.prologue
	.line 45
	invoke-direct {p0}, Ljava/lang/Object;-><init>()V

	.line 46
	invoke-static {p1}, Lcom/millennialmedia/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

	.line 47
	iput-object p1, p0, Lcom/millennialmedia/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

	.line 48
	return-void
.end method


# virtual methods
.method get(Ljava/lang/Object;)Ljava/lang/Object;
	.locals 1
	.param p1, "instance"	# Ljava/lang/Object;
	.annotation system Ldalvik/annotation/Throws;
		value = {
			Ljava/lang/IllegalAccessException;
		}
	.end annotation

	.prologue
	.line 147
	iget-object v0, p0, Lcom/millennialmedia/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

	invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

	move-result-object v0

	return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
	.locals 1
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"<T::",
			"Ljava/lang/annotation/Annotation;",
			">(",
			"Ljava/lang/Class",
			"<TT;>;)TT;"
		}
	.end annotation

	.prologue
	.line 112
	.local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
	iget-object v0, p0, Lcom/millennialmedia/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

	invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

	move-result-object v0

	return-object v0
.end method

.method public getAnnotations()Ljava/util/Collection;
	.locals 1
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"()",
			"Ljava/util/Collection",
			"<",
			"Ljava/lang/annotation/Annotation;",
			">;"
		}
	.end annotation

	.prologue
	.line 122
	iget-object v0, p0, Lcom/millennialmedia/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

	invoke-virtual {v0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

	move-result-object v0

	invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

	move-result-object v0

	return-object v0
.end method

.method public getDeclaredClass()Ljava/lang/Class;
	.locals 1
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"()",
			"Ljava/lang/Class",
			"<*>;"
		}
	.end annotation

	.prologue
	.line 101
	iget-object v0, p0, Lcom/millennialmedia/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

	invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

	move-result-object v0

	return-object v0
.end method

.method public getDeclaredType()Ljava/lang/reflect/Type;
	.locals 1

	.prologue
	.line 81
	iget-object v0, p0, Lcom/millennialmedia/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

	invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

	move-result-object v0

	return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
	.locals 1
	.annotation system Ldalvik/annotation/Signature;
		value = {
			"()",
			"Ljava/lang/Class",
			"<*>;"
		}
	.end annotation

	.prologue
	.line 54
	iget-object v0, p0, Lcom/millennialmedia/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

	invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

	move-result-object v0

	return-object v0
.end method

.method public getName()Ljava/lang/String;
	.locals 1

	.prologue
	.line 61
	iget-object v0, p0, Lcom/millennialmedia/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

	invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

	move-result-object v0

	return-object v0
.end method

.method public hasModifier(I)Z
	.locals 1
	.param p1, "modifier"	# I

	.prologue
	.line 136
	iget-object v0, p0, Lcom/millennialmedia/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

	invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

	move-result v0

	and-int/2addr v0, p1

	if-eqz v0, :cond_0

	const/4 v0, 0x1

	:goto_0
	return v0

	:cond_0
	const/4 v0, 0x0

	goto :goto_0
.end method

.method isSynthetic()Z
	.locals 1

	.prologue
	.line 156
	iget-object v0, p0, Lcom/millennialmedia/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

	invoke-virtual {v0}, Ljava/lang/reflect/Field;->isSynthetic()Z

	move-result v0

	return v0
.end method
