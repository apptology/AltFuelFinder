.class public Lcom/biznessapps/menu_items/MenuSectionEntities;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "MenuSectionEntities.java"


# static fields
.field private static final ZERO_VALUE:Ljava/lang/String; = "0.00"

.field private static final serialVersionUID:J = 0x34888941be88960bL


# instance fields
.field private price:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/biznessapps/menu_items/MenuSectionEntities;->price:Ljava/lang/String;

    return-object v0
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .end local p1    # "price":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/biznessapps/menu_items/MenuSectionEntities;->price:Ljava/lang/String;

    .line 22
    return-void

    .line 21
    .restart local p1    # "price":Ljava/lang/String;
    :cond_0
    const-string p1, "0.00"

    goto :goto_0
.end method
