// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import android.content.Intent;
import android.support.v4.app.Fragment;
import com.biznessapps.call_us.CallUsFragment;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.constants.AppConstants;
import com.biznessapps.contact.ContactsListFragment;
import com.biznessapps.coupons.CouponDetailFragment;
import com.biznessapps.coupons.GpsCouponsListFragment;
import com.biznessapps.coupons.QrCouponsListFragment;
import com.biznessapps.email_photo.EmailPhotoFragment;
import com.biznessapps.events.EventDetailsFragment;
import com.biznessapps.events.EventsListFragment;
import com.biznessapps.events.EventsV2ListFragment;
import com.biznessapps.fan_wall.FanAddCommentsFragment;
import com.biznessapps.fan_wall.FanWallFragment;
import com.biznessapps.flexible_counter.FlexibleCounterFragment;
import com.biznessapps.food_ordering.ConfirmationFragment;
import com.biznessapps.food_ordering.FoodOrderMainFragment;
import com.biznessapps.food_ordering.account.AccountFragment;
import com.biznessapps.food_ordering.account.PastOrdersDetailFragment;
import com.biznessapps.food_ordering.account.PastOrdersListFragment;
import com.biznessapps.food_ordering.account.address.ChooseLocationFragment;
import com.biznessapps.food_ordering.account.address.MyAddressFragment;
import com.biznessapps.food_ordering.account.address.MyAddressesListFragment;
import com.biznessapps.food_ordering.cart.CartFragment;
import com.biznessapps.food_ordering.categories.CategoriesFragment;
import com.biznessapps.food_ordering.categories.CategoryItemDetailFragment;
import com.biznessapps.food_ordering.categories.CategoryItemsFragment;
import com.biznessapps.food_ordering.locations.LocationsFragment;
import com.biznessapps.fragments.single.DirectionsFragment;
import com.biznessapps.fragments.single.PreviewAppFragment;
import com.biznessapps.fragments.single.ProtectedAppFragment;
import com.biznessapps.fragments.single.TellFriendsFragment;
import com.biznessapps.gallery.GalleryFragment;
import com.biznessapps.gallery.GalleryListFragment;
import com.biznessapps.golfcourse.AddGameFragment;
import com.biznessapps.golfcourse.AddNoteFragment;
import com.biznessapps.golfcourse.EditPlayerFragment;
import com.biznessapps.golfcourse.GameListFragment;
import com.biznessapps.golfcourse.HoleDetailFragment;
import com.biznessapps.golfcourse.ListPlayerFragment;
import com.biznessapps.golfcourse.OverviewFragment;
import com.biznessapps.golfcourse.SelectCourseFragment;
import com.biznessapps.golfcourse.SelectPlayerFragment;
import com.biznessapps.info_items.InfoDetailFragment;
import com.biznessapps.info_items.InfoItemsFragment;
import com.biznessapps.info_items.InfoSectionsFragment;
import com.biznessapps.loyalty.LoyaltyListFragment;
import com.biznessapps.loyalty.LoyaltyV1DetailFragment;
import com.biznessapps.loyalty.LoyaltyV2DetailFragment;
import com.biznessapps.mailing_list.MailingFragment;
import com.biznessapps.menu_items.MenuItemDetailFragment;
import com.biznessapps.menu_items.MenuSectionItemsListFragment;
import com.biznessapps.menu_items.MenuSectionsListFragment;
import com.biznessapps.messages.MessageListFragment;
import com.biznessapps.more.MoreFragment;
import com.biznessapps.mortgage.MortgageCalculatorFragment;
import com.biznessapps.music.MusicDetailFragment;
import com.biznessapps.music.MusicListFragment;
import com.biznessapps.news.NewsFragment;
import com.biznessapps.notepad.NotepadEditFragment;
import com.biznessapps.notepad.NotepadListFragment;
import com.biznessapps.podcasts.PodcastsListFragment;
import com.biznessapps.qr.QrScannerFragment;
import com.biznessapps.qr.QrScannerHelpFragment;
import com.biznessapps.real_estate.RealEstatePropertyDetailFragment;
import com.biznessapps.reseller.ResellerDashboardFragment;
import com.biznessapps.reservation.PaymentIntegrateFragment;
import com.biznessapps.reservation.ReservationAccountFragment;
import com.biznessapps.reservation.ReservationAccountRecoveryFragment;
import com.biznessapps.reservation.ReservationAccountRegisterFragment;
import com.biznessapps.reservation.ReservationBookFragment;
import com.biznessapps.reservation.ReservationDetailFragment;
import com.biznessapps.reservation.ReservationLoginFragment;
import com.biznessapps.reservation.ReservationMainFragment;
import com.biznessapps.rss.RssListFragment;
import com.biznessapps.search.GlobalSearchFragment;
import com.biznessapps.social.SocialFragment;
import com.biznessapps.tip_calculator.TipCalculatorFragment;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.voice_recording.VoiceRecordingFragment;
import com.biznessapps.web.WebViewFragment;
import com.biznessapps.web.WebViewTiersFragment;
import com.biznessapps.youtube.YoutubeDetailFragment;
import com.biznessapps.youtube.YoutubeListFragment;

