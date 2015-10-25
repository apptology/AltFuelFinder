.class public Lcom/biznessapps/tip_calculator/TipCalculatorFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "TipCalculatorFragment.java"


# static fields
.field private static final CONTAINER_HEIGHT_KOEF:F = 0.4f

.field private static final DEFAULT_TIP_VALUE:F = 0.0f

.field private static final NUMBER_FORMAT:Ljava/lang/String; = "%.2f"


# instance fields
.field private amountEditText:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

.field private amountLabel:Landroid/widget/TextView;

.field private calculateButton:Landroid/widget/Button;

.field private eachPersonLabel:Landroid/widget/TextView;

.field private eachPersonText:Landroid/widget/TextView;

.field private numberOfPeopleLabel:Landroid/widget/TextView;

.field private originalHeight:I

.field private peopleNumberEditText:Landroid/widget/EditText;

.field private percentEditText:Landroid/widget/EditText;

.field private resetButton:Landroid/widget/Button;

.field private tabId:Ljava/lang/String;

.field private tipAmountLabel:Landroid/widget/TextView;

.field private tipAmountText:Landroid/widget/TextView;

.field private tipEachPersonLabel:Landroid/widget/TextView;

.field private tipEachPersonText:Landroid/widget/TextView;

.field private tipInfo:Lcom/biznessapps/common/entities/CommonEntity;

.field private tipLayout:Landroid/view/ViewGroup;

.field private tipPersentLabel:Landroid/widget/TextView;

.field private totalTipLabel:Landroid/widget/TextView;

