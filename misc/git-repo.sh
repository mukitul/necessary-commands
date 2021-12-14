user="oauth2"
token="K9o9riV-VxizHsCRsSdX"
host_name="gitlab.robi.com.bd"
team_name="subscriber-verification-system"
group_name="svs-core"

url_main_part="https://"$user":"$token"@"$host_name"/"$team_name"/"group_name"/"

repo_list=(
$url_main_part'svs-profiledb-entity.git'

$url_main_part'svs-txndb-entity.git'

$url_main_part'svs-profiledb-entity.git'

$url_main_part'svs-sdk.git'

$url_main_part'redshift-ms-txndb-crons.git'

$url_main_part'redshift-ms-email.git'

$url_main_part'redshift-ms-fileservice.git'

$url_main_part'redshift-ms-profiledb-crons.git'

$url_main_part'redshift-ms-el.git'

$url_main_part'redshift-ms-cbs.git'

$url_main_part'redshift-ms-crm.git'

$url_main_part'redshift-ms-ec.git'

$url_main_part'redshift-ms-etsaf-qc.git'

$url_main_part'redshift-ms-gateway.git'

$url_main_part'redshift-ms-smsc.git'

$url_main_part'redshift-ms-sts.git'

$url_main_part'redshift-ms-ups.git'

$url_main_part'redshift-ms-qc.git'

$url_main_part'digital-acquisition.git'

$url_main_part'redshift-ms-cbvmp.git'

$url_main_part'btrc-approval-system.git'

$url_main_part'svs-stub-service.git'

$url_main_part'svs-qc-client.git'

$url_main_part'redshift-ms-transactiondb.git'

$url_main_part'redshift-ms-profiledb.git'

$url_main_part'redshift-bll.git'

$url_main_part'svs-profiledb-entity.git'

$url_main_part'redshift-ms-transactiondb.git'

$url_main_part'redonweb.git.git'
)


for repo in ${repo_list[@]}; do
    #echo $repo
    git clone $repo
done