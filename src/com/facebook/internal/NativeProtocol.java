// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.SessionDefaultAudience;
import com.facebook.Settings;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

// Referenced classes of package com.facebook.internal:
//            Utility

public final class NativeProtocol
{
    private static class KatanaAppInfo extends NativeAppInfo
    {

        static final String KATANA_PACKAGE = "com.facebook.katana";

        protected String getPackage()
        {
            return "com.facebook.katana";
        }

        private KatanaAppInfo()
        {
        }

    }

    private static class MessengerAppInfo extends NativeAppInfo
    {

        static final String MESSENGER_PACKAGE = "com.facebook.orca";

        protected String getPackage()
        {
            return "com.facebook.orca";
        }

        private MessengerAppInfo()
        {
        }

    }

    private static abstract class NativeAppInfo
    {

        private static final String FBI_HASH = "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc";
        private static final String FBL_HASH = "5e8f16062ea3cd2c4a0d547876baa6f38cabf625";
        private static final String FBR_HASH = "8a3c4b262d721acd49a4bf97d5213199c86fa2b9";
        private static final HashSet validAppSignatureHashes = buildAppSignatureHashes();

        private static HashSet buildAppSignatureHashes()
        {
            HashSet hashset = new HashSet();
            hashset.add("8a3c4b262d721acd49a4bf97d5213199c86fa2b9");
            hashset.add("a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc");
            hashset.add("5e8f16062ea3cd2c4a0d547876baa6f38cabf625");
            return hashset;
        }

        protected abstract String getPackage();

        public boolean validateSignature(Context context, String s)
        {
            String s1;
            int i;
            s1 = Build.BRAND;
            i = context.getApplicationInfo().flags;
            if (!s1.startsWith("generic") || (i & 2) == 0) goto _L2; else goto _L1
_L1:
            return true;
_L2:
            int j;
            int k;
            try
            {
                context = context.getPackageManager().getPackageInfo(s, 64);
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                return false;
            }
            context = ((PackageInfo) (context)).signatures;
            k = context.length;
            j = 0;
label0:
            do
            {
label1:
                {
                    if (j >= k)
                    {
                        break label1;
                    }
                    s = Utility.sha1hash(context[j].toByteArray());
                    if (validAppSignatureHashes.contains(s))
                    {
                        break label0;
                    }
                    j++;
                }
            } while (true);
            if (true) goto _L1; else goto _L3
_L3:
            return false;
        }


        private NativeAppInfo()
        {
        }

    }

    private static class WakizashiAppInfo extends NativeAppInfo
    {

        static final String WAKIZASHI_PACKAGE = "com.facebook.wakizashi";

        protected String getPackage()
        {
            return "com.facebook.wakizashi";
        }

        private WakizashiAppInfo()
        {
        }

    }


