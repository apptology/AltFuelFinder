.class public Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonItem"
.end annotation


# instance fields
.field private bottomTextView:Landroid/widget/TextView;

.field private button:Landroid/widget/Button;

.field private checkbox:Landroid/widget/CheckBox;

.field private descriptionTextView:Landroid/widget/TextView;

.field private frameContainer:Landroid/view/ViewGroup;

.field private imageView:Landroid/widget/ImageView;

.field private rightArrowView:Landroid/widget/ImageView;

.field private textViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->bottomTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->button:Landroid/widget/Button;

    return-object v0
.end method

.method public getCheckbox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->checkbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getDescriptioinTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->descriptionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getFrameContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->frameContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRightArrowView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->rightArrowView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextViewTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->textViewTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public setBottomTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "bottomTextView"    # Landroid/widget/TextView;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->bottomTextView:Landroid/widget/TextView;

    .line 578
    return-void
.end method

.method public setButton(Landroid/widget/Button;)V
    .locals 0
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->button:Landroid/widget/Button;

    .line 530
    return-void
.end method

.method public setCheckbox(Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "checkbox"    # Landroid/widget/CheckBox;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->checkbox:Landroid/widget/CheckBox;

    .line 562
    return-void
.end method

.method public setDescriptionTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "descriptionTextView"    # Landroid/widget/TextView;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->descriptionTextView:Landroid/widget/TextView;

    .line 570
    return-void
.end method

.method public setFrameContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "frameContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->frameContainer:Landroid/view/ViewGroup;

    .line 538
    return-void
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->imageView:Landroid/widget/ImageView;

    .line 554
    return-void
.end method

.method public setRightArrowView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "rightArrowView"    # Landroid/widget/ImageView;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->rightArrowView:Landroid/widget/ImageView;

    .line 522
    return-void
.end method

.method public setTextViewTitle(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewTitle"    # Landroid/widget/TextView;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->textViewTitle:Landroid/widget/TextView;

    .line 546
    return-void
.end method
