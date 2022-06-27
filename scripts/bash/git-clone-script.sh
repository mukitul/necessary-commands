user=""
token=""
host_name=""
team_name=""
group_name=""

url_main_part="https://"$user":"$token"@"$host_name"/"$team_name"/"$group_name"/"

repo_list=(
'project-one.git'

'project-two.git'

'project-three.git'
)


echo START Number of Repositories: "${#repo_list[@]}"

for repo in ${repo_list[@]}; do
    echo $url_main_part$repo
    #git clone $url_main_part$repo
done

echo END Number of Repositories: "${#repo_list[@]}"