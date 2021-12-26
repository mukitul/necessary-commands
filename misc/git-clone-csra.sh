user="oauth2"
token="K9o9riV-VxizHsCRsSdX"
host_name="gitlab.robi.com.bd"
team_name="subscriber-verification-system"
group_name="csra"

url_main_part="https://"$user":"$token"@"$host_name"/"$team_name"/"$group_name"/"

repo_list=(
'csra-web.git'

'csra-nll.git'

'pdf-generator.git'

'csra-admin-web.git'

'svs-btrc-approval-system.git'

'btrc-approval-system.git'
)


echo START Number of Repositories: "${#repo_list[@]}"

for repo in ${repo_list[@]}; do
    echo $url_main_part$repo
    #git clone $url_main_part$repo
done

echo END Number of Repositories: "${#repo_list[@]}"