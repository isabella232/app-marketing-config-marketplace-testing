# TODO: Update schemas and add each module for cross channel reporting
datagroup: ama_etl_datagroup {
  sql_trigger: SELECT COUNT(*) FROM `facebook_ads_fivetran.ads_insights`, `google_ads.account_hourly_stats` ;;
  max_cache_age: "24 hours"
}
