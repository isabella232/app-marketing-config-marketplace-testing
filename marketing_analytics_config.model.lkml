# TODO: Update schemas and add each module for cross channel reporting
datagroup: ama_etl_datagroup {
  sql_trigger: SELECT COUNT(*) FROM `@{FACEBOOK_ADS_SCHEMA_NAME}.ads_insights`, `@{ADWORDS_SCHEMA_NAME}.account_hourly_stats` ;;
  max_cache_age: "24 hours"
}
