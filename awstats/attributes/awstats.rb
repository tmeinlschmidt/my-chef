awstats Mash.new unless attribute?("awstats")

# installed directory
awstats[:directory] = "/usr/share/awstats"
awstats[:config_directory] = "/etc/awstats"
awstats[:wwwroot] = "/usr/lib"

awstats[:aliases] = Mash.new unless awstats.has_key?("aliases")
awstats[:aliases][:static]= [
	[ "/awstatsclasses", "#{awstats[:directory]}/lib/"],
	[ "/awstatscss", "/usr/share/doc/awstats/examples/css" ],
	[ "/awstats-icon/", "#{awstats[:directory]}/icon/" ]
	]
awstats[:aliases][:script] = [
	[ "/awstats/", "#{awstats[:wwwroot]}/cgi-bin/"],
	[ "/cgi-bin/", "#{awstats[:wwwroot]}/cgi-bin/"],
	]

# allow from
awstats[:allow_from] = [] unless awstats.has_key?("allow_from")
awstats[:allow_from] = [ "10.10.0.0/255.255.0.0"]

# geoIP
awstats[:geoIP] = Mash.new unless awstats.has_key?("geoIP")
awstats[:geoIP][:installdir] = awstats[:directory]
awstats[:geoIP][:GeoIP] = "http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz"
awstats[:geoIP][:GeoLiteCity] = "http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz"

# awstats conf
# sets default values
awstats[:config] = Mash.new unless awstats.has_key?(:config)
set_unless[:awstats][:config][:log_file]=""
set_unless[:awstats][:config][:log_type]="W"
set_unless[:awstats][:config][:log_format]=1
set_unless[:awstats][:config][:log_separator]=" "
set_unless[:awstats][:config][:site_domain]="www.mydomain.com"

awstats[:config][:host_aliases] = Array.new unless awstats[:config].has_key?('host_aliases')
set_unless[:awstats][:config][:host_aliases]=[ "www.mydomain.com", "localhost", "127.0.0.1" ]

