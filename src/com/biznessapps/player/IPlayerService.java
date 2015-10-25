// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.player;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

// Referenced classes of package com.biznessapps.player:
//            MusicItem, PlayerState

public interface IPlayerService
    extends IInterface
{
    public static abstract class Stub extends Binder
        implements IPlayerService
    {

        private static final String DESCRIPTOR = "com.biznessapps.player.IPlayerService";
        static final int TRANSACTION_addUrlQueue = 11;
        static final int TRANSACTION_addUrlsQueue = 10;
        static final int TRANSACTION_clear = 4;
        static final int TRANSACTION_clearQueue = 13;
        static final int TRANSACTION_duration = 7;
        static final int TRANSACTION_getCurrentPosition = 14;
        static final int TRANSACTION_getCurrentSong = 16;
        static final int TRANSACTION_getSongs = 12;
        static final int TRANSACTION_getState = 5;
        static final int TRANSACTION_isInState = 6;
        static final int TRANSACTION_pause = 2;
        static final int TRANSACTION_play = 1;
        static final int TRANSACTION_position = 8;
        static final int TRANSACTION_seek = 9;
        static final int TRANSACTION_setCurrentPosition = 15;
        static final int TRANSACTION_stop = 3;

        public static IPlayerService asInterface(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.biznessapps.player.IPlayerService");
            if (iinterface != null && (iinterface instanceof IPlayerService))
            {
                return (IPlayerService)iinterface;
            } else
            {
                return new Proxy(ibinder);
            }
        }

        public IBinder asBinder()
        {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
            throws RemoteException
        {
            boolean flag = false;
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.biznessapps.player.IPlayerService");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                if (parcel.readInt() != 0)
                {
                    parcel = (MusicItem)MusicItem.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                play(parcel);
                parcel1.writeNoException();
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                pause();
                parcel1.writeNoException();
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                stop();
                parcel1.writeNoException();
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                clear();
                parcel1.writeNoException();
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                parcel = getState();
                parcel1.writeNoException();
                if (parcel != null)
                {
                    parcel1.writeInt(1);
                    parcel.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 6: // '\006'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                boolean flag1 = isInState(parcel.readInt());
                parcel1.writeNoException();
                i = ((flag) ? 1 : 0);
                if (flag1)
                {
                    i = 1;
                }
                parcel1.writeInt(i);
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                long l = duration();
                parcel1.writeNoException();
                parcel1.writeLong(l);
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                long l1 = position();
                parcel1.writeNoException();
                parcel1.writeLong(l1);
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                seek(parcel.readLong());
                parcel1.writeNoException();
                return true;

            case 10: // '\n'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                addUrlsQueue(parcel.createTypedArrayList(MusicItem.CREATOR));
                parcel1.writeNoException();
                return true;

            case 11: // '\013'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                if (parcel.readInt() != 0)
                {
                    parcel = (MusicItem)MusicItem.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                addUrlQueue(parcel);
                parcel1.writeNoException();
                return true;

            case 12: // '\f'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                parcel = getSongs();
                parcel1.writeNoException();
                parcel1.writeTypedList(parcel);
                return true;

            case 13: // '\r'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                clearQueue();
                parcel1.writeNoException();
                return true;

            case 14: // '\016'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                i = getCurrentPosition();
                parcel1.writeNoException();
                parcel1.writeInt(i);
                return true;

            case 15: // '\017'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                setCurrentPosition(parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 16: // '\020'
                parcel.enforceInterface("com.biznessapps.player.IPlayerService");
                parcel = getCurrentSong();
                parcel1.writeNoException();
                break;
            }
            if (parcel != null)
            {
                parcel1.writeInt(1);
                parcel.writeToParcel(parcel1, 1);
                return true;
            } else
            {
                parcel1.writeInt(0);
                return true;
            }
        }

        public Stub()
        {
            attachInterface(this, "com.biznessapps.player.IPlayerService");
        }
    }

    private static class Stub.Proxy
        implements IPlayerService
    {

        private IBinder mRemote;

        public void addUrlQueue(MusicItem musicitem)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            if (musicitem == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            musicitem.writeToParcel(parcel, 0);
_L1:
            mRemote.transact(11, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            musicitem;
            parcel1.recycle();
            parcel.recycle();
            throw musicitem;
        }

        public void addUrlsQueue(List list)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            parcel.writeTypedList(list);
            mRemote.transact(10, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            list;
            parcel1.recycle();
            parcel.recycle();
            throw list;
        }

        public IBinder asBinder()
        {
            return mRemote;
        }

        public void clear()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            mRemote.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void clearQueue()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            mRemote.transact(13, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public long duration()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            long l;
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            mRemote.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            l = parcel1.readLong();
            parcel1.recycle();
            parcel.recycle();
            return l;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public int getCurrentPosition()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            mRemote.transact(14, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            parcel1.recycle();
            parcel.recycle();
            return i;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public MusicItem getCurrentSong()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            mRemote.transact(16, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            MusicItem musicitem = (MusicItem)MusicItem.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return musicitem;
_L2:
            musicitem = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public String getInterfaceDescriptor()
        {
            return "com.biznessapps.player.IPlayerService";
        }

        public List getSongs()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            java.util.ArrayList arraylist;
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            mRemote.transact(12, parcel, parcel1, 0);
            parcel1.readException();
            arraylist = parcel1.createTypedArrayList(MusicItem.CREATOR);
            parcel1.recycle();
            parcel.recycle();
            return arraylist;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public PlayerState getState()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            mRemote.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            PlayerState playerstate = (PlayerState)PlayerState.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return playerstate;
_L2:
            playerstate = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean isInState(int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            boolean flag;
            flag = false;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            parcel.writeInt(i);
            mRemote.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            if (i != 0)
            {
                flag = true;
            }
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void pause()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            mRemote.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void play(MusicItem musicitem)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            if (musicitem == null)
            {
                break MISSING_BLOCK_LABEL_56;
            }
            parcel.writeInt(1);
            musicitem.writeToParcel(parcel, 0);
_L1:
            mRemote.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            musicitem;
            parcel1.recycle();
            parcel.recycle();
            throw musicitem;
        }

        public long position()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            long l;
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            mRemote.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            l = parcel1.readLong();
            parcel1.recycle();
            parcel.recycle();
            return l;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void seek(long l)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            parcel.writeLong(l);
            mRemote.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void setCurrentPosition(int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            parcel.writeInt(i);
            mRemote.transact(15, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void stop()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.biznessapps.player.IPlayerService");
            mRemote.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        Stub.Proxy(IBinder ibinder)
        {
            mRemote = ibinder;
        }
    }


    public abstract void addUrlQueue(MusicItem musicitem)
        throws RemoteException;

    public abstract void addUrlsQueue(List list)
        throws RemoteException;

    public abstract void clear()
        throws RemoteException;

    public abstract void clearQueue()
        throws RemoteException;

    public abstract long duration()
        throws RemoteException;

    public abstract int getCurrentPosition()
        throws RemoteException;

    public abstract MusicItem getCurrentSong()
        throws RemoteException;

    public abstract List getSongs()
        throws RemoteException;

    public abstract PlayerState getState()
        throws RemoteException;

    public abstract boolean isInState(int i)
        throws RemoteException;

    public abstract void pause()
        throws RemoteException;

    public abstract void play(MusicItem musicitem)
        throws RemoteException;

    public abstract long position()
        throws RemoteException;

    public abstract void seek(long l)
        throws RemoteException;

    public abstract void setCurrentPosition(int i)
        throws RemoteException;

    public abstract void stop()
        throws RemoteException;
}
