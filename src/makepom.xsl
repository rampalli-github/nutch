<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="artifact_id" />
<xsl:param name="version" />
<xsl:template match="/">
  <project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>org.apache.nutch.plugin</groupId>
  <artifactId><xsl:value-of select="$artifact_id" /></artifactId>
  <version><xsl:value-of select="$version" /></version>
  <dependencies>
    <xsl:for-each select="plugin/requires/import">
      <dependency>
        <groupId>org.apache.nutch.plugin</groupId>
        <artifactId><xsl:value-of select="@plugin" /></artifactId>
        <version><xsl:value-of select="$version" /></version>
      </dependency>
    </xsl:for-each>
  </dependencies>
  </project>
</xsl:template>
</xsl:stylesheet>
