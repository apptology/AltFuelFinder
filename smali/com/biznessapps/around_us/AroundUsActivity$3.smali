.class Lcom/biznessapps/around_us/AroundUsActivity$3;
.super Ljava/lang/Object;
.source "AroundUsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/around_us/AroundUsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/around_us/AroundUsActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/around_us/AroundUsActivity;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsActivity$3;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$3;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity$3;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;
    invoke-static {v1}, Lcom/biznessapps/around_us/AroundUsActivity;->access$200(Lcom/biznessapps/around_us/AroundUsActivity;)Lcom/biznessapps/around_us/AroundUsEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity;->getRedColor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/around_us/AroundUsActivity$3;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsActivity;->redButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/biznessapps/around_us/AroundUsActivity;->access$500(Lcom/biznessapps/around_us/AroundUsActivity;)Landroid/widget/Button;

    move-result-object v2

    # invokes: Lcom/biznessapps/around_us/AroundUsActivity;->updateItems(Ljava/lang/String;Landroid/widget/Button;)V
    invoke-static {v0, v1, v2}, Lcom/biznessapps/around_us/AroundUsActivity;->access$400(Lcom/biznessapps/around_us/AroundUsActivity;Ljava/lang/String;Landroid/widget/Button;)V

    .line 217
    return-void
.end method
