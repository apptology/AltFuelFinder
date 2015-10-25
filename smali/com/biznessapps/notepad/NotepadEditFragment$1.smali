.class Lcom/biznessapps/notepad/NotepadEditFragment$1;
.super Ljava/lang/Object;
.source "NotepadEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/notepad/NotepadEditFragment;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/notepad/NotepadEditFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/notepad/NotepadEditFragment;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/biznessapps/notepad/NotepadEditFragment$1;->this$0:Lcom/biznessapps/notepad/NotepadEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "choice"    # I

    .prologue
    .line 170
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 171
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/notepad/NotepadEditFragment$1;->this$0:Lcom/biznessapps/notepad/NotepadEditFragment;

    # getter for: Lcom/biznessapps/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/notepad/NotepadEntity;
    invoke-static {v1}, Lcom/biznessapps/notepad/NotepadEditFragment;->access$000(Lcom/biznessapps/notepad/NotepadEditFragment;)Lcom/biznessapps/notepad/NotepadEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/storage/StorageKeeper;->delNote(Lcom/biznessapps/notepad/NotepadEntity;)V

    .line 172
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment$1;->this$0:Lcom/biznessapps/notepad/NotepadEditFragment;

    const/4 v1, 0x1

    # setter for: Lcom/biznessapps/notepad/NotepadEditFragment;->shouldNotBeSaved:Z
    invoke-static {v0, v1}, Lcom/biznessapps/notepad/NotepadEditFragment;->access$102(Lcom/biznessapps/notepad/NotepadEditFragment;Z)Z

    .line 173
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment$1;->this$0:Lcom/biznessapps/notepad/NotepadEditFragment;

    invoke-virtual {v0}, Lcom/biznessapps/notepad/NotepadEditFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 175
    :cond_0
    return-void
.end method
