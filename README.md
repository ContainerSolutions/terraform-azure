# Terraforming Azure

based on https://doics.co/2015/08/13/using-terraform-with-microsoft-azure/

Installing:

1. create Azure account with a valid subscription
2. download https://manage.windowsazure.com/publishsettings
3. create TF property file `vars.tfvars`

    ```
    azure_settings_file = "publishsettings"
    ssh_user_password = "YOUR_SECRET_PASSWORD"
    ```

4. plan to see if everything is fine

   ```bash
   terraform plan -var-file=vars.tfvars
   ```

5. apply

   ```bash
   terraform apply -var-file=vars.tfvars
   ```


