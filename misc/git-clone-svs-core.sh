user="oauth2"
token="K9o9riV-VxizHsCRsSdX"
host_name="gitlab.robi.com.bd"
team_name="subscriber-verification-system"
group_name="svs-core"

url_main_part="https://"$user":"$token"@"$host_name"/"$team_name"/"$group_name"/"

repo_list=(
'svs-profiledb-entity.git'

'svs-txndb-entity.git'

'svs-profiledb-entity.git'

'svs-sdk.git'

'redshift-ms-txndb-crons.git'

'redshift-ms-email.git'

'redshift-ms-fileservice.git'

'redshift-ms-profiledb-crons.git'

'redshift-ms-el.git'

'redshift-ms-cbs.git'

'redshift-ms-crm.git'

'redshift-ms-ec.git'

'redshift-ms-etsaf-qc.git'

'redshift-ms-gateway.git'

'redshift-ms-smsc.git'

'redshift-ms-sts.git'

'redshift-ms-ups.git'

'redshift-ms-qc.git'

'digital-acquisition.git'

'redshift-ms-cbvmp.git'

'btrc-approval-system.git'

'svs-stub-service.git'

'svs-qc-client.git'

'redshift-ms-transactiondb.git'

'redshift-ms-profiledb.git'

'redshift-bll.git'

'svs-profiledb-entity.git'

'redshift-ms-transactiondb.git'

'redonweb.git.git'
)

echo START Number of Repositories: "${#repo_list[@]}"

for repo in ${repo_list[@]}; do
    echo $url_main_part$repo
    #git clone $url_main_part$repo
done

echo END Number of Repositories: "${#repo_list[@]}"