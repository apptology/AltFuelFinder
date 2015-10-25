// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.camera.scanning;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.google.zxing.ResultPoint;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

// Referenced classes of package com.biznessapps.camera.scanning:
//            CameraManager

public final class ViewfinderView extends View
{

    private static final long ANIMATION_DELAY = 100L;
    private static final int OPAQUE = 255;
    private static final int SCANNER_ALPHA[] = {
        0, 64, 128, 192, 255, 192, 128, 64
    };
    private final int frameColor;
    private final int laserColor;
    private Collection lastPossibleResultPoints;
    private final int maskColor;
    private final Paint paint = new Paint();
    private Collection possibleResultPoints;
    private Bitmap resultBitmap;
    private final int resultColor;
    private final int resultPointColor;
    private int scannerAlpha;

    public ViewfinderView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        context = getResources();
        maskColor = context.getColor(com.biznessapps.layout.R.color.viewfinder_mask);
        resultColor = context.getColor(com.biznessapps.layout.R.color.result_view);
        frameColor = context.getColor(com.biznessapps.layout.R.color.viewfinder_frame);
        laserColor = context.getColor(com.biznessapps.layout.R.color.viewfinder_laser);
        resultPointColor = context.getColor(com.biznessapps.layout.R.color.possible_result_points);
        scannerAlpha = 0;
        possibleResultPoints = new HashSet(5);
    }

    public void addPossibleResultPoint(ResultPoint resultpoint)
    {
        possibleResultPoints.add(resultpoint);
    }

    public void drawResultBitmap(Bitmap bitmap)
    {
        resultBitmap = bitmap;
        invalidate();
    }

    public void drawViewfinder()
    {
        resultBitmap = null;
        invalidate();
    }

    public void onDraw(Canvas canvas)
    {
        Rect rect = CameraManager.get().getFramingRect();
        if (rect == null)
        {
            return;
        }
        int j = canvas.getWidth();
        int k = canvas.getHeight();
        Object obj = paint;
        int i;
        if (resultBitmap != null)
        {
            i = resultColor;
        } else
        {
            i = maskColor;
        }
        ((Paint) (obj)).setColor(i);
        canvas.drawRect(0.0F, 0.0F, j, rect.top, paint);
        canvas.drawRect(0.0F, rect.top, rect.left, rect.bottom + 1, paint);
        canvas.drawRect(rect.right + 1, rect.top, j, rect.bottom + 1, paint);
        canvas.drawRect(0.0F, rect.bottom + 1, j, k, paint);
        if (resultBitmap != null)
        {
            paint.setAlpha(255);
            canvas.drawBitmap(resultBitmap, rect.left, rect.top, paint);
            return;
        }
        paint.setColor(frameColor);
        canvas.drawRect(rect.left, rect.top, rect.right + 1, rect.top + 2, paint);
        canvas.drawRect(rect.left, rect.top + 2, rect.left + 2, rect.bottom - 1, paint);
        canvas.drawRect(rect.right - 1, rect.top, rect.right + 1, rect.bottom - 1, paint);
        canvas.drawRect(rect.left, rect.bottom - 1, rect.right + 1, rect.bottom + 1, paint);
        paint.setColor(laserColor);
        paint.setAlpha(SCANNER_ALPHA[scannerAlpha]);
        scannerAlpha = (scannerAlpha + 1) % SCANNER_ALPHA.length;
        i = rect.height() / 2 + rect.top;
        canvas.drawRect(rect.left + 2, i - 1, rect.right - 1, i + 2, paint);
        Object obj1 = possibleResultPoints;
        obj = lastPossibleResultPoints;
        if (((Collection) (obj1)).isEmpty())
        {
            lastPossibleResultPoints = null;
        } else
        {
            possibleResultPoints = new HashSet(5);
            lastPossibleResultPoints = ((Collection) (obj1));
            paint.setAlpha(255);
            paint.setColor(resultPointColor);
            obj1 = ((Collection) (obj1)).iterator();
            while (((Iterator) (obj1)).hasNext()) 
            {
                ResultPoint resultpoint = (ResultPoint)((Iterator) (obj1)).next();
                canvas.drawCircle((float)rect.left + resultpoint.getX(), (float)rect.top + resultpoint.getY(), 6F, paint);
            }
        }
        if (obj != null)
        {
            paint.setAlpha(127);
            paint.setColor(resultPointColor);
            for (obj = ((Collection) (obj)).iterator(); ((Iterator) (obj)).hasNext(); canvas.drawCircle((float)rect.left + ((ResultPoint) (obj1)).getX(), (float)rect.top + ((ResultPoint) (obj1)).getY(), 3F, paint))
            {
                obj1 = (ResultPoint)((Iterator) (obj)).next();
            }

        }
        postInvalidateDelayed(100L, rect.left, rect.top, rect.right, rect.bottom);
    }

}
