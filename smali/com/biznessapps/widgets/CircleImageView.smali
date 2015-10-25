.class public Lcom/biznessapps/widgets/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCircleBitmap:Landroid/graphics/Bitmap;

.field private mFitByWidth:Z

.field private mOrgHeight:I

.field private mOrgWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintEraser:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "CircleImageView"

    sput-object v0, Lcom/biznessapps/widgets/CircleImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/biznessapps/widgets/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/biznessapps/widgets/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/biznessapps/widgets/CircleImageView;->initUI()V

    .line 48
    invoke-direct {p0, p2}, Lcom/biznessapps/widgets/CircleImageView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private buildCircleBitmap()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const v12, 0x3f333333    # 0.7f

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 159
    invoke-direct {p0, v10}, Lcom/biznessapps/widgets/CircleImageView;->loadBackgroundBitmap(Z)V

    .line 161
    iput-object v13, p0, Lcom/biznessapps/widgets/CircleImageView;->mCircleBitmap:Landroid/graphics/Bitmap;

    .line 163
    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 164
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->getMeasuredWidth()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->getMeasuredHeight()I

    move-result v7

    if-eqz v7, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0, v2, v7, v8}, Lcom/biznessapps/widgets/CircleImageView;->convertToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 172
    .local v5, "sourceBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->getMeasuredHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/biznessapps/widgets/CircleImageView;->mCircleBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    iget-object v7, p0, Lcom/biznessapps/widgets/CircleImageView;->mCircleBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    .line 191
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/biznessapps/widgets/CircleImageView;->mCircleBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 193
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 194
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 195
    .local v6, "srcRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/biznessapps/widgets/CircleImageView;->mCircleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/biznessapps/widgets/CircleImageView;->mCircleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v1, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 197
    .local v1, "destRect":Landroid/graphics/Rect;
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 198
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 199
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 200
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 201
    const-string v7, "#BAB399"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget-object v7, p0, Lcom/biznessapps/widgets/CircleImageView;->mCircleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v12

    iget-object v8, p0, Lcom/biznessapps/widgets/CircleImageView;->mCircleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v12

    iget-object v9, p0, Lcom/biznessapps/widgets/CircleImageView;->mCircleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    const v10, 0x3dcccccd    # 0.1f

    add-float/2addr v9, v10

    invoke-virtual {v0, v7, v8, v9, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 203
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 204
    invoke-virtual {v0, v5, v6, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 206
    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->invalidate()V

    goto/16 :goto_0

    .line 178
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "destRect":Landroid/graphics/Rect;
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v6    # "srcRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 182
    sget-object v7, Lcom/biznessapps/widgets/CircleImageView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-object v13, p0, Lcom/biznessapps/widgets/CircleImageView;->mCircleBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/biznessapps/layout/R$styleable;->CircleImageView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/biznessapps/widgets/CircleImageView;->mFitByWidth:Z

    .line 118
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    return-void
.end method

.method private initUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/CircleImageView;->mPaint:Landroid/graphics/Paint;

    .line 109
    iget-object v0, p0, Lcom/biznessapps/widgets/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v0, p0, Lcom/biznessapps/widgets/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 111
    iget-object v0, p0, Lcom/biznessapps/widgets/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 112
    return-void
.end method

.method private loadBackgroundBitmap(Z)V
    .locals 5
    .param p1, "reload"    # Z

    .prologue
    .line 141
    iget-object v1, p0, Lcom/biznessapps/widgets/CircleImageView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/widgets/CircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/biznessapps/widgets/CircleImageView;->convertToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/widgets/CircleImageView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 143
    iget-object v1, p0, Lcom/biznessapps/widgets/CircleImageView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/biznessapps/widgets/CircleImageView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/widgets/CircleImageView;->mPaintEraser:Landroid/graphics/Paint;

    .line 150
    iget-object v1, p0, Lcom/biznessapps/widgets/CircleImageView;->mPaintEraser:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 151
    iget-object v1, p0, Lcom/biznessapps/widgets/CircleImageView;->mPaintEraser:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v1, p0, Lcom/biznessapps/widgets/CircleImageView;->mPaintEraser:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    iget-object v1, p0, Lcom/biznessapps/widgets/CircleImageView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/biznessapps/widgets/CircleImageView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/biznessapps/widgets/CircleImageView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/biznessapps/widgets/CircleImageView;->mPaintEraser:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public convertToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "widthPixels"    # I
    .param p3, "heightPixels"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 122
    if-nez p1, :cond_0

    move-object v1, v2

    .line 136
    :goto_0
    return-object v1

    .line 125
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    move-object v1, v2

    .line 126
    goto :goto_0

    .line 128
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 129
    .local v1, "mutableBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    move-object v1, v2

    .line 130
    goto :goto_0

    .line 132
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v4, v4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 134
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 237
    if-nez p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/widgets/CircleImageView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/biznessapps/widgets/CircleImageView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/biznessapps/widgets/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/widgets/CircleImageView;->mCircleBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/biznessapps/widgets/CircleImageView;->mCircleBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/biznessapps/widgets/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 211
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 213
    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->getMeasuredWidth()I

    move-result v1

    .line 214
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->getMeasuredHeight()I

    move-result v0

    .line 216
    .local v0, "height":I
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-boolean v2, p0, Lcom/biznessapps/widgets/CircleImageView;->mFitByWidth:Z

    if-eqz v2, :cond_3

    .line 221
    move v0, v1

    .line 226
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/biznessapps/widgets/CircleImageView;->setMeasuredDimension(II)V

    .line 227
    iget v2, p0, Lcom/biznessapps/widgets/CircleImageView;->mOrgWidth:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Lcom/biznessapps/widgets/CircleImageView;->mOrgHeight:I

    if-eq v0, v2, :cond_0

    .line 228
    :cond_2
    iput v1, p0, Lcom/biznessapps/widgets/CircleImageView;->mOrgWidth:I

    .line 229
    iput v0, p0, Lcom/biznessapps/widgets/CircleImageView;->mOrgHeight:I

    .line 231
    invoke-direct {p0}, Lcom/biznessapps/widgets/CircleImageView;->buildCircleBitmap()V

    goto :goto_0

    .line 223
    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 93
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/biznessapps/widgets/CircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/biznessapps/widgets/CircleImageView;->loadBackgroundBitmap(Z)V

    .line 95
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 101
    invoke-virtual {p0}, Lcom/biznessapps/widgets/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/widgets/CircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/biznessapps/widgets/CircleImageView;->loadBackgroundBitmap(Z)V

    .line 104
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 105
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/biznessapps/widgets/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    invoke-direct {p0}, Lcom/biznessapps/widgets/CircleImageView;->buildCircleBitmap()V

    .line 61
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-direct {p0}, Lcom/biznessapps/widgets/CircleImageView;->buildCircleBitmap()V

    .line 68
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    invoke-direct {p0}, Lcom/biznessapps/widgets/CircleImageView;->buildCircleBitmap()V

    .line 75
    return-void
.end method
