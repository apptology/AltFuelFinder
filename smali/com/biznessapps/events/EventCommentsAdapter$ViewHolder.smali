.class Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EventCommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/events/EventCommentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field comment:Landroid/widget/TextView;

.field iconImage:Landroid/widget/ImageView;

.field timeAgo:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/events/EventCommentsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/events/EventCommentsAdapter$1;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;-><init>()V

    return-void
.end method