set_unless[:awstats][:config][:dns_lookup]=2
set_unless[:awstats][:config][:dir_data]="/var/lib/awstats"
set_unless[:awstats][:config][:dir_cgi]="/awstats"
set_unless[:awstats][:config][:dir_icons]="/awstatsicons"
set_unless[:awstats][:config][:allow_to_update_from_browser]=1
set_unless[:awstats][:config][:allow_full_year_view]=2
set_unless[:awstats][:config][:enable_lock_for_update]=0
set_unless[:awstats][:config][:dns_static_cache_file]="dnscache.txt"
set_unless[:awstats][:config][:dns_last_update_cache_file]="dnscachelastupdate.txt"
set_unless[:awstats][:config][:skip_dns_lookup_for]=""
set_unless[:awstats][:config][:allow_access_for_auth_users]=0
set_unless[:awstats][:config][:allow_access_for_following]=""
set_unless[:awstats][:config][:allow_access_from_ip_addresses]=""
set_unless[:awstats][:config][:create_dir_data_if_not_exists]=0
set_unless[:awstats][:config][:build_history_format]="text"
set_unless[:awstats][:config][:build_report_format]="html"
set_unless[:awstats][:config][:save_database_files_with_permissions_for_everyone]=0
set_unless[:awstats][:config][:purge_log_file]=0
set_unless[:awstats][:config][:archive_log_records]=0
set_unless[:awstats][:config][:keep_backup_of_historic_files]=0
set_unless[:awstats][:config][:default_file]=["index.html"]
set_unless[:awstats][:config][:skip_hosts]=""
set_unless[:awstats][:config][:skip_user_agents]=""
set_unless[:awstats][:config][:skip_files]=""
set_unless[:awstats][:config][:skip_referrers_black_list]=""
set_unless[:awstats][:config][:only_hosts]=""
set_unless[:awstats][:config][:only_user_agents]=""
set_unless[:awstats][:config][:only_users]=""
set_unless[:awstats][:config][:only_files]=""
set_unless[:awstats][:config][:not_page_list]="css js class gif jpg jpeg png bmp ico rss xml swf"
set_unless[:awstats][:config][:valid_http_codes]="200 304"
set_unless[:awstats][:config][:valid_smtp_codes]="1 250"
set_unless[:awstats][:config][:authenticated_users_not_case_sensitive]=0
set_unless[:awstats][:config][:url_not_case_sensitive]=0
set_unless[:awstats][:config][:url_with_anchor]=0
set_unless[:awstats][:config][:url_query_separators]="?;"
set_unless[:awstats][:config][:url_with_query]=0
set_unless[:awstats][:config][:url_with_query_with_only_following_parameters]=0
set_unless[:awstats][:config][:url_with_query_without_following_parameters]=""
set_unless[:awstats][:config][:url_referrer_with_query]=0
set_unless[:awstats][:config][:warning_messages]=1
set_unless[:awstats][:config][:error_messages]=""
set_unless[:awstats][:config][:debug_messages]=0
set_unless[:awstats][:config][:nb_of_lines_for_currupted_log]=50
set_unless[:awstats][:config][:wrapper_script]=""
set_unless[:awstats][:config][:decode_ua]=0
set_unless[:awstats][:config][:misc_tracker_url]="/js/awstats_misc_tracker.js"
set_unless[:awstats][:config][:level_for_browser_detection]=2
set_unless[:awstats][:config][:level_for_os_detection]=2
set_unless[:awstats][:config][:level_for_referer_analyze]=2
set_unless[:awstats][:config][:level_for_robots_detection]=2
set_unless[:awstats][:config][:level_for_search_engines_detection]=2
set_unless[:awstats][:config][:level_for_keywords_detection]=2
set_unless[:awstats][:config][:level_for_file_types_detection]=2
set_unless[:awstats][:config][:level_for_worms_detection]=0
set_unless[:awstats][:config][:use_frames_when_cgi]=1
set_unless[:awstats][:config][:detailed_reports_on_new_windows]=1
set_unless[:awstats][:config][:expires]=0
set_unless[:awstats][:config][:max_rows_in_html_output]=1000
set_unless[:awstats][:config][:lang]="auto"
set_unless[:awstats][:config][:dir_lang]="./lang"
set_unless[:awstats][:config][:show_menu]=1
set_unless[:awstats][:config][:show_summary]="UVPHB"
set_unless[:awstats][:config][:show_month_stats]="UVPHB"
set_unless[:awstats][:config][:show_days_of_month_stats]="VPHB"
set_unless[:awstats][:config][:show_days_of_week_stats]="PHB"
set_unless[:awstats][:config][:show_hours_stats]="PHB"
set_unless[:awstats][:config][:show_domains_stats]="PHB"
set_unless[:awstats][:config][:show_hosts_stats]="PHBL"
set_unless[:awstats][:config][:show_authenticated_users]=0
set_unless[:awstats][:config][:show_robots_stats]="HBL"
set_unless[:awstats][:config][:show_worms_stats]=0
set_unless[:awstats][:config][:show_email_senders]=0
set_unless[:awstats][:config][:show_email_receivers]=0
set_unless[:awstats][:config][:show_sessions_stats]=1
set_unless[:awstats][:config][:show_pages_stats]="PBEX"
set_unless[:awstats][:config][:show_file_types_stats]="HB"
set_unless[:awstats][:config][:show_file_sizes_stats]=0
set_unless[:awstats][:config][:show_os_stats]=0
set_unless[:awstats][:config][:show_browsers_stats]=1
set_unless[:awstats][:config][:show_screen_size_stats]=0
set_unless[:awstats][:config][:show_origin_stats]="PH"
set_unless[:awstats][:config][:show_keyphrases_stats]=1
set_unless[:awstats][:config][:show_keyword_stats]=1
set_unless[:awstats][:config][:show_misc_stats]="a"
set_unless[:awstats][:config][:show_http_errors_stats]=1
set_unless[:awstats][:config][:show_smtp_erors_stats]=0
set_unless[:awstats][:config][:show_cluster_stats]=0
set_unless[:awstats][:config][:add_data_array_month_stats]=1
set_unless[:awstats][:config][:add_data_array_show_days_of_month_stats]=1
set_unless[:awstats][:config][:add_data_array_show_days_of_week_stats]=1
set_unless[:awstats][:config][:add_data_array_show_hours_stats]=1
set_unless[:awstats][:config][:include_internal_links_in_origin_section]=0
set_unless[:awstats][:config][:max_nb_of_domain]=10
set_unless[:awstats][:config][:min_hit_domain]=1
set_unless[:awstats][:config][:max_nb_of_hosts_shown]=10
set_unless[:awstats][:config][:min_hit_host]=1
set_unless[:awstats][:config][:max_nb_of_login_shown]=10
set_unless[:awstats][:config][:min_hit_login]=1
set_unless[:awstats][:config][:max_nb_of_robot_shown]=10
set_unless[:awstats][:config][:min_hit_robot]=1
set_unless[:awstats][:config][:max_nb_of_pages_shown]=10
set_unless[:awstats][:config][:min_hit_file]=1
set_unless[:awstats][:config][:max_nb_of_os_shown]=10
set_unless[:awstats][:config][:min_hit_os]=1
set_unless[:awstats][:config][:max_nb_of_browser_shown]=10
set_unless[:awstats][:config][:min_hit_browser]=1
set_unless[:awstats][:config][:max_nb_of_screen_sizes_shown]=5
set_unless[:awstats][:config][:min_hit_screen_size]=1
set_unless[:awstats][:config][:max_nb_of_window_sizes_shown]=5
set_unless[:awstats][:config][:min_hit_window_size]=1
set_unless[:awstats][:config][:max_nb_of_referer_shown]=10
set_unless[:awstats][:config][:min_hit_refer]=1
set_unless[:awstats][:config][:max_nb_of_keyphrases_shown]=10
set_unless[:awstats][:config][:min_hit_keyphrase]=1
set_unless[:awstats][:config][:max_nb_of_keywords_shown]=10
set_unless[:awstats][:config][:min_hit_keyword]=1
set_unless[:awstats][:config][:max_nb_of_email_shown]=20
set_unless[:awstats][:config][:min_hit_email]=1
set_unless[:awstats][:config][:first_day_of_week]=1
set_unless[:awstats][:config][:show_flag_links]=""
set_unless[:awstats][:config][:show_link_on_url]=1
set_unless[:awstats][:config][:use_https_link_for_url]=""
set_unless[:awstats][:config][:max_length_of_shown_url]=64
set_unless[:awstats][:config][:html_head_section]=""
set_unless[:awstats][:config][:html_end_section]=""
set_unless[:awstats][:config][:logo]="awstats_logo6.png"
set_unless[:awstats][:config][:logo_link]="http://awstats.sourceforge.net"
set_unless[:awstats][:config][:bar_width]=260
set_unless[:awstats][:config][:bar_height]=90
set_unless[:awstats][:config][:style_sheet]=""
set_unless[:awstats][:config][:color_background]="FFFFFF"
set_unless[:awstats][:config][:color_table_bg_title]="CCCCDD"
set_unless[:awstats][:config][:color_table_title]="000000"
set_unless[:awstats][:config][:color_table_bg]="CCCCDD"
set_unless[:awstats][:config][:color_table_row_title]="FFFFFF"
set_unless[:awstats][:config][:color_table_bg_row_title]="ECECEC"
set_unless[:awstats][:config][:color_table_border]="ECECEC"
set_unless[:awstats][:config][:color_text]="000000"
set_unless[:awstats][:config][:color_textpercent]="606060"
set_unless[:awstats][:config][:color_titletext]="000000"
set_unless[:awstats][:config][:color_weekend]="EAEAEA"
set_unless[:awstats][:config][:color_link]="0011BB"
set_unless[:awstats][:config][:color_hover]="605040"
set_unless[:awstats][:config][:color_u]="FFAA66"
set_unless[:awstats][:config][:color_v]="F4F090"
set_unless[:awstats][:config][:color_p]="4477DD"
set_unless[:awstats][:config][:color_h]="66DDEE"
set_unless[:awstats][:config][:color_k]="2EA495"
set_unless[:awstats][:config][:color_s]="8888DD"
set_unless[:awstats][:config][:color_e]="CEC2E8"
set_unless[:awstats][:config][:color_x]="C1B2E2"
set_unless[:awstats][:config][:plugins]=[
	"hostinfo"
	]
set_unless[:awstats][:config][:extra_tracked_rows_limit]=500
set_unless[:awstats][:config][:includes]=""
