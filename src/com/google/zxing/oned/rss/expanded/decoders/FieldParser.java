// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;

final class FieldParser
{

    private static final Object FOUR_DIGIT_DATA_LENGTH[][];
    private static final Object THREE_DIGIT_DATA_LENGTH[][];
    private static final Object THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH[][];
    private static final Object TWO_DIGIT_DATA_LENGTH[][];
    private static final Object VARIABLE_LENGTH;

    private FieldParser()
    {
    }

    static String parseFieldsInGeneralPurpose(String s)
        throws NotFoundException
    {
        if (s.isEmpty())
        {
            return null;
        }
        if (s.length() < 2)
        {
            throw NotFoundException.getNotFoundInstance();
        }
        String s1 = s.substring(0, 2);
        Object aobj[][] = TWO_DIGIT_DATA_LENGTH;
        int i1 = aobj.length;
        for (int i = 0; i < i1; i++)
        {
            Object aobj1[] = aobj[i];
            if (aobj1[0].equals(s1))
            {
                if (aobj1[1] == VARIABLE_LENGTH)
                {
                    return processVariableAI(2, ((Integer)aobj1[2]).intValue(), s);
                } else
                {
                    return processFixedAI(2, ((Integer)aobj1[1]).intValue(), s);
                }
            }
        }

        if (s.length() < 3)
        {
            throw NotFoundException.getNotFoundInstance();
        }
        s1 = s.substring(0, 3);
        aobj = THREE_DIGIT_DATA_LENGTH;
        i1 = aobj.length;
        for (int j = 0; j < i1; j++)
        {
            Object aobj2[] = aobj[j];
            if (aobj2[0].equals(s1))
            {
                if (aobj2[1] == VARIABLE_LENGTH)
                {
                    return processVariableAI(3, ((Integer)aobj2[2]).intValue(), s);
                } else
                {
                    return processFixedAI(3, ((Integer)aobj2[1]).intValue(), s);
                }
            }
        }

        aobj = THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH;
        i1 = aobj.length;
        for (int k = 0; k < i1; k++)
        {
            Object aobj3[] = aobj[k];
            if (aobj3[0].equals(s1))
            {
                if (aobj3[1] == VARIABLE_LENGTH)
                {
                    return processVariableAI(4, ((Integer)aobj3[2]).intValue(), s);
                } else
                {
                    return processFixedAI(4, ((Integer)aobj3[1]).intValue(), s);
                }
            }
        }

        if (s.length() < 4)
        {
            throw NotFoundException.getNotFoundInstance();
        }
        s1 = s.substring(0, 4);
        aobj = FOUR_DIGIT_DATA_LENGTH;
        i1 = aobj.length;
        for (int l = 0; l < i1; l++)
        {
            Object aobj4[] = aobj[l];
            if (aobj4[0].equals(s1))
            {
                if (aobj4[1] == VARIABLE_LENGTH)
                {
                    return processVariableAI(4, ((Integer)aobj4[2]).intValue(), s);
                } else
                {
                    return processFixedAI(4, ((Integer)aobj4[1]).intValue(), s);
                }
            }
        }

        throw NotFoundException.getNotFoundInstance();
    }

    private static String processFixedAI(int i, int j, String s)
        throws NotFoundException
    {
        if (s.length() < i)
        {
            throw NotFoundException.getNotFoundInstance();
        }
        String s1 = s.substring(0, i);
        if (s.length() < i + j)
        {
            throw NotFoundException.getNotFoundInstance();
        }
        String s2 = s.substring(i, i + j);
        s = s.substring(i + j);
        s1 = (new StringBuilder()).append('(').append(s1).append(')').append(s2).toString();
        s = parseFieldsInGeneralPurpose(s);
        if (s == null)
        {
            return s1;
        } else
        {
            return (new StringBuilder()).append(s1).append(s).toString();
        }
    }

