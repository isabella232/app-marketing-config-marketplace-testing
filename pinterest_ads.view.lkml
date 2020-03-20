# pinterest Ads configuration for Marketing Analytics by Looker

# TODO: update pinterest Ads schema
datagroup: pinterest_ads_etl_datagroup {
  sql_trigger: SELECT COUNT(*) FROM `@{PINTEREST_ADS_SCHEMA_NAME}.campaign_report` ;;
  max_cache_age: "24 hours"
}

view: pinterest_ads_config {
  extension: required

  dimension: pinterest_ads_schema {
    hidden: yes
    sql:@{PINTEREST_ADS_SCHEMA_NAME};;
  }
}

view: pinterest_ad_metrics_base_config {
  extends: [pinterest_ad_metrics_base_template]
  extension: required
  # Customize: Add metrics or customize drills / labels / descriptions
}

# Daily Account Aggregation
explore: pinterest_ad_impressions_config {
  extends: [pinterest_ad_impressions_template]
  extension: required
}

view: pinterest_ad_impressions_config {
  extension: required
  extends: [pinterest_ad_impressions_template]
}

# Daily Campaign Aggregation
explore: pinterest_ad_impressions_campaign_config {
  extends: [pinterest_ad_impressions_campaign_template]
  extension: required
}

view: pinterest_ad_impressions_campaign_config {
  extends: [pinterest_ad_impressions_campaign_template]
  extension: required
}

# Daily Ad Group Aggregation
explore: pinterest_ad_impressions_ad_group_config {
  extends: [pinterest_ad_impressions_ad_group_template]
  extension: required
}

view: pinterest_ad_impressions_ad_group_config {
  extends: [pinterest_ad_impressions_ad_group_template]
  extension: required
}

# Daily Ad Aggregation
explore: pinterest_ad_impressions_ad_config {
  extends: [pinterest_ad_impressions_ad_template]
  extension: required
}

view: pinterest_ad_impressions_ad_config {
  extends: [pinterest_ad_impressions_ad_template]
  extension: required
}

explore: pinterest_period_comparison_config {
  extends: [pinterest_period_fact]
  extension: required
  hidden: yes
}

view: pinterest_period_comparison_config {
  extends: [pinterest_period_fact]
  extension: required
}
