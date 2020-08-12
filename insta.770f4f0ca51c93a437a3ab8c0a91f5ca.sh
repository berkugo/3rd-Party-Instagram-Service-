cookie="sessionid=11295935212%3A6pSXrttYWwNLMf%3A1"

resp="`curl -s -b \"$cookie\" https://www.instagram.com/$1/?__a=1`" 
echo $resp | jq  --raw-output   '.graphql.user |   {fullname: .full_name, follower_count: .edge_followed_by.count ,user_id: .id,business: .is_business_account,is_recent: .is_joined_recently,business_category_name: .business_category_name,overall_category_name: .overall_category_name,category_enum:  .category_enum,private: .is_private,verified: .is_verified}'
