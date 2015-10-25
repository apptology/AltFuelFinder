.class public final enum Lcom/paypal/android/sdk/aK;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/sdk/aK;

.field public static final enum b:Lcom/paypal/android/sdk/aK;

.field public static final enum c:Lcom/paypal/android/sdk/aK;

.field private static enum d:Lcom/paypal/android/sdk/aK;

.field private static enum e:Lcom/paypal/android/sdk/aK;

.field private static final synthetic f:[Lcom/paypal/android/sdk/aK;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/sdk/aK;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/aK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/aK;->a:Lcom/paypal/android/sdk/aK;

    new-instance v0, Lcom/paypal/android/sdk/aK;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/sdk/aK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/aK;->b:Lcom/paypal/android/sdk/aK;

    new-instance v0, Lcom/paypal/android/sdk/aK;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/paypal/android/sdk/aK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/aK;->d:Lcom/paypal/android/sdk/aK;

    new-instance v0, Lcom/paypal/android/sdk/aK;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/paypal/android/sdk/aK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/aK;->c:Lcom/paypal/android/sdk/aK;

    new-instance v0, Lcom/paypal/android/sdk/aK;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v6}, Lcom/paypal/android/sdk/aK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/aK;->e:Lcom/paypal/android/sdk/aK;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/paypal/android/sdk/aK;

    sget-object v1, Lcom/paypal/android/sdk/aK;->a:Lcom/paypal/android/sdk/aK;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/sdk/aK;->b:Lcom/paypal/android/sdk/aK;

    aput-object v1, v0, v3

    sget-object v1, Lcom/paypal/android/sdk/aK;->d:Lcom/paypal/android/sdk/aK;

    aput-object v1, v0, v4

    sget-object v1, Lcom/paypal/android/sdk/aK;->c:Lcom/paypal/android/sdk/aK;

    aput-object v1, v0, v5

    sget-object v1, Lcom/paypal/android/sdk/aK;->e:Lcom/paypal/android/sdk/aK;

    aput-object v1, v0, v6

    sput-object v0, Lcom/paypal/android/sdk/aK;->f:[Lcom/paypal/android/sdk/aK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/aK;
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/aK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/aK;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/aK;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/aK;->f:[Lcom/paypal/android/sdk/aK;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/aK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/aK;

    return-object v0
.end method
