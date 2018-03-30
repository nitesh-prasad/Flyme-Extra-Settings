.class public Lorg/cyanogenmod/cmparts/PrivacySettings;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "PrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/PrivacySettings$1;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER:Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable$SummaryProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cyanogenmod/cmparts/PrivacySettings$1;

    invoke-direct {v0}, Lorg/cyanogenmod/cmparts/PrivacySettings$1;-><init>()V

    sput-object v0, Lorg/cyanogenmod/cmparts/PrivacySettings;->SUMMARY_PROVIDER:Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable$SummaryProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/PrivacySettings;->addPreferencesFromResource(I)V

    return-void
.end method
