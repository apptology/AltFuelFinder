.class public Lcom/biznessapps/notepad/NotepadEditFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "NotepadEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private currentNote:Lcom/biznessapps/notepad/NotepadEntity;

.field private currentNotePosition:I

.field private deleteBtn:Landroid/widget/ImageView;

.field private newNoteBtn:Landroid/widget/ImageView;

.field private noteEditText:Landroid/widget/EditText;

.field private notelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/notepad/NotepadEntity;",
            ">;"
        }
    .end annotation
.end field

.field private scrollView:Landroid/widget/ScrollView;

.field private shouldNotBeSaved:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->currentNotePosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/notepad/NotepadEditFragment;)Lcom/biznessapps/notepad/NotepadEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/notepad/NotepadEditFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/notepad/NotepadEntity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/biznessapps/notepad/NotepadEditFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/notepad/NotepadEditFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->shouldNotBeSaved:Z

    return p1
.end method

.method private initListeners()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->newNoteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method private loadNoteData(Lcom/biznessapps/notepad/NotepadEntity;)V
    .locals 2
    .param p1, "item"    # Lcom/biznessapps/notepad/NotepadEntity;

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->noteEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/biznessapps/notepad/NotepadEntity;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    return-void
.end method

.method private saveCurrentNote()V
    .locals 7

    .prologue
    .line 136
    iget-object v5, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/notepad/NotepadEntity;

    if-eqz v5, :cond_1

    .line 137
    iget-object v5, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->notelist:Ljava/util/List;

    iget v6, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->currentNotePosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 138
    iget-object v5, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/notepad/NotepadEntity;

    iget-object v6, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->noteEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/biznessapps/notepad/NotepadEntity;->setContent(Ljava/lang/String;)V

    .line 139
    iget-object v5, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->notelist:Ljava/util/List;

    iget v6, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->currentNotePosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/notepad/NotepadEntity;

    iget-object v6, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->noteEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/biznessapps/notepad/NotepadEntity;->setContent(Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v1, "saveNoteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/notepad/NotepadEntity;>;"
    iget-object v5, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/notepad/NotepadEntity;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/biznessapps/storage/StorageKeeper;->addNotes(Ljava/util/List;)V

    .line 163
    .end local v1    # "saveNoteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/notepad/NotepadEntity;>;"
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v5, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->noteEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "noteStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    new-instance v3, Lcom/biznessapps/notepad/NotepadEntity;

    invoke-direct {v3}, Lcom/biznessapps/notepad/NotepadEntity;-><init>()V

    .line 149
    .local v3, "tempNote":Lcom/biznessapps/notepad/NotepadEntity;
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 150
    .local v4, "title":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    invoke-virtual {v3, v4}, Lcom/biznessapps/notepad/NotepadEntity;->setTitle(Ljava/lang/String;)V

    .line 155
    :goto_1
    invoke-virtual {v3, v0}, Lcom/biznessapps/notepad/NotepadEntity;->setContent(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/biznessapps/notepad/NotepadEntity;->setNoteDate(J)V

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v2, "saveNoteList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/notepad/NotepadEntity;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/biznessapps/storage/StorageKeeper;->addNotes(Ljava/util/List;)V

    goto :goto_0

    .line 153
    .end local v2    # "saveNoteList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/notepad/NotepadEntity;>;"
    :cond_2
    invoke-virtual {v3, v0}, Lcom/biznessapps/notepad/NotepadEntity;->setTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setNewNoteData()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/notepad/NotepadEntity;

    .line 115
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->noteEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method private showDeleteDialog()V
    .locals 3

    .prologue
    .line 166
    new-instance v1, Lcom/biznessapps/notepad/NotepadEditFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/notepad/NotepadEditFragment$1;-><init>(Lcom/biznessapps/notepad/NotepadEditFragment;)V

    .line 178
    .local v1, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/notepad/NotepadEditFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/biznessapps/layout/R$string;->delete_note:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 180
    sget v2, Lcom/biznessapps/layout/R$string;->yes:I

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    sget v2, Lcom/biznessapps/layout/R$string;->no:I

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 183
    return-void
.end method


# virtual methods
.method protected initAds()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/biznessapps/notepad/NotepadEditFragment;->initAdsWithAlpha()V

    .line 84
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 63
    sget v2, Lcom/biznessapps/layout/R$id;->note_delete_btn:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->deleteBtn:Landroid/widget/ImageView;

    .line 64
    sget v2, Lcom/biznessapps/layout/R$id;->edit_note_add_note:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->newNoteBtn:Landroid/widget/ImageView;

    .line 65
    iget-object v2, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->newNoteBtn:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v2, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 67
    sget v2, Lcom/biznessapps/layout/R$id;->scrollView:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->scrollView:Landroid/widget/ScrollView;

    .line 68
    iget-object v2, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->scrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 70
    sget v2, Lcom/biznessapps/layout/R$id;->edit_text:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->noteEditText:Landroid/widget/EditText;

    .line 71
    sget v2, Lcom/biznessapps/layout/R$id;->data_container:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 72
    .local v1, "dataContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 73
    iget-object v2, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getGlobalBgColor()I

    move-result v2

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->getColorBrightness(I)F

    move-result v0

    .line 74
    .local v0, "brightness":F
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->noteEditText:Landroid/widget/EditText;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->noteEditText:Landroid/widget/EditText;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0
.end method

.method public loadData()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTEPAD_NOTE_LIST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->notelist:Ljava/util/List;

    .line 94
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->notelist:Ljava/util/List;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->notelist:Ljava/util/List;

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/notepad/NotepadEditFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "EDIT_NOTE_EXTRA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/notepad/NotepadEntity;

    iput-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/notepad/NotepadEntity;

    .line 98
    invoke-virtual {p0}, Lcom/biznessapps/notepad/NotepadEditFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "LIST_POSITION_EXTRA"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->currentNotePosition:I

    .line 99
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/notepad/NotepadEntity;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/notepad/NotepadEntity;

    invoke-direct {p0, v0}, Lcom/biznessapps/notepad/NotepadEditFragment;->loadNoteData(Lcom/biznessapps/notepad/NotepadEntity;)V

    .line 104
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->deleteBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/notepad/NotepadEntity;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    return-void

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/notepad/NotepadEditFragment;->setNewNoteData()V

    goto :goto_0

    .line 104
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 120
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->deleteBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/notepad/NotepadEntity;

    if-eqz v0, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/biznessapps/notepad/NotepadEditFragment;->showDeleteDialog()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iput-boolean v1, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->shouldNotBeSaved:Z

    .line 125
    invoke-virtual {p0}, Lcom/biznessapps/notepad/NotepadEditFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->newNoteBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/biznessapps/notepad/NotepadEditFragment;->saveCurrentNote()V

    .line 129
    iput-boolean v1, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->shouldNotBeSaved:Z

    .line 130
    invoke-virtual {p0}, Lcom/biznessapps/notepad/NotepadEditFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    sget v0, Lcom/biznessapps/layout/R$layout;->notepad_edit_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->root:Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {p0}, Lcom/biznessapps/notepad/NotepadEditFragment;->initSettingsData()V

    .line 52
    invoke-virtual {p0}, Lcom/biznessapps/notepad/NotepadEditFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->tabId:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/notepad/NotepadEditFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 54
    invoke-direct {p0}, Lcom/biznessapps/notepad/NotepadEditFragment;->initListeners()V

    .line 55
    invoke-virtual {p0}, Lcom/biznessapps/notepad/NotepadEditFragment;->loadData()V

    .line 56
    invoke-virtual {p0}, Lcom/biznessapps/notepad/NotepadEditFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 57
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onPause()V

    .line 188
    iget-boolean v0, p0, Lcom/biznessapps/notepad/NotepadEditFragment;->shouldNotBeSaved:Z

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/biznessapps/notepad/NotepadEditFragment;->saveCurrentNote()V

    .line 191
    :cond_0
    return-void
.end method
