.class public Lcom/biznessapps/common/activities/CommonTabFragmentActivity$ScreenPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "CommonTabFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/activities/CommonTabFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenPagerAdapter"
.end annotation


# instance fields
.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/biznessapps/common/activities/CommonTabFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/biznessapps/common/activities/CommonTabFragmentActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p3, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iput-object p1, p0, Lcom/biznessapps/common/activities/CommonTabFragmentActivity$ScreenPagerAdapter;->this$0:Lcom/biznessapps/common/activities/CommonTabFragmentActivity;

    .line 111
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 112
    iput-object p3, p0, Lcom/biznessapps/common/activities/CommonTabFragmentActivity$ScreenPagerAdapter;->fragments:Ljava/util/List;

    .line 113
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonTabFragmentActivity$ScreenPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonTabFragmentActivity$ScreenPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method
