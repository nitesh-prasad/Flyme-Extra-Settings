.class public Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;
.super Lorg/cyanogenmod/cmparts/widget/RingtonePreference;
.source "ProfileRingtonePreference.java"


# instance fields
.field private mRingtone:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/cmparts/widget/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method setRingtone(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;->mRingtone:Landroid/net/Uri;

    return-void
.end method