.field private totalTipText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->calculate()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->percentEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->peopleNumberEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/tip_calculator/TipCalculatorFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->updateContainerColor(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    .prologue
    .line 35
    iget v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->originalHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private calculate()V
    .locals 26

    .prologue
    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->amountEditText:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "amountPrice":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->percentEditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, "percentText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->peopleNumberEditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, "peopleNumberString":Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->amountEditText:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->percentEditText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->peopleNumberEditText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 241
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->amountEditText:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->getDecimalValue()D

    move-result-wide v14

    .line 242
    .local v14, "totalCheck":D
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 243
    .local v10, "tipProgressValue":D
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 245
    .local v5, "numberOfPeople":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->checkFieldsCorrectness(D)Z

    move-result v20

    if-eqz v20, :cond_0

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    cmpl-double v20, v10, v20

    if-gtz v20, :cond_0

    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v5, v0, :cond_2

    .line 246
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    sget v21, Lcom/biznessapps/layout/R$string;->number_incorrect_format_message:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 270
    .end local v5    # "numberOfPeople":I
    .end local v10    # "tipProgressValue":D
    .end local v14    # "totalCheck":D
    :cond_1
    :goto_0
    return-void

    .line 250
    .restart local v5    # "numberOfPeople":I
    .restart local v10    # "tipProgressValue":D
    .restart local v14    # "totalCheck":D
    :cond_2
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    div-double v20, v14, v20

    mul-double v18, v20, v10

    .line 251
    .local v18, "totalTip":D
    add-double v12, v14, v18

    .line 253
    .local v12, "totalAmount":D
    int-to-double v0, v5

    move-wide/from16 v20, v0

    div-double v8, v18, v20

    .line 254
    .local v8, "tipEach":D
    int-to-double v0, v5

    move-wide/from16 v20, v0

    div-double v20, v14, v20

    add-double v16, v20, v8

    .line 256
    .local v16, "totalEach":D
    invoke-static {}, Lcom/biznessapps/utils/CommonUtils;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "currencySymbol":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->totalTipText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%.2f"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipAmountText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%.2f"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->eachPersonText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%.2f"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipEachPersonText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%.2f"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->percentEditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->amountEditText:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->defineControlsBehavior(Z)V

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->hideBottomContainer()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 266
    .end local v3    # "currencySymbol":Ljava/lang/String;
    .end local v5    # "numberOfPeople":I
    .end local v8    # "tipEach":D
    .end local v10    # "tipProgressValue":D
    .end local v12    # "totalAmount":D
    .end local v14    # "totalCheck":D
    .end local v16    # "totalEach":D
    .end local v18    # "totalTip":D
    :catch_0
    move-exception v4

    .line 267
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    sget v21, Lcom/biznessapps/layout/R$string;->number_incorrect_format_message:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private checkFieldsCorrectness(D)Z
    .locals 3
    .param p1, "amountValue"    # D

    .prologue
    const/4 v0, 0x0

    .line 368
    const-wide/16 v1, 0x0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v0

    .line 370
    :cond_1
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p1, v1

    if-ltz v1, :cond_0

    const-wide v1, 0x4197d783fc000000L    # 9.9999999E7

    cmpl-double v1, p1, v1

    if-gtz v1, :cond_0

    .line 373
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private defineControlsBehavior(Z)V
    .locals 4
    .param p1, "shouldReset"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 287
    iget-object v3, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->calculateButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->resetButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->amountEditText:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    invoke-virtual {v0, p1}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->percentEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->peopleNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 292
    return-void

    :cond_0
    move v0, v2

    .line 287
    goto :goto_0

    :cond_1
    move v2, v1

    .line 288
    goto :goto_1
.end method

.method private hideBottomContainer()V
    .locals 5

    .prologue
    .line 330
    iget-object v3, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->top:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 331
    .local v2, "topContainter":Landroid/widget/FrameLayout;
    sget v3, Lcom/biznessapps/layout/R$drawable;->tip_container_bottom_bg:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 332
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 333
    invoke-direct {p0, v2}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->updateContainerColor(Landroid/view/View;)V

    .line 335
    invoke-virtual {p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 336
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->originalHeight:I

    .line 337
    new-instance v1, Lcom/biznessapps/widgets/animation/ResizeAnimation;

    iget v3, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->originalHeight:I

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/biznessapps/widgets/animation/ResizeAnimation;-><init>(Landroid/view/View;I)V

    .line 338
    .local v1, "resizeAnimation":Lcom/biznessapps/widgets/animation/ResizeAnimation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Lcom/biznessapps/widgets/animation/ResizeAnimation;->setDuration(J)V

    .line 339
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 340
    new-instance v3, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$5;

    invoke-direct {v3, p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$5;-><init>(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)V

    invoke-virtual {v1, v3}, Lcom/biznessapps/widgets/animation/ResizeAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 365
    return-void
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->calculateButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$1;-><init>(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->resetButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$2;-><init>(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->amountEditText:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    new-instance v1, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$3;-><init>(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 219
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->percentEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$4;

    invoke-direct {v1, p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$4;-><init>(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 229
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->peopleNumberEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->calculateButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getOnEditorListener(Landroid/widget/Button;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 230
    return-void
.end method

.method private reset()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 273
    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->amountEditText:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->percentEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->peopleNumberEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-static {}, Lcom/biznessapps/utils/CommonUtils;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "currencySymbol":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->totalTipText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.2f"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipAmountText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.2f"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->eachPersonText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.2f"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipEachPersonText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.2f"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-direct {p0, v6}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->defineControlsBehavior(Z)V

    .line 283
    invoke-direct {p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->show()V

    .line 284
    return-void
.end method

.method private setLinesBgColor()V
    .locals 9

    .prologue
    .line 313
    iget-object v7, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->line_image1:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 314
    .local v0, "line1":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->line_image2:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 315
    .local v1, "line2":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->line_image3:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 316
    .local v2, "line3":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->line_image4:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 317
    .local v3, "line4":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->line_image5:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 318
    .local v4, "line5":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->line_image6:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 319
    .local v5, "line6":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->line_image7:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 320
    .local v6, "line7":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 321
    iget-object v7, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 322
    iget-object v7, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 323
    iget-object v7, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 324
    iget-object v7, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 325
    iget-object v7, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 326
    iget-object v7, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 327
    return-void
.end method

.method private show()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 295
    iget-object v5, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->top:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 296
    .local v3, "topContainter":Landroid/widget/FrameLayout;
    sget v5, Lcom/biznessapps/layout/R$drawable;->tip_container_bg:I

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 297
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 298
    invoke-direct {p0, v3}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->updateContainerColor(Landroid/view/View;)V

    .line 300
    iget-object v5, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->tip_indicator:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 301
    .local v2, "tipIndicator":Landroid/widget/ImageView;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object v5, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->top_data_container:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 304
    .local v4, "topDataContainer":Landroid/view/ViewGroup;
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 306
    iget-object v5, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->tip_layout_container:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 307
    .local v0, "contentContainer":Landroid/widget/FrameLayout;
    new-instance v1, Lcom/biznessapps/widgets/animation/RelResizeAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    invoke-direct {v1, v3, v5, v6}, Lcom/biznessapps/widgets/animation/RelResizeAnimation;-><init>(Landroid/view/View;FI)V

    .line 308
    .local v1, "resizeAnimation":Lcom/biznessapps/widgets/animation/RelResizeAnimation;
    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v5, v6}, Lcom/biznessapps/widgets/animation/RelResizeAnimation;->setDuration(J)V

    .line 309
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 310
    return-void
.end method

.method private updateContainerColor(Landroid/view/View;)V
    .locals 2
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipInfo:Lcom/biznessapps/common/entities/CommonEntity;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/CommonEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setGlobalBackgroundColor(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/api/UiSettings;)V

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIP_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/CommonEntity;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipInfo:Lcom/biznessapps/common/entities/CommonEntity;

    .line 107
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipInfo:Lcom/biznessapps/common/entities/CommonEntity;

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
    .line 112
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipInfo:Lcom/biznessapps/common/entities/CommonEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipInfo:Lcom/biznessapps/common/entities/CommonEntity;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/CommonEntity;->getImageUrl()Ljava/lang/String;

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
    .line 95
    const-string v0, "tip.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 123
    sget v0, Lcom/biznessapps/layout/R$id;->amount_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->amountEditText:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    .line 124
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->amountEditText:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    invoke-static {}, Lcom/biznessapps/utils/CommonUtils;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 126
    sget v0, Lcom/biznessapps/layout/R$id;->tip_percent_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->percentEditText:Landroid/widget/EditText;

    .line 127
    sget v0, Lcom/biznessapps/layout/R$id;->people_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->peopleNumberEditText:Landroid/widget/EditText;

    .line 128
    sget v0, Lcom/biznessapps/layout/R$id;->amount_label:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->amountLabel:Landroid/widget/TextView;

    .line 129
    sget v0, Lcom/biznessapps/layout/R$id;->people_label:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->numberOfPeopleLabel:Landroid/widget/TextView;

    .line 130
    sget v0, Lcom/biznessapps/layout/R$id;->tip_percent_label:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipPersentLabel:Landroid/widget/TextView;

    .line 132
    sget v0, Lcom/biznessapps/layout/R$id;->total_tip_label:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->totalTipLabel:Landroid/widget/TextView;

    .line 133
    sget v0, Lcom/biznessapps/layout/R$id;->total_amount_label:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipAmountLabel:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/biznessapps/layout/R$id;->tip_each_person_label:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipEachPersonLabel:Landroid/widget/TextView;

    .line 135
    sget v0, Lcom/biznessapps/layout/R$id;->each_person_label:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->eachPersonLabel:Landroid/widget/TextView;

    .line 136
    sget v0, Lcom/biznessapps/layout/R$id;->total_tip_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->totalTipText:Landroid/widget/TextView;

    .line 137
    sget v0, Lcom/biznessapps/layout/R$id;->total_amount_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipAmountText:Landroid/widget/TextView;

    .line 138
    sget v0, Lcom/biznessapps/layout/R$id;->tip_each_person_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipEachPersonText:Landroid/widget/TextView;

    .line 139
    sget v0, Lcom/biznessapps/layout/R$id;->each_person_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->eachPersonText:Landroid/widget/TextView;

    .line 141
    sget v0, Lcom/biznessapps/layout/R$id;->calculate_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->calculateButton:Landroid/widget/Button;

    .line 142
    sget v0, Lcom/biznessapps/layout/R$id;->reset_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->resetButton:Landroid/widget/Button;

    .line 144
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->totalTipLabel:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->total_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipAmountLabel:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->total_amount:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipEachPersonLabel:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->tip_pay_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->eachPersonLabel:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->tip_each_person_pay:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->amountLabel:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->amount_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipPersentLabel:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->tip_percent_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->numberOfPeopleLabel:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->people_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->calculateButton:Landroid/widget/Button;

    sget v1, Lcom/biznessapps/layout/R$string;->calculate:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 152
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->resetButton:Landroid/widget/Button;

    sget v1, Lcom/biznessapps/layout/R$string;->reset:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 154
    sget v0, Lcom/biznessapps/layout/R$id;->tip_layout:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipLayout:Landroid/view/ViewGroup;

    .line 156
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->calculateButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->resetButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->amountLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->numberOfPeopleLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipPersentLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->totalTipLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipAmountLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipEachPersonLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->eachPersonLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->totalTipText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipAmountText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipEachPersonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->eachPersonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->calculateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 174
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->resetButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 176
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 177
    invoke-direct {p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->setLinesBgColor()V

    .line 178
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x78

    .line 72
    sget v2, Lcom/biznessapps/layout/R$layout;->tip_calculator_layout_new:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    .line 73
    invoke-virtual {p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->initSettingsData()V

    .line 74
    iget-object v2, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 75
    iget-object v2, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 76
    invoke-direct {p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->initListeners()V

    .line 77
    invoke-virtual {p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->loadData()V

    .line 78
    invoke-virtual {p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 79
    iget-object v2, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->tip_layout_container:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 80
    .local v1, "contentContainer":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 82
    iget-object v2, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->top:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 83
    .local v0, "bottomContainer":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 84
    invoke-virtual {p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->openCustomDialogs()V

    .line 85
    iget-object v2, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    return-object v2
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tabId:Ljava/lang/String;

    .line 91
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseTip(Ljava/lang/String;)Lcom/biznessapps/common/entities/CommonEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipInfo:Lcom/biznessapps/common/entities/CommonEntity;

    .line 101
    invoke-virtual {p0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIP_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->tipInfo:Lcom/biznessapps/common/entities/CommonEntity;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 4
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 183
    iget-object v2, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->tip_layout_container:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 184
    .local v0, "contentContainer":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->top:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 185
    .local v1, "topContainter":Landroid/widget/FrameLayout;
    invoke-direct {p0, v0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->updateContainerColor(Landroid/view/View;)V

    .line 186
    invoke-direct {p0, v1}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->updateContainerColor(Landroid/view/View;)V

    .line 187
    return-void
.end method
