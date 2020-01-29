=begin
#Pulp 3 API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

# Common files
require 'pulp_rpm_client/api_client'
require 'pulp_rpm_client/api_error'
require 'pulp_rpm_client/version'
require 'pulp_rpm_client/configuration'

# Models
require 'pulp_rpm_client/models/addon'
require 'pulp_rpm_client/models/artifact'
require 'pulp_rpm_client/models/async_operation_response'
require 'pulp_rpm_client/models/checksum'
require 'pulp_rpm_client/models/content_app_status'
require 'pulp_rpm_client/models/content_summary'
require 'pulp_rpm_client/models/database_connection'
require 'pulp_rpm_client/models/file_file_content'
require 'pulp_rpm_client/models/file_file_distribution'
require 'pulp_rpm_client/models/file_file_file_system_exporter'
require 'pulp_rpm_client/models/file_file_publication'
require 'pulp_rpm_client/models/file_file_remote'
require 'pulp_rpm_client/models/file_file_repository'
require 'pulp_rpm_client/models/image'
require 'pulp_rpm_client/models/inline_response_200'
require 'pulp_rpm_client/models/inline_response_200_1'
require 'pulp_rpm_client/models/inline_response_200_10'
require 'pulp_rpm_client/models/inline_response_200_11'
require 'pulp_rpm_client/models/inline_response_200_12'
require 'pulp_rpm_client/models/inline_response_200_13'
require 'pulp_rpm_client/models/inline_response_200_14'
require 'pulp_rpm_client/models/inline_response_200_15'
require 'pulp_rpm_client/models/inline_response_200_16'
require 'pulp_rpm_client/models/inline_response_200_17'
require 'pulp_rpm_client/models/inline_response_200_18'
require 'pulp_rpm_client/models/inline_response_200_19'
require 'pulp_rpm_client/models/inline_response_200_2'
require 'pulp_rpm_client/models/inline_response_200_20'
require 'pulp_rpm_client/models/inline_response_200_21'
require 'pulp_rpm_client/models/inline_response_200_22'
require 'pulp_rpm_client/models/inline_response_200_23'
require 'pulp_rpm_client/models/inline_response_200_24'
require 'pulp_rpm_client/models/inline_response_200_3'
require 'pulp_rpm_client/models/inline_response_200_4'
require 'pulp_rpm_client/models/inline_response_200_5'
require 'pulp_rpm_client/models/inline_response_200_6'
require 'pulp_rpm_client/models/inline_response_200_7'
require 'pulp_rpm_client/models/inline_response_200_8'
require 'pulp_rpm_client/models/inline_response_200_9'
require 'pulp_rpm_client/models/progress_report'
require 'pulp_rpm_client/models/publication_export'
require 'pulp_rpm_client/models/redis_connection'
require 'pulp_rpm_client/models/repository_add_remove_content'
require 'pulp_rpm_client/models/repository_sync_url'
require 'pulp_rpm_client/models/repository_version'
require 'pulp_rpm_client/models/reserved_resources'
require 'pulp_rpm_client/models/rpm_distribution_tree'
require 'pulp_rpm_client/models/rpm_modulemd'
require 'pulp_rpm_client/models/rpm_modulemd_defaults'
require 'pulp_rpm_client/models/rpm_package'
require 'pulp_rpm_client/models/rpm_package_category'
require 'pulp_rpm_client/models/rpm_package_environment'
require 'pulp_rpm_client/models/rpm_package_group'
require 'pulp_rpm_client/models/rpm_package_langpacks'
require 'pulp_rpm_client/models/rpm_repo_metadata_file'
require 'pulp_rpm_client/models/rpm_rpm_distribution'
require 'pulp_rpm_client/models/rpm_rpm_publication'
require 'pulp_rpm_client/models/rpm_rpm_remote'
require 'pulp_rpm_client/models/rpm_rpm_repository'
require 'pulp_rpm_client/models/rpm_update_collection'
require 'pulp_rpm_client/models/rpm_update_record'
require 'pulp_rpm_client/models/status'
require 'pulp_rpm_client/models/storage'
require 'pulp_rpm_client/models/task'
require 'pulp_rpm_client/models/task_cancel'
require 'pulp_rpm_client/models/upload'
require 'pulp_rpm_client/models/upload_chunk'
require 'pulp_rpm_client/models/upload_commit'
require 'pulp_rpm_client/models/upload_detail'
require 'pulp_rpm_client/models/variant'
require 'pulp_rpm_client/models/version'
require 'pulp_rpm_client/models/worker'

# APIs
require 'pulp_rpm_client/api/artifacts_api'
require 'pulp_rpm_client/api/content_advisories_api'
require 'pulp_rpm_client/api/content_distribution_trees_api'
require 'pulp_rpm_client/api/content_files_api'
require 'pulp_rpm_client/api/content_modulemd_defaults_api'
require 'pulp_rpm_client/api/content_modulemds_api'
require 'pulp_rpm_client/api/content_packagecategories_api'
require 'pulp_rpm_client/api/content_packageenvironments_api'
require 'pulp_rpm_client/api/content_packagegroups_api'
require 'pulp_rpm_client/api/content_packagelangpacks_api'
require 'pulp_rpm_client/api/content_packages_api'
require 'pulp_rpm_client/api/content_repo_metadata_files_api'
require 'pulp_rpm_client/api/distributions_file_api'
require 'pulp_rpm_client/api/distributions_rpm_api'
require 'pulp_rpm_client/api/file_exporters_file_api'
require 'pulp_rpm_client/api/orphans_api'
require 'pulp_rpm_client/api/publications_file_api'
require 'pulp_rpm_client/api/publications_rpm_api'
require 'pulp_rpm_client/api/remotes_file_api'
require 'pulp_rpm_client/api/remotes_rpm_api'
require 'pulp_rpm_client/api/repositories_file_api'
require 'pulp_rpm_client/api/repositories_file_versions_api'
require 'pulp_rpm_client/api/repositories_rpm_api'
require 'pulp_rpm_client/api/repositories_rpm_versions_api'
require 'pulp_rpm_client/api/status_api'
require 'pulp_rpm_client/api/tasks_api'
require 'pulp_rpm_client/api/uploads_api'
require 'pulp_rpm_client/api/workers_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
