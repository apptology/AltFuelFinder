.class Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2$2;
.super Ljava/lang/Object;
.source "FlexibleCounterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;


# direct methods
.method constructor <init>(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2$2;->this$1:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 116
    return-void
.end method
