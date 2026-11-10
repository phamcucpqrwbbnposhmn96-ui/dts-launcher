.class public final Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference$mSeekBarTouchListener$1;
.super Ljava/lang/Object;
.source "MaterialSeekbarPreference.kt"

# interfaces
.implements Lcom/google/android/material/slider/Slider$OnSliderTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "me/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference$mSeekBarTouchListener$1",
        "Lcom/google/android/material/slider/Slider$OnSliderTouchListener;",
        "onStartTrackingTouch",
        "",
        "seekBar",
        "Lcom/google/android/material/slider/Slider;",
        "onStopTrackingTouch",
        "JamesDSP-v1.6.6-43_rootlessFdroidRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference;


# direct methods
.method constructor <init>(Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference;)V
    .locals 0

    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference$mSeekBarTouchListener$1;->this$0:Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartTrackingTouch(Lcom/google/android/material/slider/Slider;)V
    .locals 2

    # KSN: 开滑时短震一下(haptic) — 取 preference 的 context, 调 KsnDtsSys.haptic
    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference$mSeekBarTouchListener$1;->this$0:Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksn/audiomax/core/KsnDtsSys;->haptic(Landroid/content/Context;)V

    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference$mSeekBarTouchListener$1;->this$0:Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference;->setMTrackingTouch(Z)V

    return-void
.end method

.method public bridge synthetic onStartTrackingTouch(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/google/android/material/slider/Slider;

    invoke-virtual {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference$mSeekBarTouchListener$1;->onStartTrackingTouch(Lcom/google/android/material/slider/Slider;)V

    return-void
.end method

.method public onStopTrackingTouch(Lcom/google/android/material/slider/Slider;)V
    .locals 3

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference$mSeekBarTouchListener$1;->this$0:Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference;->setMTrackingTouch(Z)V

    .line 71
    invoke-virtual {p1}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v0

    iget-object v2, p0, Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference$mSeekBarTouchListener$1;->this$0:Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference;

    invoke-virtual {v2}, Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference;->getMSeekBarValue()F

    move-result v2

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    .line 72
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference$mSeekBarTouchListener$1;->this$0:Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference;

    invoke-virtual {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference;->syncValueInternal(Lcom/google/android/material/slider/Slider;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onStopTrackingTouch(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/google/android/material/slider/Slider;

    invoke-virtual {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/preference/MaterialSeekbarPreference$mSeekBarTouchListener$1;->onStopTrackingTouch(Lcom/google/android/material/slider/Slider;)V

    return-void
.end method
