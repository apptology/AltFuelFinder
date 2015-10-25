// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.storage;

import android.content.Context;
import com.biznessapps.coupons.CouponEntity;
import com.biznessapps.fan_wall.CommentEntity;
import com.biznessapps.food_ordering.account.AccountEntity;
import com.biznessapps.loyalty.LoyaltyV1Entity;
import com.biznessapps.messages.MessageEntity;
import com.biznessapps.notepad.NotepadEntity;
import java.util.List;

// Referenced classes of package com.biznessapps.storage:
//            StorageAccessor, StorageException

public class StorageKeeper
{

    private static StorageKeeper instance;
    private StorageAccessor dbAccessor;

    private StorageKeeper(Context context)
    {
        dbAccessor = new StorageAccessor(context);
    }

    public static void init(Context context)
    {
        if (instance == null)
        {
            instance = new StorageKeeper(context);
        }
    }

    public static StorageKeeper instance()
    {
        return instance;
    }

    public void addCoupons(List list)
    {
        try
        {
            dbAccessor.addCoupons(list);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            list.printStackTrace();
        }
    }

    public void addFOAccount(AccountEntity accountentity)
    {
        dbAccessor.addFO_Account(accountentity);
    }

    public void addMessage(MessageEntity messageentity)
    {
        try
        {
            dbAccessor.addMessage(messageentity);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (MessageEntity messageentity)
        {
            messageentity.printStackTrace();
        }
    }

    public void addNotes(List list)
    {
        try
        {
            dbAccessor.addNote(list);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            list.printStackTrace();
        }
    }

    public void addPhotos(String s)
    {
        try
        {
            dbAccessor.savePhoto(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public void delNote(NotepadEntity notepadentity)
    {
        try
        {
            dbAccessor.delNote(notepadentity.getId());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (NotepadEntity notepadentity)
        {
            notepadentity.printStackTrace();
        }
    }

    public void deleteFOAccount(String s)
    {
        dbAccessor.deleteFOAccount(s);
    }

    public void deleteQrCode(String s)
    {
        try
        {
            dbAccessor.deleteQrCode(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public String get(String s)
    {
        try
        {
            s = dbAccessor.getConfig(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return "";
        }
        return s;
    }

    public LoyaltyV1Entity[] getAllLoyaltyItems()
    {
        return dbAccessor.getAllLoyaltyItems();
    }

    public String getCachedItem(String s)
    {
        return dbAccessor.getCachedItem(s);
    }

    public List getComments()
    {
        return dbAccessor.getAllComments();
    }

    public CouponEntity getCouponData(String s)
    {
        return dbAccessor.getCoupon(s);
    }

    public List getEmailedPhotos()
    {
        return dbAccessor.getPhotos();
    }

    public List getFOAccouns()
    {
        return dbAccessor.getFOAccounts();
    }

    public LoyaltyV1Entity getLoyaltyItem(String s)
    {
        return dbAccessor.getLoyaltyItem(s);
    }

    public List getMessages()
    {
        return dbAccessor.requestAllMessages();
    }

    public List getMessagesIds()
    {
        return dbAccessor.getMessagesIds();
    }

    public List getNotes()
    {
        return dbAccessor.requestAllNotes();
    }

    public List getQrCodes()
    {
        return dbAccessor.getQrCodes();
    }

    public void put(String s, Object obj)
    {
        try
        {
            dbAccessor.putConfig(s, obj);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public void removeAllLoyaltyItems()
    {
        try
        {
            dbAccessor.removeAllLoyaltyItems();
            return;
        }
        catch (StorageException storageexception)
        {
            storageexception.printStackTrace();
        }
    }

    public void removeMessage(MessageEntity messageentity)
    {
        try
        {
            messageentity.setDeleted(true);
            dbAccessor.addMessage(messageentity);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (MessageEntity messageentity)
        {
            messageentity.printStackTrace();
        }
    }

    public void removePhotos(String s)
    {
        try
        {
            dbAccessor.removePhotos(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public void saveCacheItem(String s, String s1)
    {
        try
        {
            dbAccessor.saveCacheData(s, s1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public void saveComment(CommentEntity commententity)
    {
        try
        {
            dbAccessor.addComment(commententity);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (CommentEntity commententity)
        {
            commententity.printStackTrace();
        }
    }

    public void saveLoyaltyItem(LoyaltyV1Entity loyaltyv1entity)
    {
        try
        {
            dbAccessor.saveLoayltyItem(loyaltyv1entity);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (LoyaltyV1Entity loyaltyv1entity)
        {
            loyaltyv1entity.printStackTrace();
        }
    }

    public void saveQrCode(String s)
    {
        try
        {
            dbAccessor.addQrCode(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }
}
