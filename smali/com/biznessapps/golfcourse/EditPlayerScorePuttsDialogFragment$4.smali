.class Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$4;
.super Ljava/lang/Object;
.source "EditPlayerScorePuttsDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$4;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$4;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->dismiss()V

    .line 235
    return-void
.end method
