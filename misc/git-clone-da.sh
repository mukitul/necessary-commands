user="oauth2"
token="K9o9riV-VxizHsCRsSdX"
host_name="gitlab.robi.com.bd"
team_name="subscriber-verification-system"
group_name="digital-acquisition"

url_main_part="https://"$user":"$token"@"$host_name"/"$team_name"/"$group_name"/"

repo_list=(
$url_main_part'digital-acquisition-nll.git'

$url_main_part'digital-acquisition-admin-panel-web.git'

$url_main_part'digital-acquisition-web.git'

$url_main_part'ecrm-codebase.git'
)

echo START Number of Repositories: "${#repo_list[@]}"

for repo in ${repo_list[@]}; do
    echo $url_main_part$repo
    #git clone $url_main_part$repo
done

echo END Number of Repositories: "${#repo_list[@]}"