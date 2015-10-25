.class Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView$1;
.super Ljava/lang/Object;
.source "LoyaltyV2PerkIconView.java"

# interfaces
.implements Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->setPerk(Lcom/biznessapps/loyalty/LoyaltyV2Perk;Lcom/biznessapps/api/UiSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 89
    check-cast p3, Lcom/biznessapps/widgets/LoaderImageView;

    .end local p3    # "view":Landroid/view/View;
    const/4 v0, 0x1

    invoke-virtual {p3, p2, v0}, Lcom/biznessapps/widgets/LoaderImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 91
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->updateUI()V

    .line 92
    return-void
.end method
