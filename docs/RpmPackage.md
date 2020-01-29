# SwaggerClient::RpmPackage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pulp_href** | **String** |  | [optional] 
**pulp_created** | **DateTime** | Timestamp of creation. | [optional] 
**artifact** | **String** | Artifact file representing the physical content | [optional] 
**name** | **String** | Name of the package | [optional] 
**epoch** | **String** | The package&#39;s epoch | [optional] 
**version** | **String** | The version of the package. For example, &#39;2.8.0&#39; | [optional] 
**release** | **String** | The release of a particular version of the package. e.g. &#39;1.el7&#39; or &#39;3.f24&#39; | [optional] 
**arch** | **String** | The target architecture for a package.For example, &#39;x86_64&#39;, &#39;i686&#39;, or &#39;noarch&#39; | [optional] 
**pkg_id** | **String** | Checksum of the package file | [optional] 
**checksum_type** | **String** | Type of checksum, e.g. &#39;sha256&#39;, &#39;md5&#39; | [optional] 
**summary** | **String** | Short description of the packaged software | [optional] 
**description** | **String** | In-depth description of the packaged software | [optional] 
**url** | **String** | URL with more information about the packaged software | [optional] 
**changelogs** | **Object** | Changelogs that package contains | [optional] 
**files** | **Object** | Files that package contains | [optional] 
**requires** | **Object** | Capabilities the package requires | [optional] 
**provides** | **Object** | Capabilities the package provides | [optional] 
**conflicts** | **Object** | Capabilities the package conflicts | [optional] 
**obsoletes** | **Object** | Capabilities the package obsoletes | [optional] 
**suggests** | **Object** | Capabilities the package suggests | [optional] 
**enhances** | **Object** | Capabilities the package enhances | [optional] 
**recommends** | **Object** | Capabilities the package recommends | [optional] 
**supplements** | **Object** | Capabilities the package supplements | [optional] 
**location_base** | **String** | Base location of this package | [optional] 
**location_href** | **String** | Relative location of package to the repodata | [optional] 
**rpm_buildhost** | **String** | Hostname of the system that built the package | [optional] 
**rpm_group** | **String** | RPM group (See: http://fedoraproject.org/wiki/RPMGroups) | [optional] 
**rpm_license** | **String** | License term applicable to the package software (GPLv2, etc.) | [optional] 
**rpm_packager** | **String** | Person or persons responsible for creating the package | [optional] 
**rpm_sourcerpm** | **String** | Name of the source package (srpm) the package was built from | [optional] 
**rpm_vendor** | **String** | Name of the organization that produced the package | [optional] 
**rpm_header_start** | **Integer** | First byte of the header | [optional] 
**rpm_header_end** | **Integer** | Last byte of the header | [optional] 
**is_modular** | **BOOLEAN** | Flag to identify if the package is modular | [optional] 
**size_archive** | **Integer** | Size, in bytes, of the archive portion of the original package file | [optional] 
**size_installed** | **Integer** | Total size, in bytes, of every file installed by this package | [optional] 
**size_package** | **Integer** | Size, in bytes, of the package | [optional] 
**time_build** | **Integer** | Time the package was built in seconds since the epoch | [optional] 
**time_file** | **Integer** | The &#39;file&#39; time attribute in the primary XML - file mtime in seconds since the epoch. | [optional] 

