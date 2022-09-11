# Declare storage location
cc@cloudshell:~ $ export LOCATION=US

# Create storage object (DEVSHELL_PROJECT_ID pulls the current project ID)
cc@cloudshell:~ $ gsutil mb -l $LOCATION gs://$DEVSHELL_PROJECT_ID
Creating gs://test/...

# Pull public image from cloud storage and copy into project storage
cc@cloudshell:~ $ gsutil cp gs://cloud-training/gcpfci/my-excellent-blog.png my-excellent-blog.png
Copying gs://cloud-training/gcpfci/my-excellent-blog.png...
/ [1 files][  8.2 KiB/  8.2 KiB]
Operation completed over 1 objects/8.2 KiB.


cc@cloudshell:~ $ gsutil cp my-excellent-blog.png gs://$DEVSHELL_PROJECT_ID/my-excellent-blog.png
Copying file://my-excellent-blog.png [Content-Type=image/png]...
/ [1 files][  8.2 KiB/  8.2 KiB]
Operation completed over 1 objects/8.2 KiB.

# Create ACL for access - leave public
cc@cloudshell:~ $ gsutil acl ch -u allUsers:R gs://$DEVSHELL_PROJECT_ID/my-excellent-blog.png
Updated ACL on gs://test/my-excellent-blog.png