    public static final String ACTION_FEED_DIALOG = "com.facebook.platform.action.request.FEED_DIALOG";
    public static final String ACTION_FEED_DIALOG_REPLY = "com.facebook.platform.action.reply.FEED_DIALOG";
    public static final String ACTION_MESSAGE_DIALOG = "com.facebook.platform.action.request.MESSAGE_DIALOG";
    public static final String ACTION_MESSAGE_DIALOG_REPLY = "com.facebook.platform.action.reply.MESSAGE_DIALOG";
    public static final String ACTION_OGACTIONPUBLISH_DIALOG = "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG";
    public static final String ACTION_OGACTIONPUBLISH_DIALOG_REPLY = "com.facebook.platform.action.reply.OGACTIONPUBLISH_DIALOG";
    public static final String ACTION_OGMESSAGEPUBLISH_DIALOG = "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG";
    public static final String ACTION_OGMESSAGEPUBLISH_DIALOG_REPLY = "com.facebook.platform.action.reply.OGMESSAGEPUBLISH_DIALOG";
    public static final String AUDIENCE_EVERYONE = "everyone";
    public static final String AUDIENCE_FRIENDS = "friends";
    public static final String AUDIENCE_ME = "only_me";
    public static final String BRIDGE_ARG_ACTION_ID_STRING = "action_id";
    public static final String BRIDGE_ARG_APP_NAME_STRING = "app_name";
    public static final String BRIDGE_ARG_ERROR_BUNDLE = "error";
    private static final String CONTENT_SCHEME = "content://";
    public static final int DIALOG_REQUEST_CODE = 64207;
    public static final String ERROR_APPLICATION_ERROR = "ApplicationError";
    public static final String ERROR_NETWORK_ERROR = "NetworkError";
    public static final String ERROR_PERMISSION_DENIED = "PermissionDenied";
    public static final String ERROR_PROTOCOL_ERROR = "ProtocolError";
    public static final String ERROR_SERVICE_DISABLED = "ServiceDisabled";
    public static final String ERROR_UNKNOWN_ERROR = "UnknownError";
    public static final String ERROR_USER_CANCELED = "UserCanceled";
    public static final String EXTRA_ACCESS_TOKEN = "com.facebook.platform.extra.ACCESS_TOKEN";
    public static final String EXTRA_ACTION = "com.facebook.platform.extra.ACTION";
    public static final String EXTRA_ACTION_TYPE = "com.facebook.platform.extra.ACTION_TYPE";
    public static final String EXTRA_APPLICATION_ID = "com.facebook.platform.extra.APPLICATION_ID";
    public static final String EXTRA_APPLICATION_NAME = "com.facebook.platform.extra.APPLICATION_NAME";
    public static final String EXTRA_DATA_FAILURES_FATAL = "com.facebook.platform.extra.DATA_FAILURES_FATAL";
    public static final String EXTRA_DESCRIPTION = "com.facebook.platform.extra.DESCRIPTION";
    public static final String EXTRA_EXPIRES_SECONDS_SINCE_EPOCH = "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH";
    public static final String EXTRA_FRIEND_TAGS = "com.facebook.platform.extra.FRIENDS";
    public static final String EXTRA_GET_INSTALL_DATA_PACKAGE = "com.facebook.platform.extra.INSTALLDATA_PACKAGE";
    public static final String EXTRA_IMAGE = "com.facebook.platform.extra.IMAGE";
    public static final String EXTRA_LINK = "com.facebook.platform.extra.LINK";
    public static final String EXTRA_PERMISSIONS = "com.facebook.platform.extra.PERMISSIONS";
    public static final String EXTRA_PHOTOS = "com.facebook.platform.extra.PHOTOS";
    public static final String EXTRA_PLACE_TAG = "com.facebook.platform.extra.PLACE";
    public static final String EXTRA_PREVIEW_PROPERTY_NAME = "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME";
    public static final String EXTRA_PROTOCOL_ACTION = "com.facebook.platform.protocol.PROTOCOL_ACTION";
    public static final String EXTRA_PROTOCOL_BRIDGE_ARGS = "com.facebook.platform.protocol.BRIDGE_ARGS";
    public static final String EXTRA_PROTOCOL_CALL_ID = "com.facebook.platform.protocol.CALL_ID";
    public static final String EXTRA_PROTOCOL_METHOD_ARGS = "com.facebook.platform.protocol.METHOD_ARGS";
    public static final String EXTRA_PROTOCOL_METHOD_RESULTS = "com.facebook.platform.protocol.RESULT_ARGS";
    public static final String EXTRA_PROTOCOL_VERSION = "com.facebook.platform.protocol.PROTOCOL_VERSION";
    static final String EXTRA_PROTOCOL_VERSIONS = "com.facebook.platform.extra.PROTOCOL_VERSIONS";
    public static final String EXTRA_REF = "com.facebook.platform.extra.REF";
    public static final String EXTRA_SUBTITLE = "com.facebook.platform.extra.SUBTITLE";
    public static final String EXTRA_TITLE = "com.facebook.platform.extra.TITLE";
    private static final NativeAppInfo FACEBOOK_APP_INFO = new KatanaAppInfo();
    private static final String FACEBOOK_PROXY_AUTH_ACTIVITY = "com.facebook.katana.ProxyAuth";
    public static final String FACEBOOK_PROXY_AUTH_APP_ID_KEY = "client_id";
    public static final String FACEBOOK_PROXY_AUTH_E2E_KEY = "e2e";
    public static final String FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY = "scope";
    private static final String FACEBOOK_TOKEN_REFRESH_ACTIVITY = "com.facebook.katana.platform.TokenRefreshService";
    public static final String IMAGE_URL_KEY = "url";
    public static final String IMAGE_USER_GENERATED_KEY = "user_generated";
    static final String INTENT_ACTION_PLATFORM_ACTIVITY = "com.facebook.platform.PLATFORM_ACTIVITY";
    static final String INTENT_ACTION_PLATFORM_SERVICE = "com.facebook.platform.PLATFORM_SERVICE";
    private static final List KNOWN_PROTOCOL_VERSIONS = Arrays.asList(new Integer[] {
        Integer.valueOf(0x133529d), Integer.valueOf(0x1335124), Integer.valueOf(0x13350ac), Integer.valueOf(0x1332d23), Integer.valueOf(0x1332b3a), Integer.valueOf(0x1332ac6), Integer.valueOf(0x133060d)
    });
    public static final int MESSAGE_GET_ACCESS_TOKEN_REPLY = 0x10001;
    public static final int MESSAGE_GET_ACCESS_TOKEN_REQUEST = 0x10000;
    public static final int MESSAGE_GET_INSTALL_DATA_REPLY = 0x10005;
    public static final int MESSAGE_GET_INSTALL_DATA_REQUEST = 0x10004;
    static final int MESSAGE_GET_PROTOCOL_VERSIONS_REPLY = 0x10003;
    static final int MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST = 0x10002;
    public static final String METHOD_ARGS_ACTION = "ACTION";
    public static final String METHOD_ARGS_ACTION_TYPE = "ACTION_TYPE";
    public static final String METHOD_ARGS_DATA_FAILURES_FATAL = "DATA_FAILURES_FATAL";
    public static final String METHOD_ARGS_DESCRIPTION = "DESCRIPTION";
    public static final String METHOD_ARGS_FRIEND_TAGS = "FRIENDS";
    public static final String METHOD_ARGS_IMAGE = "IMAGE";
    public static final String METHOD_ARGS_LINK = "LINK";
    public static final String METHOD_ARGS_PHOTOS = "PHOTOS";
    public static final String METHOD_ARGS_PLACE_TAG = "PLACE";
    public static final String METHOD_ARGS_PREVIEW_PROPERTY_NAME = "PREVIEW_PROPERTY_NAME";
    public static final String METHOD_ARGS_REF = "REF";
    public static final String METHOD_ARGS_SUBTITLE = "SUBTITLE";
    public static final String METHOD_ARGS_TITLE = "TITLE";
    public static final int NO_PROTOCOL_AVAILABLE = -1;
    public static final String OPEN_GRAPH_CREATE_OBJECT_KEY = "fbsdk:create_object";
    private static final String PLATFORM_PROVIDER_VERSIONS = ".provider.PlatformProvider/versions";
    private static final String PLATFORM_PROVIDER_VERSION_COLUMN = "version";
    public static final int PROTOCOL_VERSION_20121101 = 0x133060d;
    public static final int PROTOCOL_VERSION_20130502 = 0x1332ac6;
    public static final int PROTOCOL_VERSION_20130618 = 0x1332b3a;
    public static final int PROTOCOL_VERSION_20131107 = 0x1332d23;
    public static final int PROTOCOL_VERSION_20140204 = 0x13350ac;
    public static final int PROTOCOL_VERSION_20140324 = 0x1335124;
    public static final int PROTOCOL_VERSION_20140701 = 0x133529d;
    public static final String STATUS_ERROR_CODE = "com.facebook.platform.status.ERROR_CODE";
    public static final String STATUS_ERROR_DESCRIPTION = "com.facebook.platform.status.ERROR_DESCRIPTION";
    public static final String STATUS_ERROR_JSON = "com.facebook.platform.status.ERROR_JSON";
    public static final String STATUS_ERROR_SUBCODE = "com.facebook.platform.status.ERROR_SUBCODE";
    public static final String STATUS_ERROR_TYPE = "com.facebook.platform.status.ERROR_TYPE";
    private static Map actionToAppInfoMap = buildActionToAppInfoMap();
    private static List facebookAppInfoList = buildFacebookAppList();

