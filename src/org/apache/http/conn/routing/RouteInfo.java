// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.conn.routing;

import java.net.InetAddress;
import org.apache.http.HttpHost;

public interface RouteInfo
{
    public static final class LayerType extends Enum
    {

        private static final LayerType $VALUES[];
        public static final LayerType LAYERED;
        public static final LayerType PLAIN;

        public static LayerType valueOf(String s)
        {
            return (LayerType)Enum.valueOf(org/apache/http/conn/routing/RouteInfo$LayerType, s);
        }

        public static final LayerType[] values()
        {
            return (LayerType[])$VALUES.clone();
        }

        static 
        {
            PLAIN = new LayerType("PLAIN", 0);
            LAYERED = new LayerType("LAYERED", 1);
            $VALUES = (new LayerType[] {
                PLAIN, LAYERED
            });
        }

        private LayerType(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class TunnelType extends Enum
    {

        private static final TunnelType $VALUES[];
        public static final TunnelType PLAIN;
        public static final TunnelType TUNNELLED;

        public static TunnelType valueOf(String s)
        {
            return (TunnelType)Enum.valueOf(org/apache/http/conn/routing/RouteInfo$TunnelType, s);
        }

        public static final TunnelType[] values()
        {
            return (TunnelType[])$VALUES.clone();
        }

        static 
        {
            PLAIN = new TunnelType("PLAIN", 0);
            TUNNELLED = new TunnelType("TUNNELLED", 1);
            $VALUES = (new TunnelType[] {
                PLAIN, TUNNELLED
            });
        }

        private TunnelType(String s, int i)
        {
            super(s, i);
        }
    }


    public abstract int getHopCount();

    public abstract HttpHost getHopTarget(int i);

    public abstract LayerType getLayerType();

    public abstract InetAddress getLocalAddress();

    public abstract HttpHost getProxyHost();

    public abstract HttpHost getTargetHost();

    public abstract TunnelType getTunnelType();

    public abstract boolean isLayered();

    public abstract boolean isSecure();

    public abstract boolean isTunnelled();
}
