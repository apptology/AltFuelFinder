// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.braintreepayments.cardform.view;

import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;
import com.braintreepayments.cardform.utils.CardType;

// Referenced classes of package com.braintreepayments.cardform.view:
//            FloatingLabelEditText, SpaceSpan

public class CardEditText extends FloatingLabelEditText
    implements TextWatcher
{
    public static interface OnCardTypeChangedListener
    {

        public abstract void onCardTypeChanged(CardType cardtype);
    }


    private CardType mCardType;
    private OnCardTypeChangedListener mOnCardTypeChangedListener;

    public CardEditText(Context context)
    {
        super(context);
        mCardType = CardType.UNKNOWN;
        init();
    }

    public CardEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mCardType = CardType.UNKNOWN;
        init();
    }

    public CardEditText(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mCardType = CardType.UNKNOWN;
        init();
    }

    private void addSpans(Editable editable, int ai[])
    {
        int j = editable.length();
        int k = ai.length;
        for (int i = 0; i < k; i++)
        {
            int l = ai[i];
            if (l <= j)
            {
                editable.setSpan(new SpaceSpan(), l - 1, l, 33);
            }
        }

    }

    private void init()
    {
        setInputType(2);
        setCardIcon(com.braintreepayments.cardform.R.drawable.bt_card_highlighted);
        addTextChangedListener(this);
    }

    private void setCardIcon(int i)
    {
        if (mRightToLeftLanguage)
        {
            setCompoundDrawablesWithIntrinsicBounds(i, 0, 0, 0);
            return;
        } else
        {
            setCompoundDrawablesWithIntrinsicBounds(0, 0, i, 0);
            return;
        }
    }

    private void updateCardType()
    {
        CardType cardtype = CardType.forCardNumber(getText().toString());
        if (mCardType != cardtype)
        {
            mCardType = cardtype;
            setFilters(new InputFilter[] {
                new android.text.InputFilter.LengthFilter(mCardType.getMaxCardLength())
            });
            invalidate();
            if (mOnCardTypeChangedListener != null)
            {
                mOnCardTypeChangedListener.onCardTypeChanged(mCardType);
            }
        }
    }

    public void afterTextChanged(Editable editable)
    {
        Object aobj[] = editable.getSpans(0, editable.length(), com/braintreepayments/cardform/view/SpaceSpan);
        int j = aobj.length;
        for (int i = 0; i < j; i++)
        {
            editable.removeSpan(aobj[i]);
        }

        updateCardType();
        setCardIcon(mCardType.getFrontResource());
        if (!mRightToLeftLanguage)
        {
            addSpans(editable, mCardType.getSpaceIndices());
        }
        if (mCardType.getMaxCardLength() == getSelectionStart())
        {
            validate();
            if (isValid())
            {
                focusNextView();
            }
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public CardType getCardType()
    {
        return mCardType;
    }

    public boolean isValid()
    {
        return mCardType.validate(getText().toString());
    }

    public void setOnCardTypeChangedListener(OnCardTypeChangedListener oncardtypechangedlistener)
    {
        mOnCardTypeChangedListener = oncardtypechangedlistener;
    }
}