    public NativeProtocol()
    {
    }

    private static Map buildActionToAppInfoMap()
    {
        HashMap hashmap = new HashMap();
        ArrayList arraylist = new ArrayList();
        arraylist.add(new MessengerAppInfo());
        hashmap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", facebookAppInfoList);
        hashmap.put("com.facebook.platform.action.request.FEED_DIALOG", facebookAppInfoList);
        hashmap.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arraylist);
        hashmap.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arraylist);
        return hashmap;
    }

    private static List buildFacebookAppList()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(FACEBOOK_APP_INFO);
        arraylist.add(new WakizashiAppInfo());
        return arraylist;
    }

    private static Uri buildPlatformProviderVersionURI(NativeAppInfo nativeappinfo)
    {
        return Uri.parse((new StringBuilder()).append("content://").append(nativeappinfo.getPackage()).append(".provider.PlatformProvider/versions").toString());
    }

    public static Intent createPlatformActivityIntent(Context context, String s, String s1, int i, String s2, Bundle bundle)
    {
        Intent intent = findActivityIntent(context, "com.facebook.platform.PLATFORM_ACTIVITY", s1);
        if (intent == null)
        {
            return null;
        }
        context = Utility.getMetadataApplicationId(context);
        intent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", i).putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", s1).putExtra("com.facebook.platform.extra.APPLICATION_ID", context);
        if (isVersionCompatibleWithBucketedIntent(i))
        {
            context = new Bundle();
            context.putString("action_id", s);
            context.putString("app_name", s2);
            intent.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", context);
            if (bundle == null)
            {
                context = new Bundle();
            } else
            {
                context = bundle;
            }
            intent.putExtra("com.facebook.platform.protocol.METHOD_ARGS", context);
            return intent;
        } else
        {
            intent.putExtra("com.facebook.platform.protocol.CALL_ID", s);
            intent.putExtra("com.facebook.platform.extra.APPLICATION_NAME", s2);
            intent.putExtras(bundle);
            return intent;
        }
    }

    public static Intent createPlatformServiceIntent(Context context)
    {
        for (Iterator iterator = facebookAppInfoList.iterator(); iterator.hasNext();)
        {
            Object obj = (NativeAppInfo)iterator.next();
            obj = validateServiceIntent(context, (new Intent("com.facebook.platform.PLATFORM_SERVICE")).setPackage(((NativeAppInfo) (obj)).getPackage()).addCategory("android.intent.category.DEFAULT"), ((NativeAppInfo) (obj)));
            if (obj != null)
            {
                return ((Intent) (obj));
            }
        }

        return null;
    }

    public static Intent createProxyAuthIntent(Context context, String s, List list, String s1, boolean flag, SessionDefaultAudience sessiondefaultaudience)
    {
        for (Iterator iterator = facebookAppInfoList.iterator(); iterator.hasNext();)
        {
            Object obj = (NativeAppInfo)iterator.next();
            Intent intent = (new Intent()).setClassName(((NativeAppInfo) (obj)).getPackage(), "com.facebook.katana.ProxyAuth").putExtra("client_id", s);
            if (!Utility.isNullOrEmpty(list))
            {
                intent.putExtra("scope", TextUtils.join(",", list));
            }
            if (!Utility.isNullOrEmpty(s1))
            {
                intent.putExtra("e2e", s1);
            }
            intent.putExtra("response_type", "token");
            intent.putExtra("return_scopes", "true");
            intent.putExtra("default_audience", sessiondefaultaudience.getNativeProtocolAudience());
            if (!Settings.getPlatformCompatibilityEnabled())
            {
                intent.putExtra("legacy_override", "v2.1");
                if (flag)
                {
                    intent.putExtra("auth_type", "rerequest");
                }
            }
            obj = validateActivityIntent(context, intent, ((NativeAppInfo) (obj)));
            if (obj != null)
            {
                return ((Intent) (obj));
            }
        }

        return null;
    }

    public static Intent createTokenRefreshIntent(Context context)
    {
        for (Iterator iterator = facebookAppInfoList.iterator(); iterator.hasNext();)
        {
            Object obj = (NativeAppInfo)iterator.next();
            obj = validateServiceIntent(context, (new Intent()).setClassName(((NativeAppInfo) (obj)).getPackage(), "com.facebook.katana.platform.TokenRefreshService"), ((NativeAppInfo) (obj)));
            if (obj != null)
            {
                return ((Intent) (obj));
            }
        }

        return null;
    }

    private static Intent findActivityIntent(Context context, String s, String s1)
    {
        Object obj = (List)actionToAppInfoMap.get(s1);
        if (obj != null) goto _L2; else goto _L1
_L1:
        s1 = null;
_L4:
        return s1;
_L2:
        s1 = null;
        Iterator iterator = ((List) (obj)).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            s1 = (NativeAppInfo)iterator.next();
            obj = validateActivityIntent(context, (new Intent()).setAction(s).setPackage(s1.getPackage()).addCategory("android.intent.category.DEFAULT"), s1);
            s1 = ((String) (obj));
        } while (obj == null);
        break; /* Loop/switch isn't completed */
        if (true) goto _L4; else goto _L3
