## Detected Drift in Terraform (IaC) Managed Resources

- **Severity:** <span style='color:red'>CRITICAL</span>
- **Project:** ${var.project_id}

### Summary
The user/service account with email **${log.extracted_label.UserEmail}** is not authorized to modify the project **${var.project_id}** Terraform (IaC) managed resource **${log.extracted_label.ResourceName}** for action: **${log.extracted_label.UserAction}**.

### Troubleshooting The Drift In Terraform (IaC) Managed Resources
Check the user/service account with email **${log.extracted_label.UserEmail}** to determine why they have access to the project *${var.project_id}* and modified the resource **${log.extracted_label.ResourceName}**. Ensure the following actions:

1. Remove the user/service account with email **${log.extracted_label.UserEmail}** from project: *${var.project_id}*.
2. Investigate how and why the user/service account with email **${log.extracted_label.UserEmail}** got access to project: *${var.project_id}*.
3. Rollback the changes made by the user/service account with email **${log.extracted_label.UserEmail}**.

### Additional Resource Information
To get additional information about the user/service account with email **${log.extracted_label.UserEmail}** activities on *${var.project_id}*, click on ***VIEW INCIDENT*** button below.
