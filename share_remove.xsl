<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- beautify the output -->
<!-- to keep the original format: use intend="no" and remove the strip-space element -->
<xsl:output method="xml" indent="yes"/>
<xsl:strip-space elements="*" />

<xsl:template match="@*|node()">
 <xsl:copy>
  <xsl:apply-templates select="@*|node()"/>
 </xsl:copy>
</xsl:template>

<!-- remove general information that could include security information -->
<xsl:template match="connection" />
<xsl:template match="slaveservers|clusterschemas|partitionschemas" />

<!-- remove user information -->
<xsl:template match="created_user|modified_user" />

<!-- remove any user, password elements -->
<xsl:template match="user|password|auth_user|auth_password|httpLogin|httpPassword|user|pass|userid|username" />

<!-- possible further information like filepaths -->
<xsl:template match="shared_objects_file" />

<!-- further information like URLs etc. -->
<xsl:template match="urlField|url|wsURL|hostname|cassandra_host|apiKey" />

<!-- further information like proxy information -->
<xsl:template match="proxy_host|proxy_username|proxy_password|proxyHost|proxyUsername|proxyPassword" />

<!-- further information like servers etc. in jobs -->
<xsl:template match="servername|server|namenodeHost|jobtrackerHost|senderServerName" />

<!-- mail job entry -->
<xsl:template match="destination|destinationCc|destinationBCc|replyto|replytoname|contact_person|contact_phone|replyToAddresses" />

<!-- smtp check job entry -->
<xsl:template match="defaultSMTP|emailSender|emailAddress" />

<!-- big data job entries -->
<xsl:template match="hadoop_server|carte_user|carte_password|access_key|secret_key" />

<!-- publish model job entry -->
<xsl:template match="ba_server_url|ba_server_user_id|ba_server_password|acl_user_or_role" />

<!-- PGP job entry -->
<xsl:template match="passphrase" />

</xsl:stylesheet>

