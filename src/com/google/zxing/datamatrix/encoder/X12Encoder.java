// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.datamatrix.encoder;


// Referenced classes of package com.google.zxing.datamatrix.encoder:
//            C40Encoder, EncoderContext, HighLevelEncoder, SymbolInfo

final class X12Encoder extends C40Encoder
{

    X12Encoder()
    {
    }

    public void encode(EncoderContext encodercontext)
    {
        StringBuilder stringbuilder = new StringBuilder();
        do
        {
            if (!encodercontext.hasMoreCharacters())
            {
                break;
            }
            char c = encodercontext.getCurrentChar();
            encodercontext.pos = encodercontext.pos + 1;
            encodeChar(c, stringbuilder);
            if (stringbuilder.length() % 3 != 0)
            {
                continue;
            }
            writeNextTriplet(encodercontext, stringbuilder);
            int i = HighLevelEncoder.lookAheadTest(encodercontext.getMessage(), encodercontext.pos, getEncodingMode());
            if (i == getEncodingMode())
            {
                continue;
            }
            encodercontext.signalEncoderChange(i);
            break;
        } while (true);
        handleEOD(encodercontext, stringbuilder);
    }

    int encodeChar(char c, StringBuilder stringbuilder)
    {
        if (c == '\r')
        {
            stringbuilder.append('\0');
            return 1;
        }
        if (c == '*')
        {
            stringbuilder.append('\001');
            return 1;
        }
        if (c == '>')
        {
            stringbuilder.append('\002');
            return 1;
        }
        if (c == ' ')
        {
            stringbuilder.append('\003');
            return 1;
        }
        if (c >= '0' && c <= '9')
        {
            stringbuilder.append((char)((c - 48) + 4));
            return 1;
        }
        if (c >= 'A' && c <= 'Z')
        {
            stringbuilder.append((char)((c - 65) + 14));
            return 1;
        } else
        {
            HighLevelEncoder.illegalCharacter(c);
            return 1;
        }
    }

    public int getEncodingMode()
    {
        return 3;
    }

    void handleEOD(EncoderContext encodercontext, StringBuilder stringbuilder)
    {
        encodercontext.updateSymbolInfo();
        int i = encodercontext.getSymbolInfo().getDataCapacity() - encodercontext.getCodewordCount();
        int j = stringbuilder.length();
        encodercontext.pos = encodercontext.pos - j;
        if (encodercontext.getRemainingCharacters() > 1 || i > 1 || encodercontext.getRemainingCharacters() != i)
        {
            encodercontext.writeCodeword('\376');
        }
        if (encodercontext.getNewEncoding() < 0)
        {
            encodercontext.signalEncoderChange(0);
        }
    }
}
