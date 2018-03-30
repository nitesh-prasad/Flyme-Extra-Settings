.class public Lorg/cyanogenmod/cmparts/profiles/NamePreference;
.super Landroid/support/v7/preference/Preference;
.source "NamePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mName:Ljava/lang/String;

.field private mNameView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/profiles/NamePreference;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->mNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/cmparts/profiles/NamePreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cyanogenmod/cmparts/profiles/NamePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->mName:Ljava/lang/String;

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->setLayoutResource(I)V

    return-void
.end method

.method private updatePreferenceViews()V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->mNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x7f0c00c5

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f0c002e

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->mNameView:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->updatePreferenceViews()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/16 v2, 0x22

    const/16 v3, 0x10

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->mName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08027f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f080280

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lorg/cyanogenmod/cmparts/profiles/NamePreference$1;

    invoke-direct {v2, p0, v1}, Lorg/cyanogenmod/cmparts/profiles/NamePreference$1;-><init>(Lorg/cyanogenmod/cmparts/profiles/NamePreference;Landroid/widget/EditText;)V

    const v3, 0x104000a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    const v2, 0x102000b

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x10301b3

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->callChangeListener(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->mName:Ljava/lang/String;

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->updatePreferenceViews()V

    return-void
.end method
