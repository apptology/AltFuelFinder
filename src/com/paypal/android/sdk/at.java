// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;


public final class at extends Enum
{

    public static final at A;
    public static final at B;
    public static final at C;
    public static final at D;
    public static final at E;
    public static final at F;
    public static final at G;
    public static final at H;
    public static final at I;
    public static final at J;
    public static final at K;
    public static final at L;
    public static final at M;
    public static final at N;
    public static final at O;
    public static final at P;
    public static final at Q;
    public static final at R;
    public static final at S;
    public static final at T;
    public static final at U;
    public static final at V;
    private static at W;
    private static at X;
    private static at Y;
    private static at Z;
    public static final at a;
    private static at aA;
    private static at aB;
    private static final at aD[];
    private static at aa;
    private static at ab;
    private static at ac;
    private static at ad;
    private static at ae;
    private static at af;
    private static at ag;
    private static at ah;
    private static at ai;
    private static at aj;
    private static at ak;
    private static at al;
    private static at am;
    private static at an;
    private static at ao;
    private static at ap;
    private static at aq;
    private static at ar;
    private static at as;
    private static at at;
    private static at au;
    private static at av;
    private static at aw;
    private static at ax;
    private static at ay;
    private static at az;
    public static final at b;
    public static final at c;
    public static final at d;
    public static final at e;
    public static final at f;
    public static final at g;
    public static final at h;
    public static final at i;
    public static final at j;
    public static final at k;
    public static final at l;
    public static final at m;
    public static final at n;
    public static final at o;
    public static final at p;
    public static final at q;
    public static final at r;
    public static final at s;
    public static final at t;
    public static final at u;
    public static final at v;
    public static final at w;
    public static final at x;
    public static final at y;
    public static final at z;
    private int aC;

    private at(String s1, int i1, int j1)
    {
        super(s1, i1);
        aC = j1;
    }

    public static at valueOf(String s1)
    {
        return (at)Enum.valueOf(com/paypal/android/sdk/at, s1);
    }

    public static at[] values()
    {
        return (at[])aD.clone();
    }

    public final int a()
    {
        return aC;
    }

