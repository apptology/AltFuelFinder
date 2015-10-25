.class Lcom/biznessapps/common/fragments/CommonListFragmentNew$1;
.super Ljava/lang/Object;
.source "CommonListFragmentNew.java"

# interfaces
.implements Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/fragments/CommonListFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/fragments/CommonListFragmentNew;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/fragments/CommonListFragmentNew;)V
    .locals 0

    .prologue
    .line 52
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew$1;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew.1;"
    iput-object p1, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew$1;->this$0:Lcom/biznessapps/common/fragments/CommonListFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastPositionAchieved(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 56
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew$1;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew.1;"
    return-void
.end method
