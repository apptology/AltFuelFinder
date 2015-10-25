.class Lcom/biznessapps/email_photo/EmailPhotoFragment$2;
.super Ljava/lang/Object;
.source "EmailPhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/email_photo/EmailPhotoFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/email_photo/EmailPhotoFragment;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$2;->this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$2;->this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;

    # invokes: Lcom/biznessapps/email_photo/EmailPhotoFragment;->emailPhoto()V
    invoke-static {v0}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->access$000(Lcom/biznessapps/email_photo/EmailPhotoFragment;)V

    .line 169
    return-void
.end method