public class AppFragmentManager
    implements AppConstants
{

    public AppFragmentManager()
    {
    }

    public static Fragment getFragmentByController(Intent intent)
    {
        String s = intent.getStringExtra("TAB_FRAGMENT");
        if (s == null)
        {
            throw new IllegalStateException("View controller can't be null!");
        }
        Object obj = null;
        PreviewAppFragment previewappfragment;
        if ("contentchangerviewcontroller".equalsIgnoreCase(s))
        {
            previewappfragment = new PreviewAppFragment();
            ((CommonFragment)previewappfragment).setFragmentName("contentchangerviewcontroller");
        } else
        {
            if ("FoodOrderingViewController".equalsIgnoreCase(s))
            {
                return new FoodOrderMainFragment();
            }
            if ("FO_ACCOUNT_CONTROLLER".equalsIgnoreCase(s))
            {
                return new AccountFragment();
            }
            previewappfragment = obj;
            if (!"FO_DETAIL_CONTROLLER".equalsIgnoreCase(s))
            {
                if ("FOOD_ORDER_CART_CONTROLLER".equalsIgnoreCase(s))
                {
                    return new CartFragment();
                }
                if ("FO_CONFIRMATION_PAGE".equalsIgnoreCase(s))
                {
                    return new ConfirmationFragment();
                }
                if ("FO_MY_ADDRESS".equalsIgnoreCase(s))
                {
                    return new MyAddressFragment();
                }
                if ("FO_MY_ADDRESSES".equalsIgnoreCase(s))
                {
                    return new MyAddressesListFragment();
                }
                if ("FO_PAST_ORDERS_DETAIL".equalsIgnoreCase(s))
                {
                    return new PastOrdersDetailFragment();
                }
                if ("FO_PAST_ORDERS_LIST".equalsIgnoreCase(s))
                {
                    return new PastOrdersListFragment();
                }
                if ("FO_LOCATIONS".equalsIgnoreCase(s))
                {
                    return new LocationsFragment();
                }
                if ("FO_CATEGORIES".equalsIgnoreCase(s))
                {
                    return new CategoriesFragment();
                }
                if ("FO_CATEGORIES_ITEMS".equalsIgnoreCase(s))
                {
                    return new CategoryItemsFragment();
                }
                if ("FO_CATEGORIES_ITEM_DETAIL".equalsIgnoreCase(s))
                {
                    return new CategoryItemDetailFragment();
                }
                if ("FO_LOCATION_DETAIL".equalsIgnoreCase(s))
                {
                    intent = new CommonFragment();
                    ((CommonFragment)intent).setFragmentName("FO_LOCATION_DETAIL");
                    return intent;
                }
                if ("FO_LOCATIONS_MAP".equalsIgnoreCase(s))
                {
                    intent = new CommonFragment();
                    ((CommonFragment)intent).setFragmentName("FO_LOCATIONS_MAP");
                    return intent;
                }
                if ("FO_LOCATION_CHOOSER".equalsIgnoreCase(s))
                {
                    return new ChooseLocationFragment();
                }
                if ("PROTECTED_VIEW_CONTROLLER".equalsIgnoreCase(s))
                {
                    intent = new ProtectedAppFragment();
                    ((CommonFragment)intent).setFragmentName("PROTECTED_VIEW_CONTROLLER");
                    return intent;
                }
                if ("GLOBAL_SEARCH_VIEW_CONTROLLER".equalsIgnoreCase(s))
                {
                    intent = new GlobalSearchFragment();
                    ((CommonFragment)intent).setFragmentName("GLOBAL_SEARCH_VIEW_CONTROLLER");
                    return intent;
                }
                if ("webtierviewcontroller".equalsIgnoreCase(s))
                {
                    return new WebViewTiersFragment();
                }
                if ("webviewcontroller".equalsIgnoreCase(s))
                {
                    intent = new WebViewFragment();
                    ((CommonFragment)intent).setFragmentName("webviewcontroller");
                    return intent;
                }
                if ("WEB_VIEW_SINGLE_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new WebViewFragment();
                }
                if ("messagesviewcontroller".equalsIgnoreCase(s))
                {
                    return new MessageListFragment();
                }
                if ("VoiceRecordingViewController".equalsIgnoreCase(s))
                {
                    intent = new VoiceRecordingFragment();
                    ((CommonFragment)intent).setFragmentName("VoiceRecordingViewController");
                    return intent;
                }
                if ("FanWallViewController".equalsIgnoreCase(s))
                {
                    return new FanWallFragment();
                }
                if ("FAN_ADD_COMMENT_FRAGMENT".equalsIgnoreCase(s))
                {
                    intent = new FanAddCommentsFragment();
                    ((CommonFragment)intent).setFragmentName("FAN_ADD_COMMENT_FRAGMENT");
                    return intent;
                }
                if ("rssfeedviewcontroller".equalsIgnoreCase(s))
                {
                    return new RssListFragment();
                }
                if ("tipcalculatorviewcontroller".equalsIgnoreCase(s))
                {
                    intent = new TipCalculatorFragment();
                    ((CommonFragment)intent).setFragmentName("tipcalculatorviewcontroller");
                    return intent;
                }
                if ("GalleryViewController".equalsIgnoreCase(s) || "GalleryListViewController".equalsIgnoreCase(s) || "GalleryCoverFlowViewController".equalsIgnoreCase(s))
                {
                    return new GalleryFragment();
                }
                if ("GALLERY_LISTVIEW_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new GalleryListFragment();
                }
                if ("picasaviewcontroller".equalsIgnoreCase(s))
                {
                    intent = new GalleryFragment();
                    ((GalleryFragment)intent).setPicasaUsed(true);
                    return intent;
                }
                if ("FlickrPhotoStreamCoverflowViewController".equalsIgnoreCase(s) || "FlickrPhotoStreamGalleryViewController".equalsIgnoreCase(s) || "FlickrViewController".equalsIgnoreCase(s))
                {
                    intent = new GalleryFragment();
                    ((GalleryFragment)intent).setFlickrUsed(true);
                    return intent;
                }
                if ("InstagramViewController".equalsIgnoreCase(s))
                {
                    intent = new GalleryFragment();
                    ((GalleryFragment)intent).setInstagramUsed(true);
                    return intent;
                }
                if ("AroundUsViewController".equalsIgnoreCase(s))
                {
                    intent = new CommonFragment();
                    ((CommonFragment)intent).setFragmentName("AroundUsViewController");
                    return intent;
                }
                if ("AROUND_US_DETAIL_FRAGMENT".equalsIgnoreCase(s))
                {
                    intent = new CommonFragment();
                    ((CommonFragment)intent).setFragmentName("AROUND_US_DETAIL_FRAGMENT");
                    return intent;
                }
                if ("locationviewcontroller".equalsIgnoreCase(s) || "locationlistviewcontroller".equalsIgnoreCase(s))
                {
                    return new ContactsListFragment();
                }
                if ("CarFinderViewController".equalsIgnoreCase(s))
                {
                    intent = new CommonFragment();
                    ((CommonFragment)intent).setFragmentName("CarFinderViewController");
                    return intent;
                }
                if ("FanWallManagerViewController".equalsIgnoreCase(s))
                {
                    intent = new CommonFragment();
                    ((CommonFragment)intent).setFragmentName("FanWallManagerViewController");
                    return intent;
                }
                if ("CONTACTS_FRAGMENT".equalsIgnoreCase(s))
                {
                    intent = new CommonFragment();
                    ((CommonFragment)intent).setFragmentName("CONTACTS_FRAGMENT");
                    return intent;
                }
                if ("QRCouponViewController".equalsIgnoreCase(s))
                {
                    return new QrCouponsListFragment();
                }
                if ("couponsviewcontroller".equalsIgnoreCase(s))
                {
                    return new GpsCouponsListFragment();
                }
                if ("COUPON_DETAIL_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new CouponDetailFragment();
                }
                if ("QRViewController".equalsIgnoreCase(s))
                {
                    intent = new QrScannerFragment();
                    ((CommonFragment)intent).setFragmentName("QRViewController");
                    return intent;
                }
                if ("QR_SCANNER_HELP_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new QrScannerHelpFragment();
                }
                if ("PodcastViewController".equalsIgnoreCase(s))
                {
                    return new PodcastsListFragment();
                }
                if ("YoutubeViewController".equalsIgnoreCase(s))
                {
                    return new YoutubeListFragment();
                }
                if ("YOUTUBE_SINGLE_VIEW_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new YoutubeDetailFragment();
                }
                if ("MailingListViewController".equalsIgnoreCase(s))
                {
                    return new MailingFragment();
                }
                if ("StatRecorderViewController".equalsIgnoreCase(s))
                {
                    return new FlexibleCounterFragment();
                }
                if ("EmailPhotoViewController".equalsIgnoreCase(s))
                {
                    intent = new EmailPhotoFragment();
                    ((CommonFragment)intent).setFragmentName("EmailPhotoViewController");
                    return intent;
                }
                if ("repaymentviewcontroller".equalsIgnoreCase(s))
                {
                    intent = new MortgageCalculatorFragment();
                    ((CommonFragment)intent).setFragmentName("repaymentviewcontroller");
                    return intent;
                }
                if ("RESELLER_DASHBOARD_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new ResellerDashboardFragment();
                }
                if ("infodetailviewcontroller".equalsIgnoreCase(s))
                {
                    return new InfoDetailFragment();
                }
                if ("infosectionviewcontroller".equalsIgnoreCase(s))
                {
                    return new InfoSectionsFragment();
                }
                if ("infoitemsviewcontroller".equalsIgnoreCase(s))
                {
                    return new InfoItemsFragment();
                }
                if ("eventsviewcontroller".equalsIgnoreCase(s))
                {
                    return new EventsListFragment();
                }
                if ("EVENTS_DETAIL_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new EventDetailsFragment();
                }
                if ("EventsManagerViewController".equalsIgnoreCase(s))
                {
                    return new EventsV2ListFragment();
                }
                if ("EVENTS_V2_DETAIL_FRAGMENT".equalsIgnoreCase(s))
                {
                    intent = new CommonFragment();
                    ((CommonFragment)intent).setFragmentName("EVENTS_V2_DETAIL_FRAGMENT");
                    return intent;
                }
                if ("menuviewcontroller".equalsIgnoreCase(s))
                {
                    if (ViewUtils.hasExtraValue(intent, "MENU_ITEM_ID"))
                    {
                        return new MenuSectionItemsListFragment();
                    }
                    if (ViewUtils.hasExtraValue(intent, "MENU_ITEM_DETAIL_ID"))
                    {
                        return new MenuItemDetailFragment();
                    } else
                    {
                        return new MenuSectionsListFragment();
                    }
                }
                if ("moreviewcontroller".equalsIgnoreCase(s))
                {
                    return new MoreFragment();
                }
                if ("NewsViewController".equalsIgnoreCase(s))
                {
                    return new NewsFragment();
                }
                if ("CallUsViewController".equalsIgnoreCase(s))
                {
                    return new CallUsFragment();
                }
                if ("DirectionViewController".equalsIgnoreCase(s))
                {
                    return new DirectionsFragment();
                }
                if ("TellFriendViewController".equalsIgnoreCase(s))
                {
                    return new TellFriendsFragment();
                }
                if ("NotepadListController".equalsIgnoreCase(s))
                {
                    return new NotepadListFragment();
                }
                if ("NOTEPAD_EDIT_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new NotepadEditFragment();
                }
                if ("SocialViewController".equalsIgnoreCase(s))
                {
                    intent = new SocialFragment();
                    ((CommonFragment)intent).setFragmentName("SocialViewController");
                    return intent;
                }
                if ("LoyaltyTabViewController".equalsIgnoreCase(s))
                {
                    return new LoyaltyListFragment();
                }
                if ("LOYALTY_V1_DETAIL_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new LoyaltyV1DetailFragment();
                }
                if ("LOYALTY_V2_DETAIL_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new LoyaltyV2DetailFragment();
                }
                if ("MusicViewController".equalsIgnoreCase(s))
                {
                    return new MusicListFragment();
                }
                if ("SongInfoViewController".equalsIgnoreCase(s))
                {
                    return new MusicDetailFragment();
                }
                if ("RealEstateDetailViewController".equalsIgnoreCase(s))
                {
                    intent = new CommonFragment();
                    ((CommonFragment)intent).setFragmentName("RealEstateDetailViewController");
                    return intent;
                }
                if ("RealEstateViewController".equalsIgnoreCase(s))
                {
                    intent = new CommonFragment();
                    ((CommonFragment)intent).setFragmentName("RealEstateViewController");
                    return intent;
                }
                if ("RealEstatePropertyViewController".equalsIgnoreCase(s))
                {
                    return new RealEstatePropertyDetailFragment();
                }
                if ("GolfCourseViewController".equalsIgnoreCase(s))
                {
                    return new GameListFragment();
                }
                if ("GOLF_EDIT_PLAYER_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new EditPlayerFragment();
                }
                if ("GOLF_ADD_GAME_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new AddGameFragment();
                }
                if ("GOLF_SELECT_COURSE_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new SelectCourseFragment();
                }
                if ("GOLF_LIST_PLAYER_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new ListPlayerFragment();
                }
                if ("GOLF_SELECT_PLAYER_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new SelectPlayerFragment();
                }
                if ("GOLF_OVERVIEW_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new OverviewFragment();
                }
                if ("GOLF_DETAIL_HOLE_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new HoleDetailFragment();
                }
                if ("GOLF_ADD_NOTE_FRAGMENT".equalsIgnoreCase(s))
                {
                    return new AddNoteFragment();
                }
                if ("ReservationViewController".equalsIgnoreCase(s))
                {
                    intent = new ReservationMainFragment();
                    ((CommonFragment)intent).setFragmentName("ReservationViewController");
                    return intent;
                }
                if ("ReservationLoginViewController".equalsIgnoreCase(s))
                {
                    return new ReservationLoginFragment();
                }
                if ("ReservationApptDetailViewControllerFromMain".equalsIgnoreCase(s))
                {
                    return new ReservationDetailFragment();
                }
                if ("ReservationAccountViewController".equalsIgnoreCase(s))
                {
                    return new ReservationAccountFragment();
                }
                if ("ReservationBookViewController".equalsIgnoreCase(s))
                {
                    return new ReservationBookFragment();
                }
                if ("PaymentIntegrateViewController".equalsIgnoreCase(s))
                {
                    return new PaymentIntegrateFragment();
                }
                if ("ReservationRegisterFragment".equalsIgnoreCase(s))
                {
                    return new ReservationAccountRegisterFragment();
                }
                previewappfragment = obj;
                if ("ReservationAccountRecoveryFragment".equalsIgnoreCase(s))
                {
                    return new ReservationAccountRecoveryFragment();
                }
            }
        }
        return previewappfragment;
    }
}
