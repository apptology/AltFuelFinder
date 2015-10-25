.class Lcom/biznessapps/widgets/LoaderImageView$1;
.super Ljava/lang/Object;
.source "LoaderImageView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/LoaderImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/LoaderImageView;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/LoaderImageView;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/biznessapps/widgets/LoaderImageView$1;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView$1;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    # getter for: Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/widgets/LoaderImageView;->access$100(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView$1;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    # getter for: Lcom/biznessapps/widgets/LoaderImageView;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/biznessapps/widgets/LoaderImageView;->access$000(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView$1;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    # getter for: Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/widgets/LoaderImageView;->access$100(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView$1;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    # getter for: Lcom/biznessapps/widgets/LoaderImageView;->mSpinner:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/biznessapps/widgets/LoaderImageView;->access$200(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView$1;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    # getter for: Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/widgets/LoaderImageView;->access$100(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView$1;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    # getter for: Lcom/biznessapps/widgets/LoaderImageView;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/biznessapps/widgets/LoaderImageView;->access$000(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView$1;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    # getter for: Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/widgets/LoaderImageView;->access$100(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView$1;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    # getter for: Lcom/biznessapps/widgets/LoaderImageView;->mSpinner:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/biznessapps/widgets/LoaderImageView;->access$200(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView$1;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    # getter for: Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/widgets/LoaderImageView;->access$100(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView$1;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    # getter for: Lcom/biznessapps/widgets/LoaderImageView;->mSpinner:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/biznessapps/widgets/LoaderImageView;->access$200(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
