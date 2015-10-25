.class Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$1;
.super Ljava/lang/Object;
.source "MailingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;

.field final synthetic val$circleView:Landroid/widget/ImageView;

.field final synthetic val$item:Lcom/biznessapps/mailing_list/MailingListEntity$Category;

.field final synthetic val$turnButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;Lcom/biznessapps/mailing_list/MailingListEntity$Category;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$1;->this$0:Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;

    iput-object p2, p0, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$1;->val$item:Lcom/biznessapps/mailing_list/MailingListEntity$Category;

    iput-object p3, p0, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$1;->val$circleView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$1;->val$turnButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 332
    iget-object v1, p0, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$1;->val$item:Lcom/biznessapps/mailing_list/MailingListEntity$Category;

    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$1;->val$item:Lcom/biznessapps/mailing_list/MailingListEntity$Category;

    invoke-virtual {v0}, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->setSelected(Z)V

    .line 333
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$1;->val$item:Lcom/biznessapps/mailing_list/MailingListEntity$Category;

    invoke-virtual {v0}, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->isSelected()Z

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$1;->val$circleView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$1;->val$turnButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$1;->this$0:Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;

    # getter for: Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v3}, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;->access$600(Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;)Lcom/biznessapps/api/UiSettings;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/biznessapps/utils/ViewUtils;->updateTurnOnOffViewState(ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/biznessapps/api/UiSettings;)V

    .line 334
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
