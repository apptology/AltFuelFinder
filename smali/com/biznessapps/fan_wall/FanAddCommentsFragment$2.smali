.class Lcom/biznessapps/fan_wall/FanAddCommentsFragment$2;
.super Ljava/lang/Object;
.source "FanAddCommentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$2;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$2;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    # getter for: Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->access$000(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method
