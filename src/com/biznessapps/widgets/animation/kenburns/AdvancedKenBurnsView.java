// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.kenburns;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View;
import com.biznessapps.api.AppCore;
import com.biznessapps.images.NewImageManager;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.biznessapps.widgets.animation.kenburns:
//            KenBurnsView, MyTransitionGenerator, KenBurnsEntity, AnimationDirection

public class AdvancedKenBurnsView extends KenBurnsView
{
    private class NextImageTask extends TimerTask
    {

        final AdvancedKenBurnsView this$0;

        public void run()
        {
            kenBurnsView.post(new Runnable() {

                final NextImageTask this$1;

                public void run()
                {
                    showNextImage();
                }

            
            {
                this$1 = NextImageTask.this;
                super();
            }
            });
        }

        private NextImageTask()
        {
            this$0 = AdvancedKenBurnsView.this;
            super();
        }

    }


    private static final int DEFAULT_DURATION = 10000;
    private int currentPosition;
    private ImageFetcher imageFetcher;
    private KenBurnsEntity items[];
    private AdvancedKenBurnsView kenBurnsView;
    private Timer timer;

    public AdvancedKenBurnsView(Context context)
    {
        super(context);
        kenBurnsView = this;
        init();
    }

    public AdvancedKenBurnsView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        kenBurnsView = this;
        init();
    }

    public AdvancedKenBurnsView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        kenBurnsView = this;
        init();
    }

    private void init()
    {
        MyTransitionGenerator mytransitiongenerator = new MyTransitionGenerator();
        mytransitiongenerator.setTransitionDuration(10000L);
        setTransGen(mytransitiongenerator);
    }

    public int getCurrentPosition()
    {
        return currentPosition;
    }

    public void setItems(List list, ImageFetcher imagefetcher)
    {
        int j = list.size();
        items = new KenBurnsEntity[j];
        int i = 0;
        while (i < j) 
        {
            KenBurnsEntity akenburnsentity[] = items;
            String s = (String)list.get(i);
            AnimationDirection animationdirection;
            if (i % 2 == 0)
            {
                animationdirection = AnimationDirection.RIGHT_TO_LEFT;
            } else
            {
                animationdirection = AnimationDirection.LEFT_TO_RIGHT;
            }
            akenburnsentity[i] = new KenBurnsEntity(s, animationdirection);
            i++;
        }
        imageFetcher = imagefetcher;
        showImage(0);
    }

    public void setItems(KenBurnsEntity akenburnsentity[], ImageFetcher imagefetcher)
    {
        items = akenburnsentity;
        imageFetcher = imagefetcher;
        showImage(0);
    }

    public void showImage(final int newIndex)
    {
        newIndex %= items.length;
        currentPosition = newIndex;
        com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback imageloadcallback = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback() {

            final AdvancedKenBurnsView this$0;
            final int val$newIndex;

            public void onImageLoaded(String s, Bitmap bitmap, View view)
            {
                setImageDrawable(new BitmapDrawable(bitmap), items[newIndex].getDirection());
            }

            
            {
                this$0 = AdvancedKenBurnsView.this;
                newIndex = i;
                super();
            }
        };
        com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        imageloadparams.setUrl(NewImageManager.addWidthParam(items[newIndex].getUrl(), AppCore.getInstance().getDeviceWidth()));
        imageloadparams.setView(this);
        imageloadparams.setImageType(3);
        imageloadparams.setLoadCallback(imageloadcallback);
        imageFetcher.loadImage(imageloadparams);
    }

    public void showNextImage()
    {
        showImage(currentPosition + 1);
    }

    public void startAutoFlipTimer()
    {
        timer = new Timer();
        NextImageTask nextimagetask = new NextImageTask();
        timer.schedule(nextimagetask, 10000L, 10000L);
    }

    public void stopAutoFlipTimer()
    {
        if (timer != null)
        {
            timer.cancel();
        }
    }


}
