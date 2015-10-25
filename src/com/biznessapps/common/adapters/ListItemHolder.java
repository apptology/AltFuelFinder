// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.adapters;

import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.widgets.LoaderImageView;

public class ListItemHolder
{
    public static class AlbumItem
    {

        private ImageView arrowImageView;
        private TextView titleView;

        public ImageView getArrowImageView()
        {
            return arrowImageView;
        }

        public TextView getTitleView()
        {
            return titleView;
        }

        public void setArrowImageView(ImageView imageview)
        {
            arrowImageView = imageview;
        }

        public void setTitleView(TextView textview)
        {
            titleView = textview;
        }

        public AlbumItem()
        {
        }
    }

    public static class CommonItem
    {

        private TextView bottomTextView;
        private Button button;
        private CheckBox checkbox;
        private TextView descriptionTextView;
        private ViewGroup frameContainer;
        private ImageView imageView;
        private ImageView rightArrowView;
        private TextView textViewTitle;

        public TextView getBottomTextView()
        {
            return bottomTextView;
        }

        public Button getButton()
        {
            return button;
        }

        public CheckBox getCheckbox()
        {
            return checkbox;
        }

        public TextView getDescriptioinTextView()
        {
            return descriptionTextView;
        }

        public ViewGroup getFrameContainer()
        {
            return frameContainer;
        }

        public ImageView getImageView()
        {
            return imageView;
        }

        public ImageView getRightArrowView()
        {
            return rightArrowView;
        }

        public TextView getTextViewTitle()
        {
            return textViewTitle;
        }

        public void setBottomTextView(TextView textview)
        {
            bottomTextView = textview;
        }

        public void setButton(Button button1)
        {
            button = button1;
        }

        public void setCheckbox(CheckBox checkbox1)
        {
            checkbox = checkbox1;
        }

        public void setDescriptionTextView(TextView textview)
        {
            descriptionTextView = textview;
        }

        public void setFrameContainer(ViewGroup viewgroup)
        {
            frameContainer = viewgroup;
        }

        public void setImageView(ImageView imageview)
        {
            imageView = imageview;
        }

        public void setRightArrowView(ImageView imageview)
        {
            rightArrowView = imageview;
        }

        public void setTextViewTitle(TextView textview)
        {
            textViewTitle = textview;
        }

        public CommonItem()
        {
        }
    }

    public static class EventItem
    {

        private TextView dateTextView;
        private ImageView rightArrowView;
        private TextView textViewCalendar;
        private TextView textViewText;
        private TextView topTextView;

        public TextView getDateTextView()
        {
            return dateTextView;
        }

        public ImageView getRightArrowView()
        {
            return rightArrowView;
        }

        public TextView getTextViewCalendar()
        {
            return textViewCalendar;
        }

        public TextView getTextViewText()
        {
            return textViewText;
        }

        public TextView getTopTextView()
        {
            return topTextView;
        }

        public void setDateTextView(TextView textview)
        {
            dateTextView = textview;
        }

        public void setRightArrowView(ImageView imageview)
        {
            rightArrowView = imageview;
        }

        public void setTextViewCalendar(TextView textview)
        {
            textViewCalendar = textview;
        }

        public void setTextViewText(TextView textview)
        {
            textViewText = textview;
        }

        public void setTopTextView(TextView textview)
        {
            topTextView = textview;
        }

        public EventItem()
        {
        }
    }

    public static class FanWallItem
    {

        private TextView commentTextView;
        private ImageView fanWallImageView;
        private TextView nameTextView;
        private TextView replyTextView;
        private TextView timeAgoTextView;
        private ImageView uploadImageView;

        public TextView getCommentTextView()
        {
            return commentTextView;
        }

        public ImageView getFanWallImageView()
        {
            return fanWallImageView;
        }

        public TextView getNameTextView()
        {
            return nameTextView;
        }

        public TextView getReplyTextView()
        {
            return replyTextView;
        }

        public TextView getTimeAgoTextView()
        {
            return timeAgoTextView;
        }

        public ImageView getUploadImageView()
        {
            return uploadImageView;
        }

        public void setCommentTextView(TextView textview)
        {
            commentTextView = textview;
        }

        public void setFanWallImageView(ImageView imageview)
        {
            fanWallImageView = imageview;
        }

        public void setNameTextView(TextView textview)
        {
            nameTextView = textview;
        }

        public void setReplyTextView(TextView textview)
        {
            replyTextView = textview;
        }

        public void setTimeAgoTextView(TextView textview)
        {
            timeAgoTextView = textview;
        }

        public void setUploadImageView(ImageView imageview)
        {
            uploadImageView = imageview;
        }

        public FanWallItem()
        {
        }
    }

    public static class GalleryAdapterItem
    {

        private LoaderImageView imageView;
        private TextView textViewComments;
        private TextView textViewTitle;

        public LoaderImageView getImageView()
        {
            return imageView;
        }

