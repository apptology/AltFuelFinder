// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.localization;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.biznessapps.localization:
//            Constants

public class LanguageHelper
    implements Constants
{

    private static Map codesConverter;

    public LanguageHelper()
    {
    }

    public static String getUsedLanguageCode(Locale locale)
    {
        String s = locale.getLanguage();
        String s2 = locale.toString();
        s = (String)codesConverter.get(s);
        locale = s;
        if (s == null)
        {
            String s1 = (String)codesConverter.get(s2);
            locale = s1;
            if (s1 == null)
            {
                locale = "en";
            }
        }
        return locale;
    }

    static 
    {
        codesConverter = new HashMap();
        codesConverter.put("en", "en");
        codesConverter.put("ar", "ar");
        codesConverter.put("ca", "ca");
        codesConverter.put("cs", "cs");
        codesConverter.put("da", "da");
        codesConverter.put("fr", "fr");
        codesConverter.put("it", "it");
        codesConverter.put("nl", "nl");
        codesConverter.put("nb", "nb");
        codesConverter.put("no", "nb");
        codesConverter.put("nn", "nb");
        codesConverter.put("de", "de");
        codesConverter.put("es", "es");
        codesConverter.put("pl", "pl");
        codesConverter.put("pt_BR", "pt-BR");
        codesConverter.put("pt-PT", "pt-PT");
        codesConverter.put("pt_PT", "pt-PT");
        codesConverter.put("sv", "sv");
        codesConverter.put("ro", "ro");
        codesConverter.put("fi", "fi");
        codesConverter.put("tr", "tr");
        codesConverter.put("hu", "hu");
        codesConverter.put("id", "id");
        codesConverter.put("in", "id");
        codesConverter.put("el", "el");
        codesConverter.put("ru", "ru");
        codesConverter.put("he", "he");
        codesConverter.put("iw", "he");
        codesConverter.put("zh", "zh-Hans");
        codesConverter.put("zh_HANS", "zh-Hans");
        codesConverter.put("zh_HANS_CN", "zh-Hans");
        codesConverter.put("zh_CN", "zh-Hans");
        codesConverter.put("zh_HANS_HK", "zh-Hans");
        codesConverter.put("zh_HANS_MO", "zh-Hans");
        codesConverter.put("zh_HANS_SG", "zh-Hans");
        codesConverter.put("zh_HANT", "zh-Hant");
        codesConverter.put("zh_HANT_HK", "zh-Hant");
        codesConverter.put("zh_HK", "zh-Hant");
        codesConverter.put("zh_HANT_MO", "zh-Hant");
        codesConverter.put("zh_HANT_TW", "zh-Hant");
        codesConverter.put("zh_TW", "zh-Hant");
        codesConverter.put("ja", "ja");
        codesConverter.put("ko", "ko");
    }
}
