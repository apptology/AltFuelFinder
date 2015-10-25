// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j.internal.json;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;
import twitter4j.DirectMessage;
import twitter4j.HashtagEntity;
import twitter4j.MediaEntity;
import twitter4j.ResponseList;
import twitter4j.SymbolEntity;
import twitter4j.TwitterException;
import twitter4j.URLEntity;
import twitter4j.User;
import twitter4j.UserMentionEntity;
import twitter4j.conf.Configuration;
import twitter4j.internal.http.HttpResponse;
import twitter4j.internal.org.json.JSONArray;
import twitter4j.internal.org.json.JSONException;
import twitter4j.internal.org.json.JSONObject;

// Referenced classes of package twitter4j.internal.json:
//            TwitterResponseImpl, DataObjectFactoryUtil, ResponseListImpl, z_T4JInternalParseUtil, 
//            UserJSONImpl, UserMentionEntityJSONImpl, URLEntityJSONImpl, HashtagEntityJSONImpl, 
//            MediaEntityJSONImpl, HTMLEntity

final class DirectMessageJSONImpl extends TwitterResponseImpl
    implements DirectMessage, Serializable
{

    private static final long serialVersionUID = 0x9d68b11f622cb5f7L;
    private Date createdAt;
    private HashtagEntity hashtagEntities[];
    private long id;
    private MediaEntity mediaEntities[];
    private User recipient;
    private long recipientId;
    private String recipientScreenName;
    private User sender;
    private long senderId;
    private String senderScreenName;
    private SymbolEntity symbolEntities[];
    private String text;
    private URLEntity urlEntities[];
    private UserMentionEntity userMentionEntities[];

    DirectMessageJSONImpl(HttpResponse httpresponse, Configuration configuration)
        throws TwitterException
    {
        super(httpresponse);
        httpresponse = httpresponse.asJSONObject();
        init(httpresponse);
        if (configuration.isJSONStoreEnabled())
        {
            DataObjectFactoryUtil.clearThreadLocalMap();
            DataObjectFactoryUtil.registerJSONObject(this, httpresponse);
        }
    }

    DirectMessageJSONImpl(JSONObject jsonobject)
        throws TwitterException
    {
        init(jsonobject);
    }

    static ResponseList createDirectMessageList(HttpResponse httpresponse, Configuration configuration)
        throws TwitterException
    {
        int i;
        JSONArray jsonarray;
        JSONObject jsonobject;
        DirectMessageJSONImpl directmessagejsonimpl;
        int j;
        try
        {
            if (configuration.isJSONStoreEnabled())
            {
                DataObjectFactoryUtil.clearThreadLocalMap();
            }
            jsonarray = httpresponse.asJSONArray();
            j = jsonarray.length();
            httpresponse = new ResponseListImpl(j, httpresponse);
        }
        // Misplaced declaration of an exception variable
        catch (HttpResponse httpresponse)
        {
            throw new TwitterException(httpresponse);
        }
        // Misplaced declaration of an exception variable
        catch (HttpResponse httpresponse)
        {
            throw httpresponse;
        }
        i = 0;
_L2:
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        jsonobject = jsonarray.getJSONObject(i);
        directmessagejsonimpl = new DirectMessageJSONImpl(jsonobject);
        httpresponse.add(directmessagejsonimpl);
        if (configuration.isJSONStoreEnabled())
        {
            DataObjectFactoryUtil.registerJSONObject(directmessagejsonimpl, jsonobject);
        }
        break MISSING_BLOCK_LABEL_119;
        if (configuration.isJSONStoreEnabled())
        {
            DataObjectFactoryUtil.registerJSONObject(httpresponse, jsonarray);
        }
        return httpresponse;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void init(JSONObject jsonobject)
        throws TwitterException
    {
        id = z_T4JInternalParseUtil.getLong("id", jsonobject);
        senderId = z_T4JInternalParseUtil.getLong("sender_id", jsonobject);
        recipientId = z_T4JInternalParseUtil.getLong("recipient_id", jsonobject);
        createdAt = z_T4JInternalParseUtil.getDate("created_at", jsonobject);
        senderScreenName = z_T4JInternalParseUtil.getUnescapedString("sender_screen_name", jsonobject);
        recipientScreenName = z_T4JInternalParseUtil.getUnescapedString("recipient_screen_name", jsonobject);
        sender = new UserJSONImpl(jsonobject.getJSONObject("sender"));
        recipient = new UserJSONImpl(jsonobject.getJSONObject("recipient"));
        if (jsonobject.isNull("entities")) goto _L2; else goto _L1
_L1:
        Object obj = jsonobject.getJSONObject("entities");
        if (((JSONObject) (obj)).isNull("user_mentions")) goto _L4; else goto _L3
_L3:
        JSONArray jsonarray;
        int k;
        jsonarray = ((JSONObject) (obj)).getJSONArray("user_mentions");
        k = jsonarray.length();
        userMentionEntities = new UserMentionEntity[k];
        int i = 0;
        while (i < k) 
        {
            int l;
            try
            {
                userMentionEntities[i] = new UserMentionEntityJSONImpl(jsonarray.getJSONObject(i));
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                throw new TwitterException(jsonobject);
            }
            i++;
        }
_L4:
        if (((JSONObject) (obj)).isNull("urls")) goto _L6; else goto _L5
_L5:
        jsonarray = ((JSONObject) (obj)).getJSONArray("urls");
        l = jsonarray.length();
        urlEntities = new URLEntity[l];
        i = 0;
_L7:
        if (i >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        urlEntities[i] = new URLEntityJSONImpl(jsonarray.getJSONObject(i));
        i++;
        if (true) goto _L7; else goto _L6
_L6:
        if (((JSONObject) (obj)).isNull("hashtags")) goto _L9; else goto _L8
_L8:
        jsonarray = ((JSONObject) (obj)).getJSONArray("hashtags");
        l = jsonarray.length();
        hashtagEntities = new HashtagEntity[l];
        i = 0;
_L10:
        if (i >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        hashtagEntities[i] = new HashtagEntityJSONImpl(jsonarray.getJSONObject(i));
        i++;
        if (true) goto _L10; else goto _L9
_L9:
        if (((JSONObject) (obj)).isNull("symbols")) goto _L12; else goto _L11
_L11:
        jsonarray = ((JSONObject) (obj)).getJSONArray("symbols");
        l = jsonarray.length();
        symbolEntities = new SymbolEntity[l];
        i = 0;
_L13:
        if (i >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        symbolEntities[i] = new HashtagEntityJSONImpl(jsonarray.getJSONObject(i));
        i++;
        if (true) goto _L13; else goto _L12
_L12:
        if (((JSONObject) (obj)).isNull("media")) goto _L2; else goto _L14
_L14:
        obj = ((JSONObject) (obj)).getJSONArray("media");
        l = ((JSONArray) (obj)).length();
        mediaEntities = new MediaEntity[l];
        i = 0;
_L15:
        if (i >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        mediaEntities[i] = new MediaEntityJSONImpl(((JSONArray) (obj)).getJSONObject(i));
        i++;
        if (true) goto _L15; else goto _L2
_L2:
        if (userMentionEntities != null) goto _L17; else goto _L16
_L16:
        obj = new UserMentionEntity[0];
_L43:
        userMentionEntities = ((UserMentionEntity []) (obj));
        if (urlEntities != null) goto _L19; else goto _L18
_L18:
        obj = new URLEntity[0];
_L30:
        urlEntities = ((URLEntity []) (obj));
        if (hashtagEntities != null) goto _L21; else goto _L20
_L20:
        obj = new HashtagEntity[0];
_L31:
        hashtagEntities = ((HashtagEntity []) (obj));
        if (symbolEntities != null) goto _L23; else goto _L22
_L22:
        obj = new SymbolEntity[0];
_L32:
        symbolEntities = ((SymbolEntity []) (obj));
        if (mediaEntities != null) goto _L25; else goto _L24
_L24:
        obj = new MediaEntity[0];
_L33:
        mediaEntities = ((MediaEntity []) (obj));
        text = HTMLEntity.unescapeAndSlideEntityIncdices(jsonobject.getString("text"), userMentionEntities, urlEntities, hashtagEntities, mediaEntities);
        if (jsonobject.isNull("entities")) goto _L27; else goto _L26
_L26:
        jsonobject = jsonobject.getJSONObject("entities");
        if (jsonobject.isNull("user_mentions")) goto _L29; else goto _L28
_L28:
        obj = jsonobject.getJSONArray("user_mentions");
        l = ((JSONArray) (obj)).length();
        userMentionEntities = new UserMentionEntity[l];
        i = 0;
        while (i < l) 
        {
            int j;
            int i1;
            try
            {
                userMentionEntities[i] = new UserMentionEntityJSONImpl(((JSONArray) (obj)).getJSONObject(i));
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                throw new TwitterException(jsonobject);
            }
            i++;
        }
          goto _L29
_L17:
        obj = userMentionEntities;
        continue; /* Loop/switch isn't completed */
_L19:
        obj = urlEntities;
          goto _L30
_L21:
        obj = hashtagEntities;
          goto _L31
_L23:
        obj = symbolEntities;
          goto _L32
_L25:
        obj = mediaEntities;
          goto _L33
_L29:
        if (jsonobject.isNull("urls")) goto _L35; else goto _L34
_L34:
        obj = jsonobject.getJSONArray("urls");
        i1 = ((JSONArray) (obj)).length();
        urlEntities = new URLEntity[i1];
        j = 0;
_L36:
        if (j >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        urlEntities[j] = new URLEntityJSONImpl(((JSONArray) (obj)).getJSONObject(j));
        j++;
        if (true) goto _L36; else goto _L35
_L35:
        if (jsonobject.isNull("hashtags")) goto _L38; else goto _L37
_L37:
        obj = jsonobject.getJSONArray("hashtags");
        i1 = ((JSONArray) (obj)).length();
        hashtagEntities = new HashtagEntity[i1];
        j = 0;
_L39:
        if (j >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        hashtagEntities[j] = new HashtagEntityJSONImpl(((JSONArray) (obj)).getJSONObject(j));
        j++;
        if (true) goto _L39; else goto _L38
_L38:
        if (jsonobject.isNull("media")) goto _L27; else goto _L40
_L40:
        jsonobject = jsonobject.getJSONArray("media");
        i1 = jsonobject.length();
        mediaEntities = new MediaEntity[i1];
        j = 0;
_L41:
        if (j >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        mediaEntities[j] = new MediaEntityJSONImpl(jsonobject.getJSONObject(j));
        j++;
        if (true) goto _L41; else goto _L27
_L27:
        return;
        if (true) goto _L43; else goto _L42
_L42:
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = true;
        if (obj != null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (this == obj) goto _L4; else goto _L3
_L3:
        if (!(obj instanceof DirectMessage))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (((DirectMessage)obj).getId() == id) goto _L4; else goto _L5
_L5:
        return false;
    }

    public Date getCreatedAt()
    {
        return createdAt;
    }

    public HashtagEntity[] getHashtagEntities()
    {
        return hashtagEntities;
    }

    public long getId()
    {
        return id;
    }

    public MediaEntity[] getMediaEntities()
    {
        return mediaEntities;
    }

    public User getRecipient()
    {
        return recipient;
    }

    public long getRecipientId()
    {
        return recipientId;
    }

    public String getRecipientScreenName()
    {
        return recipientScreenName;
    }

    public User getSender()
    {
        return sender;
    }

    public long getSenderId()
    {
        return senderId;
    }

    public String getSenderScreenName()
    {
        return senderScreenName;
    }

    public SymbolEntity[] getSymbolEntities()
    {
        return symbolEntities;
    }

    public String getText()
    {
        return text;
    }

    public URLEntity[] getURLEntities()
    {
        return urlEntities;
    }

    public UserMentionEntity[] getUserMentionEntities()
    {
        return userMentionEntities;
    }

    public int hashCode()
    {
        return (int)id;
    }

    public String toString()
    {
        Object obj = null;
        StringBuilder stringbuilder = (new StringBuilder()).append("DirectMessageJSONImpl{id=").append(id).append(", text='").append(text).append('\'').append(", sender_id=").append(senderId).append(", recipient_id=").append(recipientId).append(", created_at=").append(createdAt).append(", userMentionEntities=");
        java.util.List list;
        if (userMentionEntities == null)
        {
            list = null;
        } else
        {
            list = Arrays.asList(userMentionEntities);
        }
        stringbuilder = stringbuilder.append(list).append(", urlEntities=");
        if (urlEntities == null)
        {
            list = null;
        } else
        {
            list = Arrays.asList(urlEntities);
        }
        stringbuilder = stringbuilder.append(list).append(", hashtagEntities=");
        if (hashtagEntities == null)
        {
            list = null;
        } else
        {
            list = Arrays.asList(hashtagEntities);
        }
        stringbuilder = stringbuilder.append(list).append(", sender_screen_name='").append(senderScreenName).append('\'').append(", recipient_screen_name='").append(recipientScreenName).append('\'').append(", sender=").append(sender).append(", recipient=").append(recipient).append(", userMentionEntities=");
        if (userMentionEntities == null)
        {
            list = null;
        } else
        {
            list = Arrays.asList(userMentionEntities);
        }
        stringbuilder = stringbuilder.append(list).append(", urlEntities=");
        if (urlEntities == null)
        {
            list = null;
        } else
        {
            list = Arrays.asList(urlEntities);
        }
        stringbuilder = stringbuilder.append(list).append(", hashtagEntities=");
        if (hashtagEntities == null)
        {
            list = obj;
        } else
        {
            list = Arrays.asList(hashtagEntities);
        }
        return stringbuilder.append(list).append('}').toString();
    }
}
