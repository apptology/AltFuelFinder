.class public abstract Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;
.super Ljava/lang/Object;
.source "OnSharingOptionSelectedListener.java"


# instance fields
.field public activity:Landroid/app/Activity;

.field public bitmap:Landroid/graphics/Bitmap;

.field public bitmapPath:Landroid/net/Uri;

.field public description:Ljava/lang/String;

.field public listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;->activity:Landroid/app/Activity;

    .line 16
    iput-object v0, p0, Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;->listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .line 17
    iput-object v0, p0, Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;->text:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;->description:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;->bitmap:Landroid/graphics/Bitmap;

    .line 20
    iput-object v0, p0, Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;->bitmapPath:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract onSharingOptionSelected(I)V
.end method
