// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.progressbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.biznessapps.utils.CommonUtils;

// Referenced classes of package com.biznessapps.widgets.progressbar:
//            ProgressButtonBar, ProgressButtonPendingAnimationView

public class ProgressButton extends FrameLayout
{
    public static final class States extends Enum
    {

        private static final States $VALUES[];
        public static final States PAUSED;
        public static final States PENDING;
        public static final States PLAYING;
        public static final States WAITING;

        public static States valueOf(String s)
        {
            return (States)Enum.valueOf(com/biznessapps/widgets/progressbar/ProgressButton$States, s);
        }

        public static States[] values()
        {
            return (States[])$VALUES.clone();
        }

        static 
        {
            WAITING = new States("WAITING", 0);
            PENDING = new States("PENDING", 1);
            PLAYING = new States("PLAYING", 2);
            PAUSED = new States("PAUSED", 3);
            $VALUES = (new States[] {
                WAITING, PENDING, PLAYING, PAUSED
            });
        }

        private States(String s, int i)
        {
            super(s, i);
        }
    }


    private int defaultColor;
    private ImageView imagePause;
    private ImageView imagePlay;
    private ProgressButtonPendingAnimationView pendingView;
    private ProgressButtonBar progressBar;

    public ProgressButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        defaultColor = 0xa0ffffff;
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(com.biznessapps.layout.R.layout.progress_button_view, this, true);
        imagePlay = (ImageView)getChildAt(0);
        imagePause = (ImageView)getChildAt(1);
        progressBar = (ProgressButtonBar)getChildAt(2);
        pendingView = (ProgressButtonPendingAnimationView)getChildAt(3);
        setState(States.WAITING);
        setProgressColor(defaultColor);
    }

    public void setImageColor(int i)
    {
        CommonUtils.overrideImageColor(i, imagePlay.getDrawable());
        CommonUtils.overrideImageColor(i, imagePause.getDrawable());
    }

    public void setProgress(float f)
    {
        progressBar.setProgress(f);
    }

    public void setProgressColor(int i)
    {
        progressBar.setColor(i);
        pendingView.setColor(i);
    }

    public void setState(States states)
    {
        static class _cls1
        {

            static final int $SwitchMap$com$biznessapps$widgets$progressbar$ProgressButton$States[];

            static 
            {
                $SwitchMap$com$biznessapps$widgets$progressbar$ProgressButton$States = new int[States.values().length];
                try
                {
                    $SwitchMap$com$biznessapps$widgets$progressbar$ProgressButton$States[States.WAITING.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$biznessapps$widgets$progressbar$ProgressButton$States[States.PENDING.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$biznessapps$widgets$progressbar$ProgressButton$States[States.PLAYING.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$biznessapps$widgets$progressbar$ProgressButton$States[States.PAUSED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls1..SwitchMap.com.biznessapps.widgets.progressbar.ProgressButton.States[states.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            imagePause.setVisibility(4);
            imagePlay.setVisibility(0);
            progressBar.setVisibility(4);
            pendingView.setVisibility(4);
            return;

        case 2: // '\002'
            imagePause.setVisibility(4);
            imagePlay.setVisibility(0);
            progressBar.setVisibility(4);
            pendingView.setVisibility(0);
            return;

        case 3: // '\003'
            imagePause.setVisibility(0);
            imagePlay.setVisibility(4);
            progressBar.setVisibility(0);
            pendingView.setVisibility(4);
            return;

        case 4: // '\004'
            imagePause.setVisibility(4);
            break;
        }
        imagePlay.setVisibility(0);
        progressBar.setVisibility(0);
        pendingView.setVisibility(4);
    }
}
