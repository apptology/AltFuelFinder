.class Lcom/biznessapps/around_us/AroundUsActivity$5;
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
    .line 225
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsActivity$5;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$5;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    const/4 v1, 0x1

    # setter for: Lcom/biznessapps/around_us/AroundUsActivity;->isListMode:Z
    invoke-static {v0, v1}, Lcom/biznessapps/around_us/AroundUsActivity;->access$702(Lcom/biznessapps/around_us/AroundUsActivity;Z)Z

    .line 229
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$5;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    # invokes: Lcom/biznessapps/around_us/AroundUsActivity;->updateButtonsState()V
    invoke-static {v0}, Lcom/biznessapps/around_us/AroundUsActivity;->access$800(Lcom/biznessapps/around_us/AroundUsActivity;)V

    .line 230
    return-void
.end method
