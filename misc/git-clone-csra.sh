user="oauth2"
token="K9o9riV-VxizHsCRsSdX"
host_name="gitlab.robi.com.bd"
team_name="subscriber-verification-system"
group_name="csra"

url_main_part="https://"$user":"$token"@"$host_name"/"$team_name"/"$group_name"/"

repo_list=(
$url_main_part'csra-web.git'

$url_main_part'csra-nll.git'

$url_main_part'pdf-generator.git'

$url_main_part'csra-admin-web.git'

$url_main_part'svs-btrc-approval-system.git'

$url_main_part'btrc-approval-system.git'
)


for repo in ${repo_list[@]}; do
    #echo $repo
    git clone $repo
done