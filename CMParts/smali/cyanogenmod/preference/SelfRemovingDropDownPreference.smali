.class public Lcyanogenmod/preference/SelfRemovingDropDownPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "SelfRemovingDropDownPreference.java"


# instance fields
.field private final mConstraints:Lcyanogenmod/preference/ConstraintsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcyanogenmod/preference/ConstraintsHelper;

    invoke-direct {v0, p1, p2, p0}, Lcyanogenmod/preference/ConstraintsHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcyanogenmod/preference/SelfRemovingDropDownPreference;->mConstraints:Lcyanogenmod/preference/ConstraintsHelper;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/preference/DropDownPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcyanogenmod/preference/SelfRemovingDropDownPreference;->mConstraints:Lcyanogenmod/preference/ConstraintsHelper;

    invoke-virtual {v0, p1}, Lcyanogenmod/preference/ConstraintsHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method
