.class final Lio/card/payment/l;
.super Lio/card/payment/m;

# interfaces
.implements Lio/card/payment/r;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lio/card/payment/m;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lio/card/payment/l;->a:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-super {p0}, Lio/card/payment/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/card/payment/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lio/card/payment/l;->a:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
