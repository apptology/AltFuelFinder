.class Lcom/biznessapps/golfcourse/AddNoteFragment$1;
.super Ljava/lang/Object;
.source "AddNoteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/AddNoteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/AddNoteFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/AddNoteFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/biznessapps/golfcourse/AddNoteFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddNoteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/biznessapps/golfcourse/AddNoteFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddNoteFragment;

    iget-object v2, p0, Lcom/biznessapps/golfcourse/AddNoteFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddNoteFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddNoteFragment;->mETNote:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/AddNoteFragment;->access$100(Lcom/biznessapps/golfcourse/AddNoteFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/biznessapps/golfcourse/AddNoteFragment;->mNote:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/biznessapps/golfcourse/AddNoteFragment;->access$002(Lcom/biznessapps/golfcourse/AddNoteFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "note"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/AddNoteFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddNoteFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddNoteFragment;->mNote:Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/AddNoteFragment;->access$000(Lcom/biznessapps/golfcourse/AddNoteFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/biznessapps/golfcourse/AddNoteFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddNoteFragment;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/biznessapps/golfcourse/AddNoteFragment;->finishFragment(ILandroid/content/Intent;)V

    .line 113
    return-void
.end method