_L3:
        return ((Intent) (obj));
    }

    public static Bundle getBridgeArgumentsFromIntent(Intent intent)
    {
        if (!isVersionCompatibleWithBucketedIntent(getProtocolVersionFromIntent(intent)))
        {
            return null;
        } else
        {
            return intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
        }
    }

    public static UUID getCallIdFromIntent(Intent intent)
    {
        int i = getProtocolVersionFromIntent(intent);
        UUID uuid = null;
        if (isVersionCompatibleWithBucketedIntent(i))
        {
            Bundle bundle = intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
            intent = uuid;
            if (bundle != null)
            {
                intent = bundle.getString("action_id");
            }
        } else
        {
            intent = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
        }
        uuid = null;
        if (intent != null)
        {
            try
            {
                uuid = UUID.fromString(intent);
            }
            // Misplaced declaration of an exception variable
            catch (Intent intent)
            {
                return null;
            }
        }
        return uuid;
    }

    public static Exception getErrorFromResult(Intent intent)
    {
        if (!isErrorResult(intent))
        {
            return null;
        }
        Bundle bundle = getBridgeArgumentsFromIntent(intent);
        if (bundle != null)
        {
            bundle = bundle.getBundle("error");
            if (bundle != null)
            {
                return getErrorFromResult(bundle);
            }
        }
        return getErrorFromResult(intent.getExtras());
    }

    public static Exception getErrorFromResult(Bundle bundle)
    {
        String s = bundle.getString("com.facebook.platform.status.ERROR_TYPE");
        bundle = bundle.getString("com.facebook.platform.status.ERROR_DESCRIPTION");
        if (s != null && s.equalsIgnoreCase("UserCanceled"))
        {
            return new FacebookOperationCanceledException(bundle);
        } else
        {
            return new FacebookException(bundle);
        }
    }

    public static int getLatestAvailableProtocolVersionForAction(Context context, String s, int i)
    {
        return getLatestAvailableProtocolVersionForAppInfoList(context, (List)actionToAppInfoMap.get(s), i);
    }

    private static int getLatestAvailableProtocolVersionForAppInfo(Context context, NativeAppInfo nativeappinfo, int i)
    {
        Object obj;
        obj = context.getContentResolver();
        nativeappinfo = buildPlatformProviderVersionURI(nativeappinfo);
        context = null;
        nativeappinfo = ((ContentResolver) (obj)).query(nativeappinfo, new String[] {
            "version"
        }, null, null, null);
        if (nativeappinfo != null) goto _L2; else goto _L1
_L1:
        if (nativeappinfo != null)
        {
            nativeappinfo.close();
        }
        i = -1;
_L8:
        return i;
_L2:
        context = nativeappinfo;
        obj = new HashSet();
_L4:
        context = nativeappinfo;
        if (!nativeappinfo.moveToNext())
        {
            break; /* Loop/switch isn't completed */
        }
        context = nativeappinfo;
        ((Set) (obj)).add(Integer.valueOf(nativeappinfo.getInt(nativeappinfo.getColumnIndex("version"))));
        if (true) goto _L4; else goto _L3
        nativeappinfo;
        if (context != null)
        {
            context.close();
        }
        throw nativeappinfo;
_L3:
        context = nativeappinfo;
        Iterator iterator = KNOWN_PROTOCOL_VERSIONS.iterator();
_L6:
        context = nativeappinfo;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        context = nativeappinfo;
        Integer integer = (Integer)iterator.next();
        context = nativeappinfo;
        int j = integer.intValue();
        if (j < i)
        {
            if (nativeappinfo != null)
            {
                nativeappinfo.close();
            }
            return -1;
        }
        context = nativeappinfo;
        if (!((Set) (obj)).contains(integer)) goto _L6; else goto _L5
_L5:
        context = nativeappinfo;
        j = integer.intValue();
        i = j;
        if (nativeappinfo != null)
        {
            nativeappinfo.close();
            return j;
        }
        if (true) goto _L8; else goto _L7
_L7:
        if (nativeappinfo != null)
        {
            nativeappinfo.close();
        }
        return -1;
    }

    private static int getLatestAvailableProtocolVersionForAppInfoList(Context context, List list, int i)
    {
        if (list == null)
        {
            return -1;
        }
        for (list = list.iterator(); list.hasNext();)
        {
            int j = getLatestAvailableProtocolVersionForAppInfo(context, (NativeAppInfo)list.next(), i);
            if (j != -1)
            {
                return j;
            }
        }

        return -1;
    }

    public static int getLatestAvailableProtocolVersionForService(Context context, int i)
    {
        return getLatestAvailableProtocolVersionForAppInfoList(context, facebookAppInfoList, i);
    }

    public static int getProtocolVersionFromIntent(Intent intent)
    {
        return intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
    }

    public static Bundle getSuccessResultsFromIntent(Intent intent)
    {
        int i = getProtocolVersionFromIntent(intent);
        intent = intent.getExtras();
        if (!isVersionCompatibleWithBucketedIntent(i) || intent == null)
        {
            return intent;
        } else
        {
            return intent.getBundle("com.facebook.platform.protocol.RESULT_ARGS");
        }
    }

    public static boolean isErrorResult(Intent intent)
    {
        Bundle bundle = getBridgeArgumentsFromIntent(intent);
        if (bundle != null)
        {
            return bundle.containsKey("error");
        } else
        {
            return intent.hasExtra("com.facebook.platform.status.ERROR_TYPE");
        }
    }

    public static boolean isVersionCompatibleWithBucketedIntent(int i)
    {
        return KNOWN_PROTOCOL_VERSIONS.contains(Integer.valueOf(i)) && i >= 0x133529d;
    }

    static Intent validateActivityIntent(Context context, Intent intent, NativeAppInfo nativeappinfo)
    {
        if (intent == null)
        {
            intent = null;
        } else
        {
            ResolveInfo resolveinfo = context.getPackageManager().resolveActivity(intent, 0);
            if (resolveinfo == null)
            {
                return null;
            }
            if (!nativeappinfo.validateSignature(context, resolveinfo.activityInfo.packageName))
            {
                return null;
            }
        }
        return intent;
    }

    static Intent validateServiceIntent(Context context, Intent intent, NativeAppInfo nativeappinfo)
    {
        if (intent == null)
        {
            intent = null;
        } else
        {
            ResolveInfo resolveinfo = context.getPackageManager().resolveService(intent, 0);
            if (resolveinfo == null)
            {
                return null;
            }
            if (!nativeappinfo.validateSignature(context, resolveinfo.serviceInfo.packageName))
            {
                return null;
            }
        }
        return intent;
    }

}
