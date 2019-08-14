# Bing Ads configuration for Marketing Analytics by Looker

# TODO: update Bing Ads schema
datagroup: bing_ads_etl_datagroup {
  sql_trigger: SELECT COUNT(*) FROM `bings_ads_for_looker.ad_group_performance_daily_report` ;;
  max_cache_age: "24 hours"
}

view: bing_ads_config {
  extension: required

  dimension: bing_ads_schema {
    hidden: yes
    sql:@{BING_ADS_SCHEMA_NAME};;
  }
}

view: bing_ad_metrics_base_config {
  extends: [bing_ad_metrics_base_template]
  extension: required
  # Customize: Add metrics or customize drills / labels / descriptions
}

# Daily Account Aggregation
explore: bing_ad_impressions_config {
  extends: [bing_ad_impressions_template]
  extension: required
}

view: bing_ad_impressions_config {
  extends: [bing_ad_impressions_template]
  extension: required
}

# Daily Campaign Aggregation
explore: bing_ad_impressions_campaign_config {
  extends: [bing_ad_impressions_campaign_template]
  extension: required
}

view: bing_ad_impressions_campaign_config {
  extends: [bing_ad_impressions_campaign_template]
  extension: required
}

# Daily Ad Group Aggregation
explore: bing_ad_impressions_ad_group_config {
  extends: [bing_ad_impressions_ad_group_template]
  extension: required
}

view: bing_ad_impressions_ad_group_config {
  extends: [bing_ad_impressions_ad_group_template]
  extension: required
}

# Daily Keyword Aggregation
explore: bing_ad_impressions_keyword_config {
  extends: [bing_ad_impressions_keyword_template]
  extension: required
}

view: bing_ad_impressions_keyword_config {
  extends: [bing_ad_impressions_keyword_template]
  extension: required
}

# Daily Ad Aggregation
explore: bing_ad_impressions_ad_config {
  extends: [bing_ad_impressions_ad_template]
  extension: required
}

view: bing_ad_impressions_ad_config {
  extends: [bing_ad_impressions_ad_template]
  extension: required
}

explore: bing_period_comparison_config {
  extends: [bing_period_fact]
  extension: required
  hidden: no
}

view: bing_period_comparison_config {
  extends: [bing_period_fact]
  extension: required
}
