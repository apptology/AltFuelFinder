.class final Lcom/biznessapps/common/social/ui/ShareComponent$3;
.super Ljava/lang/Object;
.source "ShareComponent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/ShareComponent;->showPostCommentDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;IILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 138
    :cond_0
    return-void
.end method
