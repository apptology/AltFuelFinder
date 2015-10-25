// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import twitter4j.auth.Authorization;
import twitter4j.conf.Configuration;
import twitter4j.internal.http.HttpClientWrapper;
import twitter4j.internal.http.HttpParameter;
import twitter4j.internal.http.HttpResponse;
import twitter4j.internal.json.z_T4JInternalFactory;
import twitter4j.internal.org.json.JSONException;
import twitter4j.internal.org.json.JSONObject;
import twitter4j.internal.util.z_T4JInternalStringUtil;

// Referenced classes of package twitter4j:
//            TwitterBaseImpl, Twitter, TwitterException, TwitterAPIMonitor, 
//            GeoLocation, Paging, OEmbedRequest, GeoQuery, 
//            Query, StatusUpdate, UserList, User, 
//            Status, Place, SavedSearch, DirectMessage, 
//            TwitterAPIConfiguration, AccountSettings, ResponseList, IDs, 
//            PagableResponseList, Trends, OEmbed, SimilarPlaces, 
//            QueryResult, Relationship

class TwitterImpl extends TwitterBaseImpl
    implements Twitter
{

    private static final Map implicitParamsMap = new HashMap();
    private static final Map implicitParamsStrMap = new HashMap();
    private static final long serialVersionUID = 0xeb5f6361d798c8fcL;
    private final HttpParameter IMPLICIT_PARAMS[];
    private final String IMPLICIT_PARAMS_STR;
    private final HttpParameter INCLUDE_MY_RETWEET;

    TwitterImpl(Configuration configuration, Authorization authorization)
    {
        super(configuration, authorization);
        INCLUDE_MY_RETWEET = new HttpParameter("include_my_retweet", configuration.isIncludeMyRetweetEnabled());
        HttpParameter ahttpparameter[] = (HttpParameter[])implicitParamsMap.get(configuration);
        String s = (String)implicitParamsStrMap.get(configuration);
        authorization = ahttpparameter;
        if (ahttpparameter == null)
        {
            String s1;
            Object obj;
            boolean flag;
            if (configuration.isIncludeEntitiesEnabled())
            {
                authorization = "1";
            } else
            {
                authorization = "0";
            }
            if (configuration.isIncludeRTsEnabled())
            {
                s = "1";
            } else
            {
                s = "0";
            }
            if (configuration.getContributingTo() != -1L)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            obj = (new StringBuilder()).append("include_entities=").append(authorization).append("&include_rts=").append(s);
            if (flag)
            {
                s1 = (new StringBuilder()).append("&contributingto=").append(configuration.getContributingTo()).toString();
            } else
            {
                s1 = "";
            }
            s1 = ((StringBuilder) (obj)).append(s1).toString();
            implicitParamsStrMap.put(configuration, s1);
            obj = new ArrayList(4);
            ((List) (obj)).add(new HttpParameter("include_entities", authorization));
            ((List) (obj)).add(new HttpParameter("include_rts", s));
            if (flag)
            {
                ((List) (obj)).add(new HttpParameter("contributingto", configuration.getContributingTo()));
            }
            if (configuration.isTrimUserEnabled())
            {
                ((List) (obj)).add(new HttpParameter("trim_user", "1"));
            }
            authorization = (HttpParameter[])((List) (obj)).toArray(new HttpParameter[((List) (obj)).size()]);
            implicitParamsMap.put(configuration, authorization);
            s = s1;
        }
        IMPLICIT_PARAMS = authorization;
        IMPLICIT_PARAMS_STR = s;
    }

    private void addParameterToList(List list, String s, String s1)
    {
        if (s1 != null)
        {
            list.add(new HttpParameter(s, s1));
        }
    }

    private void checkFileValidity(File file)
        throws TwitterException
    {
        if (!file.exists())
        {
            throw new TwitterException(new FileNotFoundException((new StringBuilder()).append(file).append(" is not found.").toString()));
        }
        if (!file.isFile())
        {
            throw new TwitterException(new IOException((new StringBuilder()).append(file).append(" is not a file.").toString()));
        } else
        {
            return;
        }
    }

    private HttpResponse get(String s)
        throws TwitterException
    {
        long l;
        ensureAuthorizationEnabled();
        if (s.contains("?"))
        {
            s = (new StringBuilder()).append(s).append("&").append(IMPLICIT_PARAMS_STR).toString();
        } else
        {
            s = (new StringBuilder()).append(s).append("?").append(IMPLICIT_PARAMS_STR).toString();
        }
        if (!conf.isMBeanEnabled())
        {
            return http.get(s, auth);
        }
        l = System.currentTimeMillis();
        HttpResponse httpresponse = http.get(s, auth);
        long l1 = System.currentTimeMillis();
        TwitterAPIMonitor.getInstance().methodCalled(s, l1 - l, isOk(httpresponse));
        return httpresponse;
        Exception exception;
        exception;
        long l2 = System.currentTimeMillis();
        TwitterAPIMonitor.getInstance().methodCalled(s, l2 - l, isOk(null));
        throw exception;
    }

    private HttpResponse get(String s, HttpParameter ahttpparameter[])
        throws TwitterException
    {
        long l;
        ensureAuthorizationEnabled();
        if (!conf.isMBeanEnabled())
        {
            return http.get(s, mergeImplicitParams(ahttpparameter), auth);
        }
        l = System.currentTimeMillis();
        ahttpparameter = http.get(s, mergeImplicitParams(ahttpparameter), auth);
        long l1 = System.currentTimeMillis();
        TwitterAPIMonitor.getInstance().methodCalled(s, l1 - l, isOk(ahttpparameter));
        return ahttpparameter;
        ahttpparameter;
        long l2 = System.currentTimeMillis();
        TwitterAPIMonitor.getInstance().methodCalled(s, l2 - l, isOk(null));
        throw ahttpparameter;
    }

    private boolean isOk(HttpResponse httpresponse)
    {
        return httpresponse != null && httpresponse.getStatusCode() < 300;
    }

    private HttpParameter[] mergeImplicitParams(HttpParameter ahttpparameter[])
    {
        return mergeParameters(ahttpparameter, IMPLICIT_PARAMS);
    }

    private HttpParameter[] mergeParameters(HttpParameter ahttpparameter[], HttpParameter httpparameter)
    {
        if (ahttpparameter != null && httpparameter != null)
        {
            HttpParameter ahttpparameter1[] = new HttpParameter[ahttpparameter.length + 1];
            System.arraycopy(ahttpparameter, 0, ahttpparameter1, 0, ahttpparameter.length);
            ahttpparameter1[ahttpparameter1.length - 1] = httpparameter;
            return ahttpparameter1;
        }
        if (ahttpparameter == null && httpparameter == null)
        {
            return new HttpParameter[0];
        }
        if (ahttpparameter != null)
        {
            return ahttpparameter;
        } else
        {
            return (new HttpParameter[] {
                httpparameter
            });
        }
    }

    private HttpParameter[] mergeParameters(HttpParameter ahttpparameter[], HttpParameter ahttpparameter1[])
    {
        if (ahttpparameter != null && ahttpparameter1 != null)
        {
            HttpParameter ahttpparameter2[] = new HttpParameter[ahttpparameter.length + ahttpparameter1.length];
            System.arraycopy(ahttpparameter, 0, ahttpparameter2, 0, ahttpparameter.length);
            System.arraycopy(ahttpparameter1, 0, ahttpparameter2, ahttpparameter.length, ahttpparameter1.length);
            return ahttpparameter2;
        }
        if (ahttpparameter == null && ahttpparameter1 == null)
        {
            return new HttpParameter[0];
        }
        if (ahttpparameter != null)
        {
            return ahttpparameter;
        } else
        {
            return ahttpparameter1;
        }
    }

    private HttpResponse post(String s)
        throws TwitterException
    {
        long l;
        ensureAuthorizationEnabled();
        if (!conf.isMBeanEnabled())
        {
            return http.post(s, IMPLICIT_PARAMS, auth);
        }
        l = System.currentTimeMillis();
        HttpResponse httpresponse = http.post(s, IMPLICIT_PARAMS, auth);
        long l1 = System.currentTimeMillis();
        TwitterAPIMonitor.getInstance().methodCalled(s, l1 - l, isOk(httpresponse));
        return httpresponse;
        Exception exception;
        exception;
        long l2 = System.currentTimeMillis();
        TwitterAPIMonitor.getInstance().methodCalled(s, l2 - l, isOk(null));
        throw exception;
    }

    private HttpResponse post(String s, HttpParameter ahttpparameter[])
        throws TwitterException
    {
        long l;
        ensureAuthorizationEnabled();
        if (!conf.isMBeanEnabled())
        {
            return http.post(s, mergeImplicitParams(ahttpparameter), auth);
        }
        l = System.currentTimeMillis();
        ahttpparameter = http.post(s, mergeImplicitParams(ahttpparameter), auth);
        long l1 = System.currentTimeMillis();
        TwitterAPIMonitor.getInstance().methodCalled(s, l1 - l, isOk(ahttpparameter));
        return ahttpparameter;
        ahttpparameter;
        long l2 = System.currentTimeMillis();
        TwitterAPIMonitor.getInstance().methodCalled(s, l2 - l, isOk(null));
        throw ahttpparameter;
    }

    private transient UserList updateUserList(String s, boolean flag, String s1, HttpParameter ahttpparameter[])
        throws TwitterException
    {
        ArrayList arraylist = new ArrayList();
        Collections.addAll(arraylist, ahttpparameter);
        if (s != null)
        {
            arraylist.add(new HttpParameter("name", s));
        }
        if (flag)
        {
            s = "public";
        } else
        {
            s = "private";
        }
        arraylist.add(new HttpParameter("mode", s));
        if (s1 != null)
        {
            arraylist.add(new HttpParameter("description", s1));
        }
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/update.json").toString(), (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()])));
    }

    public UserList addUserListMember(int i, long l)
        throws TwitterException
    {
        return null;
    }

    public UserList addUserListMember(long l, String s, long l1)
        throws TwitterException
    {
        return null;
    }

    public UserList addUserListMembers(int i, long al[])
        throws TwitterException
    {
        return createUserListMembers(i, al);
    }

    public UserList addUserListMembers(int i, String as[])
        throws TwitterException
    {
        return createUserListMembers(i, as);
    }

    public UserList addUserListMembers(long l, String s, long al[])
        throws TwitterException
    {
        return createUserListMembers(l, s, al);
    }

    public UserList addUserListMembers(long l, String s, String as[])
        throws TwitterException
    {
        return createUserListMembers(l, s, as);
    }

    public User createBlock(long l)
        throws TwitterException
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("blocks/create.json?user_id=").append(l).toString()));
    }

    public User createBlock(String s)
        throws TwitterException
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("blocks/create.json?screen_name=").append(s).toString()));
    }

    public Status createFavorite(long l)
        throws TwitterException
    {
        return factory.createStatus(post((new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/create.json?id=").append(l).toString()));
    }

    public User createFriendship(long l)
        throws TwitterException
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/create.json?user_id=").append(l).toString()));
    }

    public User createFriendship(long l, boolean flag)
        throws TwitterException
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/create.json?user_id=").append(l).append("&follow=").append(flag).toString()));
    }

    public User createFriendship(String s)
        throws TwitterException
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/create.json?screen_name=").append(s).toString()));
    }

    public User createFriendship(String s, boolean flag)
        throws TwitterException
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/create.json?screen_name=").append(s).append("&follow=").append(flag).toString()));
    }

    public Place createPlace(String s, String s1, String s2, GeoLocation geolocation, String s3)
        throws TwitterException
    {
        ArrayList arraylist = new ArrayList(3);
        arraylist.add(new HttpParameter("name", s));
        arraylist.add(new HttpParameter("contained_within", s1));
        arraylist.add(new HttpParameter("token", s2));
        arraylist.add(new HttpParameter("lat", geolocation.getLatitude()));
        arraylist.add(new HttpParameter("long", geolocation.getLongitude()));
        if (s3 != null)
        {
            arraylist.add(new HttpParameter("attribute:street_address", s3));
        }
        return factory.createPlace(post((new StringBuilder()).append(conf.getRestBaseURL()).append("geo/place.json").toString(), (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()])));
    }

    public SavedSearch createSavedSearch(String s)
        throws TwitterException
    {
        return factory.createSavedSearch(post((new StringBuilder()).append(conf.getRestBaseURL()).append("saved_searches/create.json").toString(), new HttpParameter[] {
            new HttpParameter("query", s)
        }));
    }

    public UserList createUserList(String s, boolean flag, String s1)
        throws TwitterException
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new HttpParameter("name", s));
        if (flag)
        {
            s = "public";
        } else
        {
            s = "private";
        }
        arraylist.add(new HttpParameter("mode", s));
        if (s1 != null)
        {
            arraylist.add(new HttpParameter("description", s1));
        }
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/create.json").toString(), (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()])));
    }

    public UserList createUserListMember(int i, long l)
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create.json").toString(), new HttpParameter[] {
            new HttpParameter("user_id", l), new HttpParameter("list_id", i)
        }));
    }

    public UserList createUserListMember(long l, String s, long l1)
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create.json").toString(), new HttpParameter[] {
            new HttpParameter("user_id", l1), new HttpParameter("owner_id", l), new HttpParameter("slug", s)
        }));
    }

    public UserList createUserListMember(String s, String s1, long l)
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create.json").toString(), new HttpParameter[] {
            new HttpParameter("user_id", l), new HttpParameter("owner_screen_name", s), new HttpParameter("slug", s1)
        }));
    }

    public UserList createUserListMembers(int i, long al[])
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create_all.json").toString(), new HttpParameter[] {
            new HttpParameter("list_id", i), new HttpParameter("user_id", z_T4JInternalStringUtil.join(al))
        }));
    }

    public UserList createUserListMembers(int i, String as[])
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create_all.json").toString(), new HttpParameter[] {
            new HttpParameter("list_id", i), new HttpParameter("screen_name", z_T4JInternalStringUtil.join(as))
        }));
    }

    public UserList createUserListMembers(long l, String s, long al[])
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create_all.json").toString(), new HttpParameter[] {
            new HttpParameter("owner_id", l), new HttpParameter("slug", s), new HttpParameter("user_id", z_T4JInternalStringUtil.join(al))
        }));
    }

    public UserList createUserListMembers(long l, String s, String as[])
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create_all.json").toString(), new HttpParameter[] {
            new HttpParameter("owner_id", l), new HttpParameter("slug", s), new HttpParameter("screen_name", z_T4JInternalStringUtil.join(as))
        }));
    }

    public UserList createUserListMembers(String s, String s1, long al[])
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create_all.json").toString(), new HttpParameter[] {
            new HttpParameter("owner_screen_name", s), new HttpParameter("slug", s1), new HttpParameter("user_id", z_T4JInternalStringUtil.join(al))
        }));
    }

    public UserList createUserListMembers(String s, String s1, String as[])
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create_all.json").toString(), new HttpParameter[] {
            new HttpParameter("owner_screen_name", s), new HttpParameter("slug", s1), new HttpParameter("screen_name", z_T4JInternalStringUtil.join(as))
        }));
    }

    public UserList createUserListSubscription(int i)
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/create.json").toString(), new HttpParameter[] {
            new HttpParameter("list_id", i)
        }));
    }

    public UserList createUserListSubscription(long l, String s)
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/create.json").toString(), new HttpParameter[] {
            new HttpParameter("owner_id", l), new HttpParameter("slug", s)
        }));
    }

    public UserList createUserListSubscription(String s, String s1)
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/create.json").toString(), new HttpParameter[] {
            new HttpParameter("owner_screen_name", s), new HttpParameter("slug", s1)
        }));
    }

    public UserList deleteUserListMember(int i, long l)
        throws TwitterException
    {
        return destroyUserListMember(i, l);
    }

    public UserList deleteUserListMember(long l, String s, long l1)
        throws TwitterException
    {
        return destroyUserListMember(l, s, l1);
    }

    public User destroyBlock(long l)
        throws TwitterException
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("blocks/destroy.json?user_id=").append(l).toString()));
    }

    public User destroyBlock(String s)
        throws TwitterException
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("blocks/destroy.json?screen_name=").append(s).toString()));
    }

    public DirectMessage destroyDirectMessage(long l)
        throws TwitterException
    {
        return factory.createDirectMessage(post((new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages/destroy.json?id=").append(l).toString()));
    }

    public Status destroyFavorite(long l)
        throws TwitterException
    {
        return factory.createStatus(post((new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/destroy.json?id=").append(l).toString()));
    }

    public User destroyFriendship(long l)
        throws TwitterException
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/destroy.json?user_id=").append(l).toString()));
    }

    public User destroyFriendship(String s)
        throws TwitterException
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/destroy.json?screen_name=").append(s).toString()));
    }

    public SavedSearch destroySavedSearch(int i)
        throws TwitterException
    {
        return factory.createSavedSearch(post((new StringBuilder()).append(conf.getRestBaseURL()).append("saved_searches/destroy/").append(i).append(".json").toString()));
    }

    public Status destroyStatus(long l)
        throws TwitterException
    {
        return factory.createStatus(post((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/destroy/").append(l).append(".json").toString()));
    }

    public UserList destroyUserList(int i)
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/destroy.json").toString(), new HttpParameter[] {
            new HttpParameter("list_id", i)
        }));
    }

    public UserList destroyUserList(long l, String s)
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/destroy.json").toString(), new HttpParameter[] {
            new HttpParameter("owner_id", l), new HttpParameter("slug", s)
        }));
    }

    public UserList destroyUserList(String s, String s1)
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/destroy.json").toString(), new HttpParameter[] {
            new HttpParameter("owner_screen_name", s), new HttpParameter("slug", s1)
        }));
    }

    public UserList destroyUserListMember(int i, long l)
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/destroy.json").toString(), new HttpParameter[] {
            new HttpParameter("list_id", i), new HttpParameter("user_id", l)
        }));
    }

    public UserList destroyUserListMember(long l, String s, long l1)
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/destroy.json").toString(), new HttpParameter[] {
            new HttpParameter("owner_id", l), new HttpParameter("slug", s), new HttpParameter("user_id", l1)
        }));
    }

    public UserList destroyUserListMember(String s, String s1, long l)
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/destroy.json").toString(), new HttpParameter[] {
            new HttpParameter("owner_screen_name", s), new HttpParameter("slug", s1), new HttpParameter("user_id", l)
        }));
    }

    public UserList destroyUserListSubscription(int i)
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/destroy.json").toString(), new HttpParameter[] {
            new HttpParameter("list_id", i)
        }));
    }

    public UserList destroyUserListSubscription(long l, String s)
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/destroy.json").toString(), new HttpParameter[] {
            new HttpParameter("owner_id", l), new HttpParameter("slug", s)
        }));
    }

    public UserList destroyUserListSubscription(String s, String s1)
        throws TwitterException
    {
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/destroy.json").toString(), new HttpParameter[] {
            new HttpParameter("owner_screen_name", s), new HttpParameter("slug", s1)
        }));
    }

    public TwitterAPIConfiguration getAPIConfiguration()
        throws TwitterException
    {
        return factory.createTwitterAPIConfiguration(get((new StringBuilder()).append(conf.getRestBaseURL()).append("help/configuration.json").toString()));
    }

    public AccountSettings getAccountSettings()
        throws TwitterException
    {
        return factory.createAccountSettings(get((new StringBuilder()).append(conf.getRestBaseURL()).append("account/settings.json").toString()));
    }

    public ResponseList getAvailableTrends()
        throws TwitterException
    {
        return factory.createLocationList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("trends/available.json").toString()));
    }

    public ResponseList getAvailableTrends(GeoLocation geolocation)
        throws TwitterException
    {
        return getClosestTrends(geolocation);
    }

    public IDs getBlocksIDs()
        throws TwitterException
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("blocks/ids.json").toString()));
    }

    public IDs getBlocksIDs(long l)
        throws TwitterException
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("blocks/ids.json?cursor=").append(l).toString()));
    }

    public PagableResponseList getBlocksList()
        throws TwitterException
    {
        return getBlocksList(-1L);
    }

    public PagableResponseList getBlocksList(long l)
        throws TwitterException
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("blocks/list.json?cursor=").append(l).toString()));
    }

    public ResponseList getClosestTrends(GeoLocation geolocation)
        throws TwitterException
    {
        return factory.createLocationList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("trends/closest.json").toString(), new HttpParameter[] {
            new HttpParameter("lat", geolocation.getLatitude()), new HttpParameter("long", geolocation.getLongitude())
        }));
    }

    public ResponseList getContributees(long l)
        throws TwitterException
    {
        return factory.createUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/contributees.json?user_id=").append(l).toString()));
    }

    public ResponseList getContributees(String s)
        throws TwitterException
    {
        return factory.createUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/contributees.json?screen_name=").append(s).toString()));
    }

    public ResponseList getContributors(long l)
        throws TwitterException
    {
        return factory.createUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/contributors.json?user_id=").append(l).toString()));
    }

    public ResponseList getContributors(String s)
        throws TwitterException
    {
        return factory.createUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/contributors.json?screen_name=").append(s).toString()));
    }

    public ResponseList getDirectMessages()
        throws TwitterException
    {
        return factory.createDirectMessageList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages.json").toString()));
    }

    public ResponseList getDirectMessages(Paging paging)
        throws TwitterException
    {
        return factory.createDirectMessageList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages.json").toString(), paging.asPostParameterArray()));
    }

    public ResponseList getFavorites()
        throws TwitterException
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/list.json").toString()));
    }

    public ResponseList getFavorites(long l)
        throws TwitterException
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/list.json?user_id=").append(l).toString()));
    }

    public ResponseList getFavorites(long l, Paging paging)
        throws TwitterException
    {
        z_T4JInternalFactory z_t4jinternalfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/list.json").toString();
        HttpParameter httpparameter = new HttpParameter("user_id", l);
        paging = paging.asPostParameterArray();
        return z_t4jinternalfactory.createStatusList(get(s, mergeParameters(new HttpParameter[] {
            httpparameter
        }, paging)));
    }

    public ResponseList getFavorites(String s)
        throws TwitterException
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/list.json?screen_name=").append(s).toString()));
    }

    public ResponseList getFavorites(String s, Paging paging)
        throws TwitterException
    {
        z_T4JInternalFactory z_t4jinternalfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/list.json").toString();
        s = new HttpParameter("screen_name", s);
        paging = paging.asPostParameterArray();
        return z_t4jinternalfactory.createStatusList(get(s1, mergeParameters(new HttpParameter[] {
            s
        }, paging)));
    }

    public ResponseList getFavorites(Paging paging)
        throws TwitterException
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/list.json").toString(), paging.asPostParameterArray()));
    }

    public IDs getFollowersIDs(long l)
        throws TwitterException
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("followers/ids.json?cursor=").append(l).toString()));
    }

    public IDs getFollowersIDs(long l, long l1)
        throws TwitterException
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("followers/ids.json?user_id=").append(l).append("&cursor=").append(l1).toString()));
    }

    public IDs getFollowersIDs(String s, long l)
        throws TwitterException
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("followers/ids.json?screen_name=").append(s).append("&cursor=").append(l).toString()));
    }

    public PagableResponseList getFollowersList(long l, long l1)
        throws TwitterException
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("followers/list.json?user_id=").append(l).append("&cursor=").append(l1).toString()));
    }

    public PagableResponseList getFollowersList(String s, long l)
        throws TwitterException
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("followers/list.json?screen_name=").append(s).append("&cursor=").append(l).toString()));
    }

    public IDs getFriendsIDs(long l)
        throws TwitterException
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friends/ids.json?cursor=").append(l).toString()));
    }

    public IDs getFriendsIDs(long l, long l1)
        throws TwitterException
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friends/ids.json?user_id=").append(l).append("&cursor=").append(l1).toString()));
    }

    public IDs getFriendsIDs(String s, long l)
        throws TwitterException
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friends/ids.json?screen_name=").append(s).append("&cursor=").append(l).toString()));
    }

    public PagableResponseList getFriendsList(long l, long l1)
        throws TwitterException
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friends/list.json?user_id=").append(l).append("&cursor=").append(l1).toString()));
    }

    public PagableResponseList getFriendsList(String s, long l)
        throws TwitterException
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friends/list.json?screen_name=").append(s).append("&cursor=").append(l).toString()));
    }

    public Place getGeoDetails(String s)
        throws TwitterException
    {
        return factory.createPlace(get((new StringBuilder()).append(conf.getRestBaseURL()).append("geo/id/").append(s).append(".json").toString()));
    }

    public ResponseList getHomeTimeline()
        throws TwitterException
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/home_timeline.json").toString(), new HttpParameter[] {
            INCLUDE_MY_RETWEET
        }));
    }

    public ResponseList getHomeTimeline(Paging paging)
        throws TwitterException
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/home_timeline.json").toString(), mergeParameters(paging.asPostParameterArray(), new HttpParameter[] {
            INCLUDE_MY_RETWEET
        })));
    }

    public IDs getIncomingFriendships(long l)
        throws TwitterException
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/incoming.json?cursor=").append(l).toString()));
    }

    public ResponseList getLanguages()
        throws TwitterException
    {
        return factory.createLanguageList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("help/languages.json").toString()));
    }

    public Trends getLocationTrends(int i)
        throws TwitterException
    {
        return getPlaceTrends(i);
    }

    public ResponseList getMemberSuggestions(String s)
        throws TwitterException
    {
        try
        {
            s = get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/suggestions/").append(URLEncoder.encode(s, "UTF-8")).append("/members.json").toString());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new RuntimeException(s);
        }
        return factory.createUserListFromJSONArray(s);
    }

    public ResponseList getMentions()
        throws TwitterException
    {
        return getMentionsTimeline();
    }

    public ResponseList getMentions(Paging paging)
        throws TwitterException
    {
        return getMentionsTimeline(paging);
    }

    public ResponseList getMentionsTimeline()
        throws TwitterException
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/mentions_timeline.json").toString()));
    }

    public ResponseList getMentionsTimeline(Paging paging)
        throws TwitterException
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/mentions_timeline.json").toString(), paging.asPostParameterArray()));
    }

    public OEmbed getOEmbed(OEmbedRequest oembedrequest)
        throws TwitterException
    {
        return factory.createOEmbed(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/oembed.json").toString(), oembedrequest.asHttpParameterArray()));
    }

    public IDs getOutgoingFriendships(long l)
        throws TwitterException
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/outgoing.json?cursor=").append(l).toString()));
    }

    public Trends getPlaceTrends(int i)
        throws TwitterException
    {
        return factory.createTrends(get((new StringBuilder()).append(conf.getRestBaseURL()).append("trends/place.json?id=").append(i).toString()));
    }

    public String getPrivacyPolicy()
        throws TwitterException
    {
        String s;
        try
        {
            s = get((new StringBuilder()).append(conf.getRestBaseURL()).append("help/privacy.json").toString()).asJSONObject().getString("privacy");
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return s;
    }

    public Map getRateLimitStatus()
        throws TwitterException
    {
        return factory.createRateLimitStatuses(get((new StringBuilder()).append(conf.getRestBaseURL()).append("application/rate_limit_status.json").toString()));
    }

    public transient Map getRateLimitStatus(String as[])
        throws TwitterException
    {
        return factory.createRateLimitStatuses(get((new StringBuilder()).append(conf.getRestBaseURL()).append("application/rate_limit_status.json?resources=").append(z_T4JInternalStringUtil.join(as)).toString()));
    }

    public ResponseList getRetweets(long l)
        throws TwitterException
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/retweets/").append(l).append(".json?count=100").toString()));
    }

    public ResponseList getRetweetsOfMe()
        throws TwitterException
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/retweets_of_me.json").toString()));
    }

    public ResponseList getRetweetsOfMe(Paging paging)
        throws TwitterException
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/retweets_of_me.json").toString(), paging.asPostParameterArray()));
    }

    public ResponseList getSavedSearches()
        throws TwitterException
    {
        return factory.createSavedSearchList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("saved_searches/list.json").toString()));
    }

    public ResponseList getSentDirectMessages()
        throws TwitterException
    {
        return factory.createDirectMessageList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages/sent.json").toString()));
    }

    public ResponseList getSentDirectMessages(Paging paging)
        throws TwitterException
    {
        return factory.createDirectMessageList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages/sent.json").toString(), paging.asPostParameterArray()));
    }

    public SimilarPlaces getSimilarPlaces(GeoLocation geolocation, String s, String s1, String s2)
        throws TwitterException
    {
        ArrayList arraylist = new ArrayList(3);
        arraylist.add(new HttpParameter("lat", geolocation.getLatitude()));
        arraylist.add(new HttpParameter("long", geolocation.getLongitude()));
        arraylist.add(new HttpParameter("name", s));
        if (s1 != null)
        {
            arraylist.add(new HttpParameter("contained_within", s1));
        }
        if (s2 != null)
        {
            arraylist.add(new HttpParameter("attribute:street_address", s2));
        }
        return factory.createSimilarPlaces(get((new StringBuilder()).append(conf.getRestBaseURL()).append("geo/similar_places.json").toString(), (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()])));
    }

    public ResponseList getSuggestedUserCategories()
        throws TwitterException
    {
        return factory.createCategoryList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/suggestions.json").toString()));
    }

    public String getTermsOfService()
        throws TwitterException
    {
        String s;
        try
        {
            s = get((new StringBuilder()).append(conf.getRestBaseURL()).append("help/tos.json").toString()).asJSONObject().getString("tos");
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return s;
    }

    public PagableResponseList getUserListMembers(int i, long l)
        throws TwitterException
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members.json?list_id=").append(i).append("&cursor=").append(l).toString()));
    }

    public PagableResponseList getUserListMembers(long l, String s, long l1)
        throws TwitterException
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members.json?owner_id=").append(l).append("&slug=").append(s).append("&cursor=").append(l1).toString()));
    }

    public PagableResponseList getUserListMembers(String s, String s1, long l)
        throws TwitterException
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members.json?owner_screen_name=").append(s).append("&slug=").append(s1).append("&cursor=").append(l).toString()));
    }

    public PagableResponseList getUserListMemberships(long l)
        throws TwitterException
    {
        return factory.createPagableUserListList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/memberships.json?cursor=").append(l).toString()));
    }

    public PagableResponseList getUserListMemberships(long l, long l1)
        throws TwitterException
    {
        return getUserListMemberships(l, l1, false);
    }

    public PagableResponseList getUserListMemberships(long l, long l1, boolean flag)
        throws TwitterException
    {
        return factory.createPagableUserListList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/memberships.json?user_id=").append(l).append("&cursor=").append(l1).append("&filter_to_owned_lists=").append(flag).toString()));
    }

    public PagableResponseList getUserListMemberships(String s, long l)
        throws TwitterException
    {
        return getUserListMemberships(s, l, false);
    }

    public PagableResponseList getUserListMemberships(String s, long l, boolean flag)
        throws TwitterException
    {
        return factory.createPagableUserListList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/memberships.json?screen_name=").append(s).append("&cursor=").append(l).append("&filter_to_owned_lists=").append(flag).toString()));
    }

    public ResponseList getUserListStatuses(int i, Paging paging)
        throws TwitterException
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/statuses.json").toString(), mergeParameters(paging.asPostParameterArray(Paging.SMCP, "count"), new HttpParameter("list_id", i))));
    }

    public ResponseList getUserListStatuses(long l, String s, Paging paging)
        throws TwitterException
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/statuses.json").toString(), mergeParameters(paging.asPostParameterArray(Paging.SMCP, "count"), new HttpParameter[] {
            new HttpParameter("owner_id", l), new HttpParameter("slug", s)
        })));
    }

    public ResponseList getUserListStatuses(String s, String s1, Paging paging)
        throws TwitterException
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/statuses.json").toString(), mergeParameters(paging.asPostParameterArray(Paging.SMCP, "count"), new HttpParameter[] {
            new HttpParameter("owner_screen_name", s), new HttpParameter("slug", s1)
        })));
    }

    public PagableResponseList getUserListSubscribers(int i, long l)
        throws TwitterException
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers.json?list_id=").append(i).append("&cursor=").append(l).toString()));
    }

    public PagableResponseList getUserListSubscribers(long l, String s, long l1)
        throws TwitterException
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers.json?owner_id=").append(l).append("&slug=").append(s).append("&cursor=").append(l1).toString()));
    }

    public PagableResponseList getUserListSubscribers(String s, String s1, long l)
        throws TwitterException
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers.json?owner_screen_name=").append(s).append("&slug=").append(s1).append("&cursor=").append(l).toString()));
    }

    public PagableResponseList getUserListSubscriptions(String s, long l)
        throws TwitterException
    {
        return factory.createPagableUserListList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscriptions.json?screen_name=").append(s).append("&cursor=").append(l).toString()));
    }

    public ResponseList getUserLists(long l)
        throws TwitterException
    {
        return factory.createUserListList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/list.json?user_id=").append(l).toString()));
    }

    public ResponseList getUserLists(String s)
        throws TwitterException
    {
        return factory.createUserListList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/list.json?screen_name=").append(s).toString()));
    }

    public ResponseList getUserSuggestions(String s)
        throws TwitterException
    {
        try
        {
            s = get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/suggestions/").append(URLEncoder.encode(s, "UTF-8")).append(".json").toString());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new RuntimeException(s);
        }
        return factory.createUserListFromJSONArray_Users(s);
    }

    public ResponseList getUserTimeline()
        throws TwitterException
    {
        return getUserTimeline(new Paging());
    }

    public ResponseList getUserTimeline(long l)
        throws TwitterException
    {
        return getUserTimeline(l, new Paging());
    }

    public ResponseList getUserTimeline(long l, Paging paging)
        throws TwitterException
    {
        z_T4JInternalFactory z_t4jinternalfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/user_timeline.json").toString();
        HttpParameter httpparameter = new HttpParameter("user_id", l);
        HttpParameter httpparameter1 = INCLUDE_MY_RETWEET;
        paging = paging.asPostParameterArray();
        return z_t4jinternalfactory.createStatusList(get(s, mergeParameters(new HttpParameter[] {
            httpparameter, httpparameter1
        }, paging)));
    }

    public ResponseList getUserTimeline(String s)
        throws TwitterException
    {
        return getUserTimeline(s, new Paging());
    }

    public ResponseList getUserTimeline(String s, Paging paging)
        throws TwitterException
    {
        z_T4JInternalFactory z_t4jinternalfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/user_timeline.json").toString();
        s = new HttpParameter("screen_name", s);
        HttpParameter httpparameter = INCLUDE_MY_RETWEET;
        paging = paging.asPostParameterArray();
        return z_t4jinternalfactory.createStatusList(get(s1, mergeParameters(new HttpParameter[] {
            s, httpparameter
        }, paging)));
    }

    public ResponseList getUserTimeline(Paging paging)
        throws TwitterException
    {
        z_T4JInternalFactory z_t4jinternalfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/user_timeline.json").toString();
        HttpParameter httpparameter = INCLUDE_MY_RETWEET;
        paging = paging.asPostParameterArray();
        return z_t4jinternalfactory.createStatusList(get(s, mergeParameters(new HttpParameter[] {
            httpparameter
        }, paging)));
    }

    public ResponseList lookupFriendships(long al[])
        throws TwitterException
    {
        return factory.createFriendshipList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/lookup.json?user_id=").append(z_T4JInternalStringUtil.join(al)).toString()));
    }

    public ResponseList lookupFriendships(String as[])
        throws TwitterException
    {
        return factory.createFriendshipList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/lookup.json?screen_name=").append(z_T4JInternalStringUtil.join(as)).toString()));
    }

    public ResponseList lookupUsers(long al[])
        throws TwitterException
    {
        return factory.createUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/lookup.json").toString(), new HttpParameter[] {
            new HttpParameter("user_id", z_T4JInternalStringUtil.join(al))
        }));
    }

    public ResponseList lookupUsers(String as[])
        throws TwitterException
    {
        return factory.createUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/lookup.json").toString(), new HttpParameter[] {
            new HttpParameter("screen_name", z_T4JInternalStringUtil.join(as))
        }));
    }

    public void removeProfileBanner()
        throws TwitterException
    {
        post((new StringBuilder()).append(conf.getRestBaseURL()).append("account/remove_profile_banner.json").toString());
    }

    public User reportSpam(long l)
        throws TwitterException
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("users/report_spam.json?user_id=").append(l).toString()));
    }

    public User reportSpam(String s)
        throws TwitterException
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("users/report_spam.json?screen_name=").append(s).toString()));
    }

    public Status retweetStatus(long l)
        throws TwitterException
    {
        return factory.createStatus(post((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/retweet/").append(l).append(".json").toString()));
    }

    public ResponseList reverseGeoCode(GeoQuery geoquery)
        throws TwitterException
    {
        try
        {
            geoquery = factory.createPlaceList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("geo/reverse_geocode.json").toString(), geoquery.asHttpParameterArray()));
        }
        // Misplaced declaration of an exception variable
        catch (GeoQuery geoquery)
        {
            if (geoquery.getStatusCode() == 404)
            {
                return factory.createEmptyResponseList();
            } else
            {
                throw geoquery;
            }
        }
        return geoquery;
    }

    public QueryResult search(Query query)
        throws TwitterException
    {
        if (query.nextPage() != null)
        {
            return factory.createQueryResult(get((new StringBuilder()).append(conf.getRestBaseURL()).append("search/tweets.json").append(query.nextPage()).toString()), query);
        } else
        {
            return factory.createQueryResult(get((new StringBuilder()).append(conf.getRestBaseURL()).append("search/tweets.json").toString(), query.asHttpParameterArray()), query);
        }
    }

    public ResponseList searchPlaces(GeoQuery geoquery)
        throws TwitterException
    {
        return factory.createPlaceList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("geo/search.json").toString(), geoquery.asHttpParameterArray()));
    }

    public ResponseList searchUsers(String s, int i)
        throws TwitterException
    {
        return factory.createUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/search.json").toString(), new HttpParameter[] {
            new HttpParameter("q", s), new HttpParameter("per_page", 20), new HttpParameter("page", i)
        }));
    }

    public DirectMessage sendDirectMessage(long l, String s)
        throws TwitterException
    {
        return factory.createDirectMessage(post((new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages/new.json").toString(), new HttpParameter[] {
            new HttpParameter("user_id", l), new HttpParameter("text", s)
        }));
    }

    public DirectMessage sendDirectMessage(String s, String s1)
        throws TwitterException
    {
        return factory.createDirectMessage(post((new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages/new.json").toString(), new HttpParameter[] {
            new HttpParameter("screen_name", s), new HttpParameter("text", s1)
        }));
    }

    public DirectMessage showDirectMessage(long l)
        throws TwitterException
    {
        return factory.createDirectMessage(get((new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages/show.json?id=").append(l).toString()));
    }

    public Relationship showFriendship(long l, long l1)
        throws TwitterException
    {
        return factory.createRelationship(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/show.json").toString(), new HttpParameter[] {
            new HttpParameter("source_id", l), new HttpParameter("target_id", l1)
        }));
    }

    public Relationship showFriendship(String s, String s1)
        throws TwitterException
    {
        return factory.createRelationship(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/show.json").toString(), HttpParameter.getParameterArray("source_screen_name", s, "target_screen_name", s1)));
    }

    public SavedSearch showSavedSearch(int i)
        throws TwitterException
    {
        return factory.createSavedSearch(get((new StringBuilder()).append(conf.getRestBaseURL()).append("saved_searches/show/").append(i).append(".json").toString()));
    }

    public Status showStatus(long l)
        throws TwitterException
    {
        return factory.createStatus(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/show/").append(l).append(".json").toString(), new HttpParameter[] {
            INCLUDE_MY_RETWEET
        }));
    }

    public User showUser(long l)
        throws TwitterException
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/show.json?user_id=").append(l).toString()));
    }

    public User showUser(String s)
        throws TwitterException
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/show.json?screen_name=").append(s).toString()));
    }

    public UserList showUserList(int i)
        throws TwitterException
    {
        return factory.createAUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/show.json?list_id=").append(i).toString()));
    }

    public UserList showUserList(long l, String s)
        throws TwitterException
    {
        return factory.createAUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/show.json?owner_id=").append(l).append("&slug=").append(s).toString()));
    }

    public UserList showUserList(String s, String s1)
        throws TwitterException
    {
        return factory.createAUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/show.json?owner_screen_name=").append(s).append("&slug=").append(s1).toString()));
    }

    public User showUserListMembership(int i, long l)
        throws TwitterException
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/show.json?list_id=").append(i).append("&user_id=").append(l).toString()));
    }

    public User showUserListMembership(long l, String s, long l1)
        throws TwitterException
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/show.json?owner_id=").append(l).append("&slug=").append(s).append("&user_id=").append(l1).toString()));
    }

    public User showUserListMembership(String s, String s1, long l)
        throws TwitterException
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/show.json?owner_screen_name=").append(s).append("&slug=").append(s1).append("&user_id=").append(l).toString()));
    }

    public User showUserListSubscription(int i, long l)
        throws TwitterException
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/show.json?list_id=").append(i).append("&user_id=").append(l).toString()));
    }

    public User showUserListSubscription(long l, String s, long l1)
        throws TwitterException
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/show.json?owner_id=").append(l).append("&slug=").append(s).append("&user_id=").append(l1).toString()));
    }

    public User showUserListSubscription(String s, String s1, long l)
        throws TwitterException
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/show.json?owner_screen_name=").append(s).append("&slug=").append(s1).append("&user_id=").append(l).toString()));
    }

    public String toString()
    {
        return (new StringBuilder()).append("TwitterImpl{INCLUDE_MY_RETWEET=").append(INCLUDE_MY_RETWEET).append('}').toString();
    }

    public AccountSettings updateAccountSettings(Integer integer, Boolean boolean1, String s, String s1, String s2, String s3)
        throws TwitterException
    {
        ArrayList arraylist = new ArrayList(6);
        if (integer != null)
        {
            arraylist.add(new HttpParameter("trend_location_woeid", integer.intValue()));
        }
        if (boolean1 != null)
        {
            arraylist.add(new HttpParameter("sleep_time_enabled", boolean1.toString()));
        }
        if (s != null)
        {
            arraylist.add(new HttpParameter("start_sleep_time", s));
        }
        if (s1 != null)
        {
            arraylist.add(new HttpParameter("end_sleep_time", s1));
        }
        if (s2 != null)
        {
            arraylist.add(new HttpParameter("time_zone", s2));
        }
        if (s3 != null)
        {
            arraylist.add(new HttpParameter("lang", s3));
        }
        return factory.createAccountSettings(post((new StringBuilder()).append(conf.getRestBaseURL()).append("account/settings.json").toString(), (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()])));
    }

    public Relationship updateFriendship(long l, boolean flag, boolean flag1)
        throws TwitterException
    {
        return factory.createRelationship(post((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/update.json").toString(), new HttpParameter[] {
            new HttpParameter("user_id", l), new HttpParameter("device", flag), new HttpParameter("retweets", flag1)
        }));
    }

    public Relationship updateFriendship(String s, boolean flag, boolean flag1)
        throws TwitterException
    {
        return factory.createRelationship(post((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/update.json").toString(), new HttpParameter[] {
            new HttpParameter("screen_name", s), new HttpParameter("device", flag), new HttpParameter("retweets", flag)
        }));
    }

    public User updateProfile(String s, String s1, String s2, String s3)
        throws TwitterException
    {
        ArrayList arraylist = new ArrayList(4);
        addParameterToList(arraylist, "name", s);
        addParameterToList(arraylist, "url", s1);
        addParameterToList(arraylist, "location", s2);
        addParameterToList(arraylist, "description", s3);
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile.json").toString(), (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()])));
    }

    public User updateProfileBackgroundImage(File file, boolean flag)
        throws TwitterException
    {
        checkFileValidity(file);
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile_background_image.json").toString(), new HttpParameter[] {
            new HttpParameter("image", file), new HttpParameter("tile", flag)
        }));
    }

    public User updateProfileBackgroundImage(InputStream inputstream, boolean flag)
        throws TwitterException
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile_background_image.json").toString(), new HttpParameter[] {
            new HttpParameter("image", "image", inputstream), new HttpParameter("tile", flag)
        }));
    }

    public void updateProfileBanner(File file)
        throws TwitterException
    {
        checkFileValidity(file);
        post((new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile_banner.json").toString(), new HttpParameter[] {
            new HttpParameter("banner", file)
        });
    }

    public void updateProfileBanner(InputStream inputstream)
        throws TwitterException
    {
        post((new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile_banner.json").toString(), new HttpParameter[] {
            new HttpParameter("banner", "banner", inputstream)
        });
    }

    public User updateProfileColors(String s, String s1, String s2, String s3, String s4)
        throws TwitterException
    {
        ArrayList arraylist = new ArrayList(6);
        addParameterToList(arraylist, "profile_background_color", s);
        addParameterToList(arraylist, "profile_text_color", s1);
        addParameterToList(arraylist, "profile_link_color", s2);
        addParameterToList(arraylist, "profile_sidebar_fill_color", s3);
        addParameterToList(arraylist, "profile_sidebar_border_color", s4);
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile_colors.json").toString(), (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()])));
    }

    public User updateProfileImage(File file)
        throws TwitterException
    {
        checkFileValidity(file);
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile_image.json").toString(), new HttpParameter[] {
            new HttpParameter("image", file)
        }));
    }

    public User updateProfileImage(InputStream inputstream)
        throws TwitterException
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile_image.json").toString(), new HttpParameter[] {
            new HttpParameter("image", "image", inputstream)
        }));
    }

    public Status updateStatus(String s)
        throws TwitterException
    {
        return factory.createStatus(post((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/update.json").toString(), new HttpParameter[] {
            new HttpParameter("status", s)
        }));
    }

    public Status updateStatus(StatusUpdate statusupdate)
        throws TwitterException
    {
        StringBuilder stringbuilder = (new StringBuilder()).append(conf.getRestBaseURL());
        String s;
        if (statusupdate.isWithMedia())
        {
            s = "statuses/update_with_media.json";
        } else
        {
            s = "statuses/update.json";
        }
        s = stringbuilder.append(s).toString();
        return factory.createStatus(post(s, statusupdate.asHttpParameterArray()));
    }

    public UserList updateUserList(int i, String s, boolean flag, String s1)
        throws TwitterException
    {
        return updateUserList(s, flag, s1, new HttpParameter[] {
            new HttpParameter("list_id", i)
        });
    }

    public UserList updateUserList(long l, String s, String s1, boolean flag, String s2)
        throws TwitterException
    {
        return updateUserList(s1, flag, s2, new HttpParameter[] {
            new HttpParameter("owner_id", l), new HttpParameter("slug", s)
        });
    }

    public UserList updateUserList(String s, String s1, String s2, boolean flag, String s3)
        throws TwitterException
    {
        return updateUserList(s2, flag, s3, new HttpParameter[] {
            new HttpParameter("owner_screen_name", s), new HttpParameter("slug", s1)
        });
    }

    public User verifyCredentials()
        throws TwitterException
    {
        return super.fillInIDAndScreenName();
    }

}
