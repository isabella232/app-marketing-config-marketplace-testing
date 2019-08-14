# LinkedIn Ads configuration for Marketing Analytics by Looker


# TODO: Update LinkedIn Ads schema
datagroup: linkedin_ads_etl_datagroup {
  sql_trigger: SELECT COUNT(*) FROM `linkedin_ads.ad_analytics_by_campaign` ;;
  max_cache_age: "24 hours"
}

view: linkedin_ads_config {
  extension: required

  # TODO: Update LinkedIn Ads schema
  dimension: linkedin_ads_schema {
    hidden: yes
    sql:@{LINKEDIN_ADS_SCHEMA_NAME};;
  }
}

explore: li_period_comparison_config {
  extends: [li_period_fact]
  extension: required
  hidden: no
}

view: li_period_comparison_config {
  extends: [li_period_fact]
  extension: required
}

explore: linkedin_ad_impressions_campaign_config {
  extends: [linkedin_ad_impressions_campaign_template]
  extension: required
}

view: linkedin_ad_impressions_campaign_config {
  extends: [linkedin_ad_impressions_campaign_template]
  extension: required
}

explore: linkedin_ad_impressions_ad_config {
  extends: [linkedin_ad_impressions_ad_template]
  extension: required
}

view: linkedin_ad_impressions_ad_config {
  extends: [linkedin_ad_impressions_ad_template]
  extension: required
}
