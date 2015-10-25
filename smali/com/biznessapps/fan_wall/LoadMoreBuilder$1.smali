.class final Lcom/biznessapps/fan_wall/LoadMoreBuilder$1;
.super Ljava/lang/Object;
.source "LoadMoreBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/LoadMoreBuilder;->addLoadMoreButton(Landroid/content/Context;Ljava/lang/Runnable;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/widgets/LoadMoreButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$clickAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/biznessapps/fan_wall/LoadMoreBuilder$1;->val$clickAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/fan_wall/LoadMoreBuilder$1;->val$clickAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 36
    return-void
.end method
