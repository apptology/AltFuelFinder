// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Environment;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

// Referenced classes of package com.biznessapps.golfcourse:
//            OnTableResizeListener, ScoreBoardFragment, SmartTableView, OnScoreBoardCaptureListener

class stener
    implements OnTableResizeListener
{

    final ScoreBoardFragment this$0;
    final ProgressDialog val$dialog;
    final OnScoreBoardCaptureListener val$listener;
    final int val$tableScrollX;
    final int val$tableScrollY;

    public void onResized(int i, int j)
    {
        Uri uri;
        uri = null;
        ScoreBoardFragment.access$002(ScoreBoardFragment.this, Bitmap.createBitmap(i, j, android.graphics._fld88));
        Canvas canvas = new Canvas(ScoreBoardFragment.access$000(ScoreBoardFragment.this));
        canvas.drawColor(-1);
        canvas.clipRect(0, 0, i, j);
        ScoreBoardFragment.access$100(ScoreBoardFragment.this).layout(ScoreBoardFragment.access$100(ScoreBoardFragment.this).getLeft(), ScoreBoardFragment.access$100(ScoreBoardFragment.this).getTop(), ScoreBoardFragment.access$100(ScoreBoardFragment.this).getRight(), ScoreBoardFragment.access$100(ScoreBoardFragment.this).getBottom());
        ScoreBoardFragment.access$100(ScoreBoardFragment.this).draw(canvas);
        Object obj;
        obj = File.createTempFile("biz-", ".png", Environment.getExternalStorageDirectory());
        ScoreBoardFragment.access$000(ScoreBoardFragment.this).compress(android.graphics..PNG, 100, new FileOutputStream(((File) (obj))));
        obj = Uri.fromFile(((File) (obj)));
        uri = ((Uri) (obj));
_L2:
        ScoreBoardFragment.access$100(ScoreBoardFragment.this).restoreViewToScreen(new OnTableResizeListener() {

            final ScoreBoardFragment._cls1 this$1;

            public void onResized(int k, int l)
            {
                ScoreBoardFragment.access$100(this$0).setScrollPosition(tableScrollX, tableScrollY);
                dialog.dismiss();
            }

            
            {
                this$1 = ScoreBoardFragment._cls1.this;
                super();
            }
        });
        val$listener.onCaptured(uri);
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    stener()
    {
        this$0 = final_scoreboardfragment;
        val$tableScrollX = i;
        val$tableScrollY = j;
        val$dialog = progressdialog;
        val$listener = OnScoreBoardCaptureListener.this;
        super();
    }
}
