.class final Lio/card/payment/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lio/card/payment/DataEntryActivity;


# direct methods
.method constructor <init>(Lio/card/payment/DataEntryActivity;)V
    .locals 0

    iput-object p1, p0, Lio/card/payment/i;->a:Lio/card/payment/DataEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lio/card/payment/i;->a:Lio/card/payment/DataEntryActivity;

    sget v1, Lio/card/payment/CardIOActivity;->RESULT_ENTRY_CANCELED:I

    invoke-virtual {v0, v1}, Lio/card/payment/DataEntryActivity;->setResult(I)V

    iget-object v0, p0, Lio/card/payment/i;->a:Lio/card/payment/DataEntryActivity;

    invoke-virtual {v0}, Lio/card/payment/DataEntryActivity;->finish()V

    return-void
.end method