        public TextView getTextViewComments()
        {
            return textViewComments;
        }

        public TextView getTextViewTitle()
        {
            return textViewTitle;
        }

        public void setImageView(LoaderImageView loaderimageview)
        {
            imageView = loaderimageview;
        }

        public void setTextViewComments(TextView textview)
        {
            textViewComments = textview;
        }

        public void setTextViewTitle(TextView textview)
        {
            textViewTitle = textview;
        }

        public GalleryAdapterItem()
        {
        }
    }

    public static class GalleryItem
    {

        private ImageView imageView;
        private LoaderImageView loaderImageView;

        public ImageView getImage()
        {
            return imageView;
        }

        public LoaderImageView getLoaderImage()
        {
            return loaderImageView;
        }

        public void setImage(ImageView imageview)
        {
            imageView = imageview;
        }

        public void setLoaderImage(LoaderImageView loaderimageview)
        {
            loaderImageView = loaderimageview;
        }

        public GalleryItem()
        {
        }
    }

    public static class LocationItem
    {

        private TextView distanceView;
        private ImageView locationImage;
        private ImageView rightArrowView;
        private TextView statusView;
        private TextView textViewAddress;
        private TextView textViewCity;

        public TextView getDistanceView()
        {
            return distanceView;
        }

        public ImageView getLocationImage()
        {
            return locationImage;
        }

        public ImageView getRightArrowView()
        {
            return rightArrowView;
        }

        public TextView getStatusView()
        {
            return statusView;
        }

        public TextView getTextViewAddress()
        {
            return textViewAddress;
        }

        public TextView getTextViewCity()
        {
            return textViewCity;
        }

        public void setDistanceView(TextView textview)
        {
            distanceView = textview;
        }

        public void setLocationImage(ImageView imageview)
        {
            locationImage = imageview;
        }

        public void setRightArrowView(ImageView imageview)
        {
            rightArrowView = imageview;
        }

        public void setStatusView(TextView textview)
        {
            statusView = textview;
        }

        public void setTextViewAddress(TextView textview)
        {
            textViewAddress = textview;
        }

        public void setTextViewCity(TextView textview)
        {
            textViewCity = textview;
        }

        public LocationItem()
        {
        }
    }

    public static class MenuItem
    {

        private TextView textViewPrice;
        private TextView textViewTitle;

        public TextView getTextViewPrice()
        {
            return textViewPrice;
        }

        public TextView getTextViewTitle()
        {
            return textViewTitle;
        }

        public void setTextViewPrice(TextView textview)
        {
            textViewPrice = textview;
        }

        public void setTextViewTitle(TextView textview)
        {
            textViewTitle = textview;
        }

        public MenuItem()
        {
        }
    }

    public static class MessageItem
    {

        private TextView textViewDate;
        private TextView textViewText;

        public TextView getTextViewDate()
        {
            return textViewDate;
        }

        public TextView getTextViewText()
        {
            return textViewText;
        }

        public void setTextViewDate(TextView textview)
        {
            textViewDate = textview;
        }

        public void setTextViewText(TextView textview)
        {
            textViewText = textview;
        }

        public MessageItem()
        {
        }
    }

    public static class NotepadItem
    {

        private TextView noteDateView;
        private TextView noteTitleView;

        public TextView getNoteDateView()
        {
            return noteDateView;
        }

        public TextView getNoteTitleView()
        {
            return noteTitleView;
        }

        public void setNoteDateView(TextView textview)
        {
            noteDateView = textview;
        }

        public void setNoteTitleView(TextView textview)
        {
            noteTitleView = textview;
        }

        public NotepadItem()
        {
        }
    }

    public static class ReservationTimeItem
    {

        private TextView timeFromView;
        private TextView timeToView;

        public TextView getTimeFromView()
        {
            return timeFromView;
        }

        public TextView getTimeToView()
        {
            return timeToView;
        }

        public void setTimeFromView(TextView textview)
        {
            timeFromView = textview;
        }

        public void setTimeToView(TextView textview)
        {
            timeToView = textview;
        }

        public ReservationTimeItem()
        {
        }
    }

    public static class RssItem
    {

        private ImageView imageView;
        private ImageView rightArrowView;
        private TextView textViewDate;
        private TextView textViewSummary;
        private TextView textViewTitle;

        public ImageView getImageView()
        {
            return imageView;
        }

        public ImageView getRightArrowView()
        {
            return rightArrowView;
        }

        public TextView getTextViewDate()
        {
            return textViewDate;
        }

        public TextView getTextViewSummary()
        {
            return textViewSummary;
        }

        public TextView getTextViewTitle()
        {
            return textViewTitle;
        }

        public void setImageView(ImageView imageview)
        {
            imageView = imageview;
        }

        public void setRightArrowView(ImageView imageview)
        {
            rightArrowView = imageview;
        }

        public void setTextViewDate(TextView textview)
        {
            textViewDate = textview;
        }

        public void setTextViewSummary(TextView textview)
        {
            textViewSummary = textview;
        }

