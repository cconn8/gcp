## GCP tinkering and training

- gcp-storage-config.sh
//Objectives
1.
2.
3.
4. Create the Cloud SQL instance
    * Create the cloud instance from the google console
    * Once the cloud instance is generated you can associate it with a public server by Adding a Network in the connections field
    - eg. 32.123.52.31/32
5. Configure an application in a Compute Engine instance to use Cloud SQL
    * SSH to the newly created VM and cd to /var/www/html
        * create a basic html called index.php 
    * Successful connection to the Database will be mentioned on the public web page if connection is established

6. Configure an application in a Compute Engine instance to use a Cloud Storage object
    * Open cloud storage in the console and copy the public link for your image
    * Paste the link in /var/www/html/index.php