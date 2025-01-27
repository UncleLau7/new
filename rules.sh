#!/bin/bash

# Optional.
# If you are concerned about privacy and security issues, simply delete the SUBSCRIPTION_URLS array and subscribe to your servers manually.
SUBSCRIPTION_URLS=(
  # 自己的订阅URL.
  "https://pqjc.site/api/v1/client/subscribe?token=47eff1cbeda2581024427e3bd6153e03"
)

# Required.
RULESET_URLS=(
  # "peiqian"

  "reject_out|
  /etc/homeproxy/ruleset/adblockdns.srs
  https://raw.githubusercontent.com/privacy-protection-tools/anti-ad.github.io/master/docs/anti-ad-sing-box.srs"

  "direct_out|
  /etc/homeproxy/ruleset/MyDirect.json
  https://github.com/SagerNet/sing-geosite/raw/rule-set/geosite-microsoft@cn.srs
  https://github.com/SagerNet/sing-geosite/raw/rule-set/geosite-azure@cn.srs
  https://github.com/MetaCubeX/meta-rules-dat/raw/sing/geo/geosite/apple-cn.srs
  https://github.com/MetaCubeX/meta-rules-dat/raw/sing/geo/geoip/cn.srs
  https://github.com/MetaCubeX/meta-rules-dat/raw/sing/geo/geosite/cn.srs"

  "PROXY_SERVER_01_US|
  /etc/homeproxy/ruleset/MyProxy.json
  https://github.com/MetaCubeX/meta-rules-dat/raw/sing/geo/geosite/google.srs
  https://github.com/MetaCubeX/meta-rules-dat/raw/sing/geo/geosite/googlefcm.srs
  https://github.com/MetaCubeX/meta-rules-dat/raw/sing/geo/geosite/google-play.srs
  https://github.com/MetaCubeX/meta-rules-dat/raw/sing/geo/geosite/google-cn.srs
  https://github.com/KaringX/karing-ruleset/raw/sing/geo/geosite/google-trust-services@cn.srs
  https://github.com/MetaCubeX/meta-rules-dat/raw/sing/geo/geosite/google-cn.srs
  https://github.com/MetaCubeX/meta-rules-dat/raw/sing/geo/geosite/google-cn.srs
  https://github.com/MetaCubeX/meta-rules-dat/raw/sing/geo/geosite/google-cn.srs
  https://github.com/MetaCubeX/meta-rules-dat/raw/sing/geo/geosite/google-gemini.srs
  https://github.com/MetaCubeX/meta-rules-dat/raw/sing/geo/geoip/google.srs"

  "PROXY_SERVER_02_US|
  /etc/homeproxy/ruleset/MyAI.json
  https://github.com/SagerNet/sing-geosite/raw/rule-set/geosite-twitter.srs
  https://github.com/SagerNet/sing-geosite/raw/rule-set/geosite-x.srs
  https://github.com/MetaCubeX/meta-rules-dat/raw/sing/geo/geoip/twitter.srs
  https://github.com/SagerNet/sing-geosite/raw/rule-set/geosite-openai.srs
  https://github.com/SagerNet/sing-geosite/raw/rule-set/geosite-bing.srs
  https://github.com/SagerNet/sing-geosite/raw/rule-set/geosite-jetbrains-ai.srs
  https://github.com/KaringX/karing-ruleset/raw/sing/geo/geoip/ai.srs
  https://github.com/MetaCubeX/meta-rules-dat/raw/sing/geo/geosite/tiktok.srs
  https://github.com/SagerNet/sing-geosite/raw/rule-set/geosite-jetbrains@cn.srs
  https://github.com/SagerNet/sing-geosite/raw/rule-set/geosite-jetbrains.srs"
  
  "PROXY_SERVER_02_SG|
  https://github.com/SagerNet/sing-geosite/raw/rule-set/geosite-discord.srs
  https://github.com/SagerNet/sing-geosite/raw/rule-set/geosite-twitch.srs
  https://github.com/SagerNet/sing-geosite/raw/rule-set/geosite-amazon.srs
  https://github.com/SagerNet/sing-geosite/raw/rule-set/geosite-amazon@cn.srs
  https://github.com/SagerNet/sing-geosite/raw/rule-set/geosite-amazontrust.srs"
  
  "PROXY_SERVER_02_US_IPv6|https://github.com/MetaCubeX/meta-rules-dat/raw/sing/geo/geosite/telegram.srs"

)

# Required.
DNS_SERVERS=(
  # "Your_Custom_DNS_Server_Name|URL(s)"
  # Tip: The order of Your_Custom_DNS_Server_Name in the DNS_SERVERS array does not have to be consistent with that in the RULESET_URLS array.
  
  "PROXY_SERVER_01_US|https://dns.google/dns-query"
  "PROXY_SERVER_02_US|https://dns.google/dns-query"
  "PROXY_SERVER_02_SG_With_Or_Without_Suffix|https://1.1.1.1/dns-query"
  "PROXY_SERVER_02_US_IPv6_AsBackup|https://[2001:4860:4860:0000:0000:0000:0000:8888]/dns-query"
  
  "Default_DNS_Server|https://dns.google/dns-query"
)