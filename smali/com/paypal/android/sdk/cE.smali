.class public final Lcom/paypal/android/sdk/cE;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static final b:Lcom/paypal/android/sdk/j;

.field private static c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/paypal/android/sdk/j;

    const-class v1, Lcom/paypal/android/sdk/cG;

    sget-object v2, Lcom/paypal/android/sdk/y;->a:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/j;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    sput-object v0, Lcom/paypal/android/sdk/cE;->b:Lcom/paypal/android/sdk/j;

    new-instance v0, Lcom/paypal/android/sdk/cF;

    invoke-direct {v0}, Lcom/paypal/android/sdk/cF;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/cE;->c:Ljava/util/Set;

    return-void
.end method

.method public static a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/cE;->b:Lcom/paypal/android/sdk/j;

    invoke-virtual {v0, p0}, Lcom/paypal/android/sdk/j;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/paypal/android/sdk/aH;->b:Lcom/paypal/android/sdk/aH;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aH;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/sdk/cE;->b:Lcom/paypal/android/sdk/j;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aK:Lcom/paypal/android/sdk/cG;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/j;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/aH;->a:Lcom/paypal/android/sdk/aH;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aH;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/paypal/android/sdk/cE;->b:Lcom/paypal/android/sdk/j;

    const-string v1, "INTERNAL_SERVICE_ERROR"

    sget-object v2, Lcom/paypal/android/sdk/cG;->aQ:Lcom/paypal/android/sdk/cG;

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/j;->a(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/paypal/android/sdk/aH;->c:Lcom/paypal/android/sdk/aH;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aH;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/paypal/android/sdk/cE;->b:Lcom/paypal/android/sdk/j;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bu:Lcom/paypal/android/sdk/cG;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/j;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/paypal/android/sdk/cE;->b:Lcom/paypal/android/sdk/j;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aQ:Lcom/paypal/android/sdk/cG;

    invoke-virtual {v0, p0, v1}, Lcom/paypal/android/sdk/j;->a(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/cE;->b:Lcom/paypal/android/sdk/j;

    invoke-virtual {v0, p0}, Lcom/paypal/android/sdk/j;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/sdk/cE;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/paypal/android/sdk/cE;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/paypal/android/sdk/cE;->b:Lcom/paypal/android/sdk/j;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/j;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
