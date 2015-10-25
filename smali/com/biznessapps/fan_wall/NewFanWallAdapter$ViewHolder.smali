.class Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NewFanWallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fan_wall/NewFanWallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field commentView:Landroid/widget/TextView;

.field itemImage:Lcom/biznessapps/widgets/LoaderImageView;

.field nameView:Landroid/widget/TextView;

.field repliesView:Landroid/widget/TextView;

.field timeAgoView:Landroid/widget/TextView;

.field uploadedImage:Lcom/biznessapps/widgets/LoaderImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/fan_wall/NewFanWallAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallAdapter$1;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;-><init>()V

    return-void
.end method