    private static String processVariableAI(int i, int j, String s)
        throws NotFoundException
    {
        String s1 = s.substring(0, i);
        String s2;
        if (s.length() < i + j)
        {
            j = s.length();
        } else
        {
            j = i + j;
        }
        s2 = s.substring(i, j);
        s = s.substring(j);
        s1 = (new StringBuilder()).append('(').append(s1).append(')').append(s2).toString();
        s = parseFieldsInGeneralPurpose(s);
        if (s == null)
        {
            return s1;
        } else
        {
            return (new StringBuilder()).append(s1).append(s).toString();
        }
    }

    static 
    {
        VARIABLE_LENGTH = new Object();
        Object aobj5[] = {
            "00", Integer.valueOf(18)
        };
        Object aobj6[] = {
            "01", Integer.valueOf(14)
        };
        Object aobj7[] = {
            "02", Integer.valueOf(14)
        };
        Object obj = VARIABLE_LENGTH;
        Object aobj8[] = {
            "12", Integer.valueOf(6)
        };
        Object aobj9[] = {
            "13", Integer.valueOf(6)
        };
        Object aobj10[] = {
            "15", Integer.valueOf(6)
        };
        Object aobj11[] = {
            "17", Integer.valueOf(6)
        };
        Object aobj12[] = {
            "20", Integer.valueOf(2)
        };
        Object obj1 = VARIABLE_LENGTH;
        Object aobj13[] = {
            "22", VARIABLE_LENGTH, Integer.valueOf(29)
        };
        Object obj2 = VARIABLE_LENGTH;
        Object aobj14[] = {
            "37", VARIABLE_LENGTH, Integer.valueOf(8)
        };
        Object obj3 = VARIABLE_LENGTH;
        Object obj4 = VARIABLE_LENGTH;
        Object obj5 = VARIABLE_LENGTH;
        Object aobj15[] = {
            "93", VARIABLE_LENGTH, Integer.valueOf(30)
        };
        Object aobj16[] = {
            "94", VARIABLE_LENGTH, Integer.valueOf(30)
        };
        Object obj6 = VARIABLE_LENGTH;
        Object aobj17[] = {
            "96", VARIABLE_LENGTH, Integer.valueOf(30)
        };
        Object obj7 = VARIABLE_LENGTH;
        Object aobj18[] = {
            "98", VARIABLE_LENGTH, Integer.valueOf(30)
        };
        Object aobj19[] = {
            "99", VARIABLE_LENGTH, Integer.valueOf(30)
        };
        TWO_DIGIT_DATA_LENGTH = (new Object[][] {
            aobj5, aobj6, aobj7, new Object[] {
                "10", obj, Integer.valueOf(20)
            }, new Object[] {
                "11", Integer.valueOf(6)
            }, aobj8, aobj9, aobj10, aobj11, aobj12, 
            new Object[] {
                "21", obj1, Integer.valueOf(20)
            }, aobj13, new Object[] {
                "30", obj2, Integer.valueOf(8)
            }, aobj14, new Object[] {
                "90", obj3, Integer.valueOf(30)
            }, new Object[] {
                "91", obj4, Integer.valueOf(30)
            }, new Object[] {
                "92", obj5, Integer.valueOf(30)
            }, aobj15, aobj16, new Object[] {
                "95", obj6, Integer.valueOf(30)
            }, 
            aobj17, new Object[] {
                "97", obj7, Integer.valueOf(30)
            }, aobj18, aobj19
        });
        Object aobj3[] = {
            "240", VARIABLE_LENGTH, Integer.valueOf(30)
        };
        Object aobj4[] = {
            "241", VARIABLE_LENGTH, Integer.valueOf(30)
        };
        obj = VARIABLE_LENGTH;
        obj1 = VARIABLE_LENGTH;
        aobj5 = (new Object[] {
            "251", VARIABLE_LENGTH, Integer.valueOf(30)
        });
        obj2 = VARIABLE_LENGTH;
        obj3 = VARIABLE_LENGTH;
        obj4 = VARIABLE_LENGTH;
        obj5 = VARIABLE_LENGTH;
        aobj6 = (new Object[] {
            "403", VARIABLE_LENGTH, Integer.valueOf(30)
        });
        aobj7 = (new Object[] {
            "410", Integer.valueOf(13)
        });
        aobj8 = (new Object[] {
            "412", Integer.valueOf(13)
        });
        aobj9 = (new Object[] {
            "414", Integer.valueOf(13)
        });
        aobj10 = (new Object[] {
            "420", VARIABLE_LENGTH, Integer.valueOf(20)
        });
        aobj11 = (new Object[] {
            "421", VARIABLE_LENGTH, Integer.valueOf(15)
        });
        aobj12 = (new Object[] {
            "423", VARIABLE_LENGTH, Integer.valueOf(15)
        });
        aobj13 = (new Object[] {
            "424", Integer.valueOf(3)
        });
        THREE_DIGIT_DATA_LENGTH = (new Object[][] {
            aobj3, aobj4, new Object[] {
                "242", obj, Integer.valueOf(6)
            }, new Object[] {
                "250", obj1, Integer.valueOf(30)
            }, aobj5, new Object[] {
                "253", obj2, Integer.valueOf(17)
            }, new Object[] {
                "254", obj3, Integer.valueOf(20)
            }, new Object[] {
                "400", obj4, Integer.valueOf(30)
            }, new Object[] {
                "401", obj5, Integer.valueOf(30)
            }, new Object[] {
                "402", Integer.valueOf(17)
            }, 
            aobj6, aobj7, new Object[] {
                "411", Integer.valueOf(13)
            }, aobj8, new Object[] {
                "413", Integer.valueOf(13)
            }, aobj9, aobj10, aobj11, new Object[] {
                "422", Integer.valueOf(3)
            }, aobj12, 
            aobj13, new Object[] {
                "425", Integer.valueOf(3)
            }, new Object[] {
                "426", Integer.valueOf(3)
            }
        });
        Object aobj1[] = {
            "310", Integer.valueOf(6)
        };
        Object aobj2[] = {
            "321", Integer.valueOf(6)
        };
        aobj3 = (new Object[] {
            "323", Integer.valueOf(6)
        });
        aobj4 = (new Object[] {
            "324", Integer.valueOf(6)
        });
        aobj5 = (new Object[] {
            "334", Integer.valueOf(6)
        });
        aobj6 = (new Object[] {
            "335", Integer.valueOf(6)
        });
        aobj7 = (new Object[] {
            "336", Integer.valueOf(6)
        });
        aobj8 = (new Object[] {
            "341", Integer.valueOf(6)
        });
        aobj9 = (new Object[] {
            "343", Integer.valueOf(6)
        });
        aobj10 = (new Object[] {
            "345", Integer.valueOf(6)
        });
        aobj11 = (new Object[] {
            "346", Integer.valueOf(6)
        });
        aobj12 = (new Object[] {
            "354", Integer.valueOf(6)
        });
        aobj13 = (new Object[] {
            "363", Integer.valueOf(6)
        });
        aobj14 = (new Object[] {
            "368", Integer.valueOf(6)
        });
        obj = VARIABLE_LENGTH;
        obj1 = VARIABLE_LENGTH;
        obj2 = VARIABLE_LENGTH;
        aobj15 = (new Object[] {
            "393", VARIABLE_LENGTH, Integer.valueOf(18)
        });
        obj3 = VARIABLE_LENGTH;
        THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH = (new Object[][] {
            aobj1, new Object[] {
                "311", Integer.valueOf(6)
            }, new Object[] {
                "312", Integer.valueOf(6)
            }, new Object[] {
                "313", Integer.valueOf(6)
            }, new Object[] {
                "314", Integer.valueOf(6)
            }, new Object[] {
                "315", Integer.valueOf(6)
            }, new Object[] {
                "316", Integer.valueOf(6)
            }, new Object[] {
                "320", Integer.valueOf(6)
            }, aobj2, new Object[] {
                "322", Integer.valueOf(6)
            }, 
            aobj3, aobj4, new Object[] {
                "325", Integer.valueOf(6)
            }, new Object[] {
                "326", Integer.valueOf(6)
            }, new Object[] {
                "327", Integer.valueOf(6)
            }, new Object[] {
                "328", Integer.valueOf(6)
            }, new Object[] {
                "329", Integer.valueOf(6)
            }, new Object[] {
                "330", Integer.valueOf(6)
            }, new Object[] {
                "331", Integer.valueOf(6)
            }, new Object[] {
                "332", Integer.valueOf(6)
            }, 
            new Object[] {
                "333", Integer.valueOf(6)
            }, aobj5, aobj6, aobj7, new Object[] {
                "340", Integer.valueOf(6)
            }, aobj8, new Object[] {
                "342", Integer.valueOf(6)
            }, aobj9, new Object[] {
                "344", Integer.valueOf(6)
            }, aobj10, 
            aobj11, new Object[] {
                "347", Integer.valueOf(6)
            }, new Object[] {
                "348", Integer.valueOf(6)
            }, new Object[] {
                "349", Integer.valueOf(6)
            }, new Object[] {
                "350", Integer.valueOf(6)
            }, new Object[] {
                "351", Integer.valueOf(6)
            }, new Object[] {
                "352", Integer.valueOf(6)
            }, new Object[] {
                "353", Integer.valueOf(6)
            }, aobj12, new Object[] {
                "355", Integer.valueOf(6)
            }, 
            new Object[] {
                "356", Integer.valueOf(6)
            }, new Object[] {
                "357", Integer.valueOf(6)
            }, new Object[] {
                "360", Integer.valueOf(6)
            }, new Object[] {
                "361", Integer.valueOf(6)
            }, new Object[] {
                "362", Integer.valueOf(6)
            }, aobj13, new Object[] {
                "364", Integer.valueOf(6)
            }, new Object[] {
                "365", Integer.valueOf(6)
            }, new Object[] {
                "366", Integer.valueOf(6)
            }, new Object[] {
                "367", Integer.valueOf(6)
            }, 
            aobj14, new Object[] {
                "369", Integer.valueOf(6)
            }, new Object[] {
                "390", obj, Integer.valueOf(15)
            }, new Object[] {
                "391", obj1, Integer.valueOf(18)
            }, new Object[] {
                "392", obj2, Integer.valueOf(15)
            }, aobj15, new Object[] {
                "703", obj3, Integer.valueOf(30)
            }
        });
        Object aobj[] = {
            "7001", Integer.valueOf(13)
        };
        aobj1 = (new Object[] {
            "7002", VARIABLE_LENGTH, Integer.valueOf(30)
        });
        aobj2 = (new Object[] {
            "7003", Integer.valueOf(10)
        });
        aobj3 = (new Object[] {
            "8002", VARIABLE_LENGTH, Integer.valueOf(20)
        });
        obj = VARIABLE_LENGTH;
        obj1 = VARIABLE_LENGTH;
        aobj4 = (new Object[] {
            "8005", Integer.valueOf(6)
        });
        aobj5 = (new Object[] {
            "8006", Integer.valueOf(18)
        });
        aobj6 = (new Object[] {
            "8007", VARIABLE_LENGTH, Integer.valueOf(30)
        });
        aobj7 = (new Object[] {
            "8008", VARIABLE_LENGTH, Integer.valueOf(12)
        });
        aobj8 = (new Object[] {
            "8018", Integer.valueOf(18)
        });
        aobj9 = (new Object[] {
            "8020", VARIABLE_LENGTH, Integer.valueOf(25)
        });
        aobj10 = (new Object[] {
            "8100", Integer.valueOf(6)
        });
        aobj11 = (new Object[] {
            "8101", Integer.valueOf(10)
        });
        aobj12 = (new Object[] {
            "8110", VARIABLE_LENGTH, Integer.valueOf(70)
        });
        obj2 = VARIABLE_LENGTH;
        FOUR_DIGIT_DATA_LENGTH = (new Object[][] {
            aobj, aobj1, aobj2, new Object[] {
                "8001", Integer.valueOf(14)
            }, aobj3, new Object[] {
                "8003", obj, Integer.valueOf(30)
            }, new Object[] {
                "8004", obj1, Integer.valueOf(30)
            }, aobj4, aobj5, aobj6, 
            aobj7, aobj8, aobj9, aobj10, aobj11, new Object[] {
                "8102", Integer.valueOf(2)
            }, aobj12, new Object[] {
                "8200", obj2, Integer.valueOf(70)
            }
        });
    }
}
