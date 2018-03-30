.class Lcom/android/flymexx/HomeSettings$HomeAppPreference;
.super Landroid/support/v7/preference/Preference;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeAppPreference"
.end annotation


# instance fields
.field activityName:Landroid/content/ComponentName;

.field fragment:Lcom/android/flymexx/HomeSettings;

.field final grayscaleFilter:Landroid/graphics/ColorFilter;

.field index:I

.field isChecked:Z

.field isSystem:Z

.field final synthetic this$0:Lcom/android/flymexx/HomeSettings;

.field uninstallTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/flymexx/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/flymexx/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V
    .locals 4

    iput-object p1, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->this$0:Lcom/android/flymexx/HomeSettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0400d1

    invoke-virtual {p0, v2}, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->setLayoutResource(I)V

    invoke-virtual {p0, p5}, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p6}, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p9}, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->setEnabled(Z)V

    invoke-virtual {p0, p10}, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    iput-object p7, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->fragment:Lcom/android/flymexx/HomeSettings;

    iput p4, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->index:I

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/16 v3, 0x12

    aput v2, v1, v3

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-direct {p0, p8}, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->determineTargets(Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method private determineTargets(Landroid/content/pm/ActivityInfo;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    const-string/jumbo v8, "android.app.home.alternate"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v8, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->this$0:Lcom/android/flymexx/HomeSettings;

    invoke-static {v8}, Lcom/android/flymexx/HomeSettings;->-get1(Lcom/android/flymexx/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    iget-object v8, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->this$0:Lcom/android/flymexx/HomeSettings;

    invoke-static {v8}, Lcom/android/flymexx/HomeSettings;->-get1(Lcom/android/flymexx/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_0

    move v8, v6

    :goto_0
    iput-boolean v8, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->isSystem:Z

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    move v8, v7

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v8, "HomeSettings"

    const-string/jumbo v9, "Unable to compare/resolve alternate"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    :goto_1
    iput-boolean v6, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->isSystem:Z

    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;

    return-void

    :cond_2
    move v6, v7

    goto :goto_1
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v4, 0x7f1101b5

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iget-boolean v4, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->isChecked:Z

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->index:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    const v4, 0x7f1101b7

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->isSystem:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    const v4, 0x7f1101b4

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->this$0:Lcom/android/flymexx/HomeSettings;

    iget-object v4, v4, Lcom/android/flymexx/HomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->this$0:Lcom/android/flymexx/HomeSettings;

    iget-object v4, v4, Lcom/android/flymexx/HomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->isChecked:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->isChecked:Z

    invoke-virtual {p0}, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->notifyChanged()V

    :cond_0
    return-void
.end method
