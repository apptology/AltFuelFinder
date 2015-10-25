.class public Lcom/biznessapps/mortgage/MortgageCalculatorFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "MortgageCalculatorFragment.java"


# static fields
.field private static final CONTAINER_HEIGHT_KOEF:F = 0.52f

.field private static final NUMBER_FORMAT:Ljava/lang/String; = "%.2f"


# instance fields
.field private amountEditText:Landroid/widget/EditText;

.field private calculateButton:Landroid/widget/Button;

.field private layout:Landroid/view/ViewGroup;

.field private monthRepaymentTextView:Landroid/widget/TextView;

.field private mortgageInfo:Lcom/biznessapps/mortgage/MortgageEntity;

.field private rateEditText:Landroid/widget/EditText;

.field private resetButton:Landroid/widget/Button;

.field private tabId:Ljava/lang/String;

.field private termEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->amountEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->termEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->calculate()V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->reset()V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->calculateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/mortgage/MortgageCalculatorFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->updateContainerColor(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private calculate()V
    .locals 20

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->amountEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 210
    .local v12, "priceAmountText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->termEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 211
    .local v14, "term":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 212
    .local v13, "rateText":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v12, v1, v15

    const/4 v15, 0x1

    aput-object v14, v1, v15

    const/4 v15, 0x2

    aput-object v13, v1, v15

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v15, Lcom/biznessapps/layout/R$string;->fill_required_fields_message:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 216
    :cond_0
    :try_start_0
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 217
    .local v2, "amountValue":D
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 218
    .local v4, "termValue":D
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .local v6, "rateValue":D
    move-object/from16 v1, p0

    .line 220
    invoke-direct/range {v1 .. v7}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->checkOnCorrectness(DDD)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v15, Lcom/biznessapps/layout/R$string;->number_incorrect_format_message:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v2    # "amountValue":D
    .end local v4    # "termValue":D
    .end local v6    # "rateValue":D
    :catch_0
    move-exception v9

    .line 240
    .local v9, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v15, Lcom/biznessapps/layout/R$string;->number_incorrect_format_message:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v1, v15, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 224
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "amountValue":D
    .restart local v4    # "termValue":D
    .restart local v6    # "rateValue":D
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->amountEditText:Landroid/widget/EditText;

    invoke-static {v1, v15}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->termEditText:Landroid/widget/EditText;

    invoke-static {v1, v15}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    invoke-static {v1, v15}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 229
    const-wide v15, 0x4092c00000000000L    # 1200.0

    div-double/2addr v6, v15

    .line 230
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double/2addr v15, v6

    const-wide/high16 v17, 0x4028000000000000L    # 12.0

    mul-double v17, v17, v4

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    sub-double v15, v15, v17

    div-double v15, v6, v15

    add-double/2addr v15, v6

    mul-double v10, v15, v2

    .line 232
    .local v10, "payment":D
    invoke-static {}, Lcom/biznessapps/utils/CommonUtils;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v8

    .line 233
    .local v8, "currencySymbol":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->monthRepaymentTextView:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "%.2f"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->amountEditText:Landroid/widget/EditText;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "%"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->defineControlsBehavior(Z)V

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->hideBottomContainer()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private checkOnCorrectness(DDD)Z
    .locals 6
    .param p1, "amountValue"    # D
    .param p3, "termValue"    # D
    .param p5, "rateValue"    # D

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 355
    cmpl-double v1, p1, v2

    if-eqz v1, :cond_0

    cmpl-double v1, p5, v2

    if-eqz v1, :cond_0

    cmpl-double v1, p3, v2

    if-nez v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    cmpg-double v1, p1, v4

    if-ltz v1, :cond_0

    const-wide v1, 0x4197d783fc000000L    # 9.9999999E7

    cmpl-double v1, p1, v1

    if-gtz v1, :cond_0

    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, p5, v1

    if-ltz v1, :cond_0

    const-wide v1, 0x408f400000000000L    # 1000.0

    cmpl-double v1, p5, v1

    if-gtz v1, :cond_0

    cmpg-double v1, p3, v4

    if-ltz v1, :cond_0

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    cmpl-double v1, p3, v1

    if-gtz v1, :cond_0

    .line 361
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private defineControlsBehavior(Z)V
    .locals 4
    .param p1, "shouldReset"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 262
    iget-object v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->calculateButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->resetButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->amountEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->termEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 266
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/mortgage/MortgageEntity;

    invoke-virtual {v0}, Lcom/biznessapps/mortgage/MortgageEntity;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 272
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 262
    goto :goto_0

    :cond_1
    move v2, v1

    .line 263
    goto :goto_1

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_2
.end method

.method private hideBottomContainer()V
    .locals 6

    .prologue
    .line 293
    iget-object v4, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->top:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 294
    .local v3, "topContainter":Landroid/widget/FrameLayout;
    sget v4, Lcom/biznessapps/layout/R$drawable;->tip_container_bottom_bg:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 295
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 296
    invoke-direct {p0, v3}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->updateContainerColor(Landroid/view/View;)V

    .line 298
    invoke-virtual {p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 299
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 301
    .local v1, "originalHeight":I
    new-instance v2, Lcom/biznessapps/widgets/animation/ResizeAnimation;

    int-to-float v4, v1

    const v5, 0x3f051eb8    # 0.52f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Lcom/biznessapps/widgets/animation/ResizeAnimation;-><init>(Landroid/view/View;I)V

    .line 302
    .local v2, "resizeAnimation":Lcom/biznessapps/widgets/animation/ResizeAnimation;
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Lcom/biznessapps/widgets/animation/ResizeAnimation;->setDuration(J)V

    .line 303
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 304
    new-instance v4, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$6;

    invoke-direct {v4, p0, v1}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$6;-><init>(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;I)V

    invoke-virtual {v2, v4}, Lcom/biznessapps/widgets/animation/ResizeAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 329
    return-void
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->calculateButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$3;-><init>(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->resetButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$4;

    invoke-direct {v1, p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$4;-><init>(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$5;

    invoke-direct {v1, p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$5;-><init>(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)V

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 206
    return-void
.end method

.method private initViews()V
    .locals 8

    .prologue
    .line 123
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->amount_text:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->amountEditText:Landroid/widget/EditText;

    .line 124
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->amountEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/biznessapps/utils/CommonUtils;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->term_text:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->termEditText:Landroid/widget/EditText;

    .line 126
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->rate_text:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    .line 127
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->each_month_text:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->monthRepaymentTextView:Landroid/widget/TextView;

    .line 128
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->amount_label:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    .local v0, "amountLabel":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->term_label:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 130
    .local v4, "termLabel":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->rate_label:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 131
    .local v3, "rateLabel":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->each_month_label:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    .local v2, "eachMonthLabel":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->disclaimer_label:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 133
    .local v1, "disclaimerText":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->calculate_button:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->calculateButton:Landroid/widget/Button;

    .line 134
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->reset_button:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->resetButton:Landroid/widget/Button;

    .line 136
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->calculateButton:Landroid/widget/Button;

    sget v6, Lcom/biznessapps/layout/R$string;->calculate:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 137
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->resetButton:Landroid/widget/Button;

    sget v6, Lcom/biznessapps/layout/R$string;->reset:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 138
    sget v5, Lcom/biznessapps/layout/R$string;->each_month_payment:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 139
    sget v5, Lcom/biznessapps/layout/R$string;->loan_amount:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 140
    sget v5, Lcom/biznessapps/layout/R$string;->loan_term:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->termEditText:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "< 50 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->loan_term_input_hint:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 142
    sget v5, Lcom/biznessapps/layout/R$string;->interest_rate:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 143
    sget v5, Lcom/biznessapps/layout/R$string;->disclaimer_label:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v5

    iget-object v6, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->calculateButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v5

    iget-object v6, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->resetButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->calculateButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v6}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 148
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->resetButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v6}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 150
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->monthRepaymentTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v6}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->layout:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v5, v6}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 158
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->amountEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$1;

    invoke-direct {v6, p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$1;-><init>(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 173
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->termEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$2;

    invoke-direct {v6, p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$2;-><init>(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 183
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->calculateButton:Landroid/widget/Button;

    invoke-static {v6}, Lcom/biznessapps/utils/ViewUtils;->getOnEditorListener(Landroid/widget/Button;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 184
    invoke-direct {p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->setLinesBgColor()V

    .line 185
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->amountEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->termEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/mortgage/MortgageEntity;

    invoke-virtual {v0}, Lcom/biznessapps/mortgage/MortgageEntity;->getInterest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/mortgage/MortgageEntity;

    invoke-virtual {v1}, Lcom/biznessapps/mortgage/MortgageEntity;->getInterest()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->monthRepaymentTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->defineControlsBehavior(Z)V

    .line 257
    invoke-direct {p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->show()V

    .line 258
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setLinesBgColor()V
    .locals 5

    .prologue
    .line 338
    iget-object v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->line_image1:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 339
    .local v0, "line1":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->line_image2:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 340
    .local v1, "line2":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->line_image3:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 341
    .local v2, "line3":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 342
    iget-object v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 343
    iget-object v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 344
    return-void
.end method

.method private show()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 275
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->top:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 276
    .local v3, "topContainter":Landroid/widget/FrameLayout;
    sget v5, Lcom/biznessapps/layout/R$drawable;->tip_container_bg:I

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 277
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 278
    invoke-direct {p0, v3}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->updateContainerColor(Landroid/view/View;)V

    .line 280
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->tip_indicator:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 281
    .local v2, "tipIndicator":Landroid/widget/ImageView;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->top_data_container:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 283
    .local v4, "topDataContainer":Landroid/view/ViewGroup;
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 285
    iget-object v5, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->mortgage_layout_container:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 286
    .local v0, "contentContainer":Landroid/widget/FrameLayout;
    new-instance v1, Lcom/biznessapps/widgets/animation/RelResizeAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    invoke-direct {v1, v3, v5, v6}, Lcom/biznessapps/widgets/animation/RelResizeAnimation;-><init>(Landroid/view/View;FI)V

    .line 287
    .local v1, "resizeAnimation":Lcom/biznessapps/widgets/animation/RelResizeAnimation;
    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v5, v6}, Lcom/biznessapps/widgets/animation/RelResizeAnimation;->setDuration(J)V

    .line 289
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 290
    return-void
.end method

.method private updateContainerColor(Landroid/view/View;)V
    .locals 2
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/mortgage/MortgageEntity;

    invoke-virtual {v0}, Lcom/biznessapps/mortgage/MortgageEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setGlobalBackgroundColor(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/api/UiSettings;)V

    .line 335
    :cond_0
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MORTGAGE_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/mortgage/MortgageEntity;

    iput-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/mortgage/MortgageEntity;

    .line 119
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/mortgage/MortgageEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/mortgage/MortgageEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/mortgage/MortgageEntity;

    invoke-virtual {v0}, Lcom/biznessapps/mortgage/MortgageEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    const-string v0, "loan.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->layout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x78

    .line 59
    sget v2, Lcom/biznessapps/layout/R$layout;->mortgage_calculator_layout_new:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    .line 60
    invoke-virtual {p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->initSettingsData()V

    .line 61
    iget-object v2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->mortgage_layout:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->layout:Landroid/view/ViewGroup;

    .line 62
    invoke-direct {p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->initViews()V

    .line 63
    invoke-direct {p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->initListeners()V

    .line 64
    invoke-virtual {p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->loadData()V

    .line 65
    invoke-virtual {p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 66
    invoke-virtual {p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->openCustomDialogs()V

    .line 68
    iget-object v2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->mortgage_layout_container:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 69
    .local v1, "contentContainer":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 71
    iget-object v2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->top:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 72
    .local v0, "bottomContainer":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 73
    iget-object v2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    return-object v2
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->tabId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseMortgage(Ljava/lang/String;)Lcom/biznessapps/mortgage/MortgageEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/mortgage/MortgageEntity;

    .line 89
    invoke-virtual {p0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MORTGAGE_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/mortgage/MortgageEntity;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 4
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 95
    iget-object v2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->mortgage_layout_container:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 96
    .local v0, "contentContainer":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->top:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 97
    .local v1, "topContainter":Landroid/widget/FrameLayout;
    invoke-direct {p0, v0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->updateContainerColor(Landroid/view/View;)V

    .line 98
    invoke-direct {p0, v1}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->updateContainerColor(Landroid/view/View;)V

    .line 100
    iget-object v2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/mortgage/MortgageEntity;

    invoke-virtual {v2}, Lcom/biznessapps/mortgage/MortgageEntity;->getInterest()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/mortgage/MortgageEntity;

    invoke-virtual {v3}, Lcom/biznessapps/mortgage/MortgageEntity;->getInterest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->mortgageInfo:Lcom/biznessapps/mortgage/MortgageEntity;

    invoke-virtual {v2}, Lcom/biznessapps/mortgage/MortgageEntity;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 104
    return-void

    .line 103
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
