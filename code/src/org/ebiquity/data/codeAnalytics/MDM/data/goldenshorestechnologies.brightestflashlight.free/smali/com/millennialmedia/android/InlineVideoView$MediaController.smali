.class Lcom/millennialmedia/android/InlineVideoView$MediaController;
.super Landroid/widget/MediaController;
.source "InlineVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
	value = Lcom/millennialmedia/android/InlineVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
	accessFlags = 0x0
	name = "MediaController"
.end annotation


# instance fields
.field inDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field outDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic this$0:Lcom/millennialmedia/android/InlineVideoView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/InlineVideoView;Landroid/content/Context;)V
	.locals 0
	.param p2, "context"	# Landroid/content/Context;

	.prologue
	.line 723
	iput-object p1, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	.line 724
	invoke-direct {p0, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

	.line 725
	return-void
.end method


# virtual methods
.method public setAnchorView(Landroid/view/View;)V
	.locals 10
	.param p1, "view"	# Landroid/view/View;

	.prologue
	const/4 v9, 0x0

	const/4 v8, -0x2

	.line 730
	invoke-super {p0, p1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

	.line 731
	new-instance v4, Landroid/widget/Button;

	invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->getContext()Landroid/content/Context;

	move-result-object v6

	invoke-direct {v4, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

	.line 732
	.local v4, "fullScreenButton":Landroid/widget/Button;
	iget-object v6, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController;->inDrawable:Landroid/graphics/drawable/BitmapDrawable;

	if-nez v6, :cond_0

	.line 736
	:try_start_0
	const-string v6, "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABOpJREFUeNrUmmtIY0cUgCfJ3VBXUXxR0dp2Ya0aBSFi6yOtFPGF1d1WavrAXy1YwVcLLaQpttsH+lcbirYq0a3Ptd0WpKi1P1SMaAitJNptalcQIwV/iI+o2ST39kx6I9cY3STcuSYHhjuTzD33fJk5M+fciWh9fR0tLCwgrhwfH6OcnBwkl8ur9vb2DIODg5aIiAjkq1itViQWi1FYWBgiKYmJiQhptdpzX6SlpSGz2fwRwzDHR0dH83V1dYn+KK6oqLjR19enQISluLgYof7+/jMfZmRkIIvFcoc5K783NTU95YvSsrKyFLvd/s/a2pqRNEBJSclZAJlMhra2tjyNP4Vobm5OukxhaWlpysnJyQPceXl5WS8SicgDDAwMuBrp6enY+M+Zy2UFIJ72pqy8vDwFfOcvd0ebzWYoLCwkD9DR0YFSU1Ox8W2Mb7IKEM+4lWBnHRoaSnM6nX97jhhAkQfQ6/XXNjY27jD+iamhoeFZiqLQyMhIOrQfeuljhCklJg4AD7rFBCA0Tf+h0+luQ9V80UgBAEUaQAzrvB7qk/7eDA6alZeXdx+qKRd0wb++hPRKJIZNaru+vv4NqP/Gs25sPEUcIDw8HHV1de2BY1bzDCFmC1kA91rd2dmJIV6D6nRIjQC3ARD7LMQvPOmWCArAQlhbWlqUPEBIrgQAC2xuh42NjUoI5O5BkwmpEXCLRqM5XFlZ+Qaq9qB2Yq9jL5HgHRaW+bzvoSkNZic+9wA2tnmxpqbmB2jGB7sPUB67KzZeAcb/CM24kHBi9z6Ar8PDwy8plcr7PBgvnBND9uSa82D8y2D8TzwZLxgAhRN4yF+zwfhfeX7gdSjXiANgp11cXDyCjOxr1ick7MojYQ2g2Cu3fvpZcnKyOCEhQcL5xd1XK+QLu8QB2GDuTyjvB6IgKSkJZWZmejouLrTBYLAJvoz6KxaLxVVYcbLljOTm5oqioqLwlHJw+jB4+s7NzQX8bIfDQX6jwdLb2/upTCZ7kzWcZouTHSUnZHd2tv2IvdrZ4vC4uuv09va2eXx8XCMIgNVqxXPsOW/fZWdnB6TTZrNp8egJAgByyKey/f19LeTD7+IFSCwQgINH47+rrKx8Z2lpyRkZGSkYwCM+lBwcHHwLxtfB1ME+hN+ohM4IsMa/B8YzPuUDwQSwu7urAePrZ2dnGd73AdJTCGK1n2traxvBeP8ysmAZAQhHXlCpVK/Ex8dfKUCgaSkO8xMKCgpGJycnb3uDCBUnvi6Xy4cA4lZcXFxIAmAJA4iRqamp12NjY0+TsJDaB0CeAIjB6enpmujo6P8PE0NtJ8Y5CEDcnZiYUOJQngpBACzS/Pz8u1lZWfSVr0I7OzufrK6uqgMZCUjG3qauEgDCgy+qqqq+woftsFGJIGf40g+dD+fn51XnzolJCCQtb3meP21ubn7GPcXE89lkMql9POFab21tTYVMDwkCMDMzo+Q+fXR0VI1DYW/5tdFoVD3G+AdtbW2uY62ioiJhAKqrq1/lGo9PNy8S/P8HgPjwEuNvuvueO6knDTA2NvbxZcY/BmKtvb39JrefC6Cnp4c4AMQyT3Z3d5f6cw9+3aPT6T7AlkNEalKr1Tc8+ygUCiSC7B7BMkYUgKZpnIQjqVTqeo3pYxjtGglY65+H+ib40b949Lj/v4iJiUH/CTAAFI2ZNCJ5irUAAAAASUVORK5CYII="

	invoke-static {v6}, Lcom/millennialmedia/android/Base64;->decode(Ljava/lang/String;)[B

	move-result-object v1

	.line 737
	.local v1, "decodedIn":[B
	new-instance v0, Ljava/io/ByteArrayInputStream;

	invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

	.line 738
	.local v0, "bias":Ljava/io/ByteArrayInputStream;
	new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

	invoke-direct {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

	iput-object v6, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController;->inDrawable:Landroid/graphics/drawable/BitmapDrawable;
	:try_end_0
	.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

	.line 745
	.end local v0	# "bias":Ljava/io/ByteArrayInputStream;
	.end local v1	# "decodedIn":[B
	:cond_0
	:goto_0
	iget-object v6, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController;->outDrawable:Landroid/graphics/drawable/BitmapDrawable;

	if-nez v6, :cond_1

	.line 749
	:try_start_1
	const-string v6, "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABEZJREFUeNrUml9IU1Ecx8+2uwnCrBlaGD2YEKiVla2ypAj8X+l8KYpkLxUFoT0VBT1YUYYP6ktQCGUQgQr+w0o3sgdDEv+AaBH9odicEq4XY25u7vY9dhe3m9N5d+8Z/uDHvRzPn+/nnN/5d6eG5/mNhJCjcAPcD18QngHhPSDxBVE+cfo/aXa7/afL5eKJipaSkkI4QfwzuBZOGwwKQoKS90jTqOvm5uZqrFbrYzUB8vPzFwEMgnhqGtq44LLN4/F8bmxsfEdUNo1GswjgF3peo0SlED9hsVhKbTbbV8LAtELMBhUSP1ZeXn6clXgxwEK0FSHmqfgTvb293whD45QAEMQfh3gHYWxa0eohy2ZmZt4i5o/19PQwFx8CmI9mBLq6umrQ804SI4t6BCoqKh5UVVWZYwVAsBMfhrv56GwKEPtYay8oKFgEyIH/4KO36crKyoOxADDTxnll7AcgDrEG2A2f5JUzCpHLEmAn3MEraxTiCCuAdPj3ZcR4ZEK4MbH3qw2w7FFidna2t6mpiU7M1zLqT8QSu43FMroV/vm/bvd47Dhvm2ge9OQGJL1ZTfc7nc77WVlZOhYhtAX+USLeVlhYaBJnXg0ExN/LyMhgNolT4B9CjeNg9hLiE5YqAAgTsthWEp+ens50Gd0If08b93q9r8KJF0GsR1Z7GPG3WfS8FCCBzgGfz/e6qKgoIZKCWCLXS0dicnKyOjMzk/1Roq+vj+AsfyA7OzthNYUBYYTuF/BALMT/BcDlW3YFubm58Qi5vampqTE5iFIATq/Xy66gv7/fg8eQ3PJ5eXmbdTrduqGhofdut1vOHZwQbFQx6b2GhoZMhN8n+K/h4eHypKSkiMvGxcXRsN9XXV29KSYA9fX1GRD+RbQGeAFxMhIIKr6zs/M0yvjh55gDQPx2ifiQ+QBxKjk5eSXxZwTx1C4xBYB4evL9tsw+6B0ZGVkSwmAwkI6ODip+XpT/MjOAurq6HSucev+OBCAqxBCCeKtEPLUrqgPQxtHzeyIUH7L50dHRs4mJiYt1tLe3W0VhI7arqgMUFxfHSw+LEZpvcHDwZHd39+kw4qnd4NQOnfHxcf/ExMQAdurV3g0MZrP5ufDROdyHZ71WbQCHw+HHjnkRIE9lfrda7qs5p2UxgV0ulxeXo3OAeKJw1TotqyV0enqajsR5hSEMzACoTU1NBXD4oxCNClXJMQUQwolCXMDEfqRAdXrmAAIETyf22NjYQ/Ln5621MwJiCIvFcjEQCAysuREI7dC1tbVVuA/simYEuFiJb2lpuVZaWlqz5iYxvQE2NzcrIZ59CHEYcPT89bKyshql+oMZAGKdtLa23oT4u0r2CRMAk8mkb2truwPxt5SeTpzf71cdIC0tzVhSUpKP1++hARFcu8RzqbSwBzoN1mOCXVFVgGAwSHJycuKMRmM8+fcfSqQg0jQuzN90Qj3O3wIMAN8Np0JgnxtnAAAAAElFTkSuQmCC"

	invoke-static {v6}, Lcom/millennialmedia/android/Base64;->decode(Ljava/lang/String;)[B

	move-result-object v2

	.line 750
	.local v2, "decodedOut":[B
	new-instance v0, Ljava/io/ByteArrayInputStream;

	invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

	.line 751
	.restart local v0	# "bias":Ljava/io/ByteArrayInputStream;
	new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

	invoke-direct {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

	iput-object v6, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController;->outDrawable:Landroid/graphics/drawable/BitmapDrawable;
	:try_end_1
	.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

	.line 758
	.end local v0	# "bias":Ljava/io/ByteArrayInputStream;
	.end local v2	# "decodedOut":[B
	:cond_1
	:goto_1
	iget-object v6, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

	iget-object v6, v6, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

	iget-boolean v6, v6, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

	if-eqz v6, :cond_2

	.line 759
	iget-object v6, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController;->inDrawable:Landroid/graphics/drawable/BitmapDrawable;

	invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

	.line 762
	:goto_2
	new-instance v6, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;

	invoke-direct {v6, p0}, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;-><init>(Lcom/millennialmedia/android/InlineVideoView$MediaController;)V

	invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

	.line 821
	new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

	const/4 v6, 0x5

	invoke-direct {v5, v8, v8, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

	.line 822
	.local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
	const/16 v6, 0x14

	const/16 v7, 0xa

	invoke-virtual {v5, v9, v6, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

	.line 824
	invoke-virtual {p0, v4, v5}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

	.line 825
	return-void

	.line 740
	.end local v5	# "params":Landroid/widget/FrameLayout$LayoutParams;
	:catch_0
	move-exception v3

	.line 742
	.local v3, "e":Ljava/lang/Exception;
	new-instance v6, Ljava/lang/StringBuilder;

	invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

	const-string v7, "Exception image:"

	invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

	move-result-object v7

	invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v6

	invoke-static {v6}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

	goto :goto_0

	.line 753
	.end local v3	# "e":Ljava/lang/Exception;
	:catch_1
	move-exception v3

	.line 755
	.restart local v3	# "e":Ljava/lang/Exception;
	new-instance v6, Ljava/lang/StringBuilder;

	invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

	const-string v7, "Exception image:"

	invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

	move-result-object v7

	invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

	move-result-object v6

	invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

	move-result-object v6

	invoke-static {v6}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

	goto :goto_1

	.line 761
	.end local v3	# "e":Ljava/lang/Exception;
	:cond_2
	iget-object v6, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController;->outDrawable:Landroid/graphics/drawable/BitmapDrawable;

	invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

	goto :goto_2
.end method
