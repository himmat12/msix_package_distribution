### Setting up MSIX package installer for windows distribution
#### This repo walks you through how to distribute windows application by packaging it as msix package installer.

> Complete step by step documentation will be updated in future!

### Steps
- first add `msix` package as your dev dependency 
- then add msix configs in `pubspec.yaml` 
```yaml
# msix configuration
msix_config:
  display_name: Counter App
  publisher_display_name: Himmat Rai
  identity_name: company.suite.counterapp
  msix_version: 1.0.0.0
  capabilities: internetClient, location, microphone, webcam
  certificate_path: c:\Users\himmat\Desktop\counter_app_intaller\TestCert_2024-01-14_himmat.pfx
  certificate_password: 1234
  app_installer:
    publish_folder_path: c:\Users\himmat\Desktop\counter_app_intaller
    hours_between_update_checks: 0
    automatic_background_task: true
    update_blocks_activation: true
    show_prompt: true
    force_update_from_any_version: false

``` 
- Now we need a certificate to verify our aff as trusted in the device so we need to create new self signed certificate and install it in our local machine we can view our self signed certificate in Microsoft Management Console by selecting certificates section
- now we need to create the package and publish it by running `msix package cli tool` commnds `dart run msix:create` to create package and `dart run msix:publish` to push updates to installed applications
- once these steps are completed we can run the `.appinstaller` file to install our published application to our device and when ever we make changes to our code and publish it the application will update automatically