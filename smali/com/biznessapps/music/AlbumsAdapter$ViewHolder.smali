.class Lcom/biznessapps/music/AlbumsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AlbumsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/music/AlbumsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field albumNameView:Landroid/widget/TextView;

.field arrowImage:Landroid/widget/ImageView;

.field artistNameView:Landroid/widget/TextView;

.field iconImage:Landroid/widget/ImageView;

.field songInfoView:Landroid/widget/TextView;

.field tracksListView:Lcom/biznessapps/widgets/RefreshableListView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