        public void setTextViewTitle(TextView textview)
        {
            textViewTitle = textview;
        }

        public RssItem()
        {
        }
    }

    public static class ShoppingCartCategoryItem
    {

        private TextView catNameView;

        public TextView getCatNameView()
        {
            return catNameView;
        }

        public void setCatNameView(TextView textview)
        {
            catNameView = textview;
        }

        public ShoppingCartCategoryItem()
        {
        }
    }

    public static class ShoppingCartCheckoutItem
    {

        private ImageView productImageView;
        private TextView productNameView;
        private TextView productPriceView;
        private EditText quantityView;
        private Button removeButton;
        private Button updateButton;

        public ImageView getProductImageView()
        {
            return productImageView;
        }

        public TextView getProductNameView()
        {
            return productNameView;
        }

        public TextView getProductPriceView()
        {
            return productPriceView;
        }

        public EditText getQuantityView()
        {
            return quantityView;
        }

        public Button getRemoveButton()
        {
            return removeButton;
        }

        public Button getUpdateButton()
        {
            return updateButton;
        }

        public void setProductNameView(TextView textview)
        {
            productNameView = textview;
        }

        public void setProductPriceView(TextView textview)
        {
            productPriceView = textview;
        }

        public void setQuantityView(EditText edittext)
        {
            quantityView = edittext;
        }

        public void setRemoveButton(Button button)
        {
            removeButton = button;
        }

        public void setSmallImageView(ImageView imageview)
        {
            productImageView = imageview;
        }

        public void setUpdateButton(Button button)
        {
            updateButton = button;
        }

        public ShoppingCartCheckoutItem()
        {
        }
    }

    public static class ShoppingCartProductItem
    {

        private TextView productNameView;
        private TextView productPriceLabelView;
        private TextView productPriceView;
        private ImageView smallImageView;

        public TextView getProductNameView()
        {
            return productNameView;
        }

        public TextView getProductPriceLabelView()
        {
            return productPriceLabelView;
        }

        public TextView getProductPriceView()
        {
            return productPriceView;
        }

        public ImageView getProductSmallImageView()
        {
            return smallImageView;
        }

        public void setProductNameView(TextView textview)
        {
            productNameView = textview;
        }

        public void setProductPriceLabelView(TextView textview)
        {
            productPriceLabelView = textview;
        }

        public void setProductPriceView(TextView textview)
        {
            productPriceView = textview;
        }

        public void setProductSmallImageView(ImageView imageview)
        {
            smallImageView = imageview;
        }

        public ShoppingCartProductItem()
        {
        }
    }

    public static class TabItem
    {

        private ViewGroup tabRoot;

        public ViewGroup getTabRoot()
        {
            return tabRoot;
        }

        public void setTabRoot(ViewGroup viewgroup)
        {
            tabRoot = viewgroup;
        }

        public TabItem()
        {
        }
    }

    public static class YoutubeRssItem
    {

        private TextView countHintTextView;
        private ImageView creatorImageView;
        private TextView creatorNameView;
        private ViewGroup infoContainer;
        private TextView publishedDateView;
        private TextView ratingAverageTextView;
        private TextView titleView;
        private TextView viewCountTextView;
        private ImageView youtubeImageView;

        public TextView getCountHintTextView()
        {
            return countHintTextView;
        }

        public ImageView getCreatorImageView()
        {
            return creatorImageView;
        }

        public TextView getCreatorNameView()
        {
            return creatorNameView;
        }

        public ViewGroup getInfoContainer()
        {
            return infoContainer;
        }

        public TextView getPublishedDateView()
        {
            return publishedDateView;
        }

        public TextView getRatingAverageTextView()
        {
            return ratingAverageTextView;
        }

        public TextView getTitleView()
        {
            return titleView;
        }

        public TextView getViewCountTextView()
        {
            return viewCountTextView;
        }

        public ImageView getYoutubeImageView()
        {
            return youtubeImageView;
        }

        public void setCountHintTextView(TextView textview)
        {
            countHintTextView = textview;
        }

        public void setCreatorImageView(ImageView imageview)
        {
            creatorImageView = imageview;
        }

        public void setCreatorNameView(TextView textview)
        {
            creatorNameView = textview;
        }

        public void setInfoContainer(ViewGroup viewgroup)
        {
            infoContainer = viewgroup;
        }

        public void setPublishedDateView(TextView textview)
        {
            publishedDateView = textview;
        }

        public void setRatingAverageTextView(TextView textview)
        {
            ratingAverageTextView = textview;
        }

        public void setTitleView(TextView textview)
        {
            titleView = textview;
        }

        public void setViewCountTextView(TextView textview)
        {
            viewCountTextView = textview;
        }

        public void setYoutubeImageView(ImageView imageview)
        {
            youtubeImageView = imageview;
        }

        public YoutubeRssItem()
        {
        }
    }


    public ListItemHolder()
    {
    }
}
