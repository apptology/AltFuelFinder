.class Lcom/biznessapps/fan_wall/FanAddCommentsFragment$4;
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
    .line 157
    iput-object p1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$4;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$4;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    # invokes: Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->takePhoto()V
    invoke-static {v0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->access$200(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V

    .line 161
    return-void
.end method
