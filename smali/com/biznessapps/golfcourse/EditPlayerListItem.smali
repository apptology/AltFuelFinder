.class public Lcom/biznessapps/golfcourse/EditPlayerListItem;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "EditPlayerListItem.java"


# static fields
.field private static final serialVersionUID:J = -0x4652a1d224f184faL


# instance fields
.field public isPickable:Z

.field public isRequired:Z

.field public picker:Lcom/biznessapps/common/components/WheelDelegate;

.field public player:Lcom/biznessapps/golfcourse/model/Player;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/golfcourse/EditPlayerListItem;->isPickable:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/golfcourse/EditPlayerListItem;->isRequired:Z

    .line 33
    return-void
.end method
