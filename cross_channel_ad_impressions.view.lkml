# Cross channel configuration for Marketing Analytics by Looker

# TODO: Update cross channel to only select relevant NDTs for the data sources included.
view: cross_channel_ad_impressions_dt_config {
  derived_table: {
    sql:
      SELECT
         "Google" as platform,
          1 AS sort_order,
          google_ads_ad_impressions.channel AS channel,
          google_ads_ad_impressions._date AS _date,
          google_ads_ad_impressions.account_id AS account_id,
          google_ads_ad_impressions.account_name AS account_name,
          google_ads_ad_impressions.campaign_id AS campaign_id,
          google_ads_ad_impressions.campaign_name AS campaign_name,
          google_ads_ad_impressions.ad_group_id AS ad_group_id,
          google_ads_ad_impressions.ad_group_name AS ad_group_name,
          google_ads_ad_impressions.Impressions AS impressions,
          google_ads_ad_impressions.Cost AS cost,
          google_ads_ad_impressions.Conversions AS conversions,
          google_ads_ad_impressions.Clicks AS clicks,
          google_ads_ad_impressions.ConversionValue AS conversionvalue
       FROM ${google_ads_ad_impressions.SQL_TABLE_NAME} as google_ads_ad_impressions
      ;;
  }
}
