.class Lcom/biznessapps/around_us/AroundUsDetailActivity$5;
.super Ljava/lang/Object;
.source "AroundUsDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/around_us/AroundUsDetailActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/around_us/AroundUsDetailActivity;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity$5;->this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity$5;->this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;

    invoke-static {v0}, Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;)V

    .line 222
    return-void
.end method