    static 
    {
        W = new at("PPRiskDataAnId", 0, 0);
        a = new at("PPRiskDataAppGuid", 1, 1);
        b = new at("PPRiskDataAppId", 2, 2);
        c = new at("PPRiskDataAppVersion", 3, 3);
        d = new at("PPRiskDataBaseStationId", 4, 4);
        e = new at("PPRiskDataBssid", 5, 5);
        f = new at("PPRiskDataCellId", 6, 6);
        X = new at("PPRiskDataClrVersion", 7, 7);
        Y = new at("PPRiskDataCompVersion", 8, 8);
        Z = new at("PPRiskDataConfUrl", 9, 9);
        aa = new at("PPRiskDataConfVersion", 10, 10);
        g = new at("PPRiskDataConnType", 11, 11);
        ab = new at("PPRiskDataDeviceFirmwareVersion", 12, 12);
        h = new at("PPRiskDataDeviceId", 13, 13);
        i = new at("PPRiskDataDeviceModel", 14, 14);
        j = new at("PPRiskDataDeviceName", 15, 15);
        k = new at("PPRiskDataDeviceUptime", 16, 16);
        ac = new at("PPRiskDataDongleDeviceId", 17, 17);
        ad = new at("PPRiskDataEmailConfigured", 18, 18);
        ae = new at("PPRiskDataEmulator", 19, 19);
        af = new at("PPRiskDataError", 20, 20);
        l = new at("PPRiskDataIpAddrs", 21, 21);
        ag = new at("PPRiskDataKeyboardPresent", 22, 22);
        m = new at("PPRiskDataKnownApps", 23, 23);
        n = new at("PPRiskDataLine1Number", 24, 24);
        o = new at("PPRiskDataLinkerId", 25, 25);
        ah = new at("PPRiskDataLicenseAccepted", 26, 26);
        p = new at("PPRiskDataLocaleCountry", 27, 27);
        q = new at("PPRiskDataLocaleLang", 28, 28);
        r = new at("PPRiskDataLocation", 29, 29);
        s = new at("PPRiskDataLocationAreaCode", 30, 30);
        ai = new at("PPRiskDataLocationAuthStatus", 31, 31);
        t = new at("PPRiskDataMacAddrs", 32, 32);
        aj = new at("PPRiskDataMobileOperatorName", 33, 33);
        u = new at("PPRiskDataNotifToken", 34, 34);
        ak = new at("PPRiskDataOsPlatform", 35, 35);
        v = new at("PPRiskDataOsType", 36, 36);
        al = new at("PPRiskDataOsVersion", 37, 37);
        am = new at("PPRiskDataPayloadType", 38, 38);
        w = new at("PPRiskDataPhoneType", 39, 39);
        an = new at("PPRiskDataPinLockLastTimestamp", 40, 40);
        ao = new at("PPRiskDataPowerSource", 41, 41);
        x = new at("PPRiskDataRiskCompSessionId", 42, 42);
        y = new at("PPRiskDataRoaming", 43, 43);
        ap = new at("PPRiskDataRoamingPossible", 44, 44);
        z = new at("PPRiskDataSimOperatorName", 45, 45);
        aq = new at("PPRiskDataSimSerialNumber", 46, 46);
        A = new at("PPRiskDataSmsEnabled", 47, 47);
        B = new at("PPRiskDataSsid", 48, 48);
        C = new at("PPRiskDataSubscriberId", 49, 49);
        D = new at("PPRiskDataTimestamp", 50, 50);
        ar = new at("PPRiskDataTotalDeviceMemory", 51, 51);
        E = new at("PPRiskDataTotalStorageSpace", 52, 52);
        F = new at("PPRiskDataTzName", 53, 53);
        G = new at("PPRiskDataAdvertisingIdentifier", 54, 54);
        as = new at("PPRiskDataVendorIdentifier", 55, 55);
        H = new at("PPRiskDataNetworkOperator", 56, 56);
        I = new at("PPRiskDataCdmaNetworkId", 57, 57);
        J = new at("PPRiskDataCdmaSystemId", 58, 58);
        K = new at("PPRiskDataIsEmulator", 59, 59);
        L = new at("PPRiskDataIsRooted", 60, 60);
        at = new at("PPRiskDataGeoCountry", 61, 61);
        M = new at("PPRiskDataSourceApp", 62, 62);
        N = new at("PPRiskDataSourceAppVersion", 63, 63);
        O = new at("PPRiskDataPairingId", 64, 64);
        P = new at("PPRiskDataAppFirstInstallTime", 65, 65);
        Q = new at("PPRiskDataAppLastUpdateTime", 66, 66);
        au = new at("PPRiskDataBluetoothMacAddress", 67, 67);
        R = new at("PPRiskDataSerialNumber", 68, 68);
        S = new at("PPRiskDataAndroidId", 69, 69);
        T = new at("PPRiskDataGsfId", 70, 70);
        U = new at("PPRiskDataVPNSetting", 71, 71);
        V = new at("PPRiskDataProxySetting", 72, 72);
        av = new at("PPRiskDataLocalIdentifier", 73, 73);
        aw = new at("PPRiskDataCloudIdentifier", 74, 74);
        ax = new at("PPRiskDataUnused1", 75, 75);
        ay = new at("PPRiskDataUnused2", 76, 76);
        az = new at("PPRiskDataUnused3", 77, 77);
        aA = new at("PPRiskDataUnused4", 78, 78);
        aB = new at("PPRiskDataUnused5", 79, 79);
        aD = (new at[] {
            W, a, b, c, d, e, f, X, Y, Z, 
            aa, g, ab, h, i, j, k, ac, ad, ae, 
            af, l, ag, m, n, o, ah, p, q, r, 
            s, ai, t, aj, u, ak, v, al, am, w, 
            an, ao, x, y, ap, z, aq, A, B, C, 
            D, ar, E, F, G, as, H, I, J, K, 
            L, at, M, N, O, P, Q, au, R, S, 
            T, U, V, av, aw, ax, ay, az, aA, aB
        });
    }
}
