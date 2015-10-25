.class public Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;
.super Ljava/lang/Object;
.source "CalendarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/calendar/CalendarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalendarCell"
.end annotation


# instance fields
.field private backgroundId:I

.field private dateView:Landroid/widget/TextView;

.field private isBlocked:Z

.field private isEnabled:Z

.field private textColor:I

.field final synthetic this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;


# direct methods
.method public constructor <init>(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->dateView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->dateView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->isBlocked:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->isEnabled:Z

    return v0
.end method

.method public restoreBackground()V
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->backgroundId:I

    if-lez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->dateView:Landroid/widget/TextView;

    iget v1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->backgroundId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 256
    :cond_0
    return-void
.end method

.method public restoreTextColor()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->dateView:Landroid/widget/TextView;

    iget v1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    return-void
.end method

.method public setBackground(I)V
    .locals 1
    .param p1, "background"    # I

    .prologue
    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setBackground(IZ)V

    .line 244
    return-void
.end method

.method public setBackground(IZ)V
    .locals 1
    .param p1, "background"    # I
    .param p2, "saveOldState"    # Z

    .prologue
    .line 247
    if-eqz p2, :cond_0

    .line 248
    iput p1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->backgroundId:I

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->dateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 250
    return-void
.end method

.method public setBlocked(Z)V
    .locals 0
    .param p1, "isBlocked"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->isBlocked:Z

    .line 226
    return-void
.end method

.method public setDateView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "dateView"    # Landroid/widget/TextView;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->dateView:Landroid/widget/TextView;

    .line 210
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->isEnabled:Z

    .line 218
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->dateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setTextColor(IZ)V

    .line 230
    return-void
.end method

.method public setTextColor(IZ)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "saveOldState"    # Z

    .prologue
    .line 233
    if-eqz p2, :cond_0

    .line 234
    iput p1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->textColor:I

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->dateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    return-void
.end method
